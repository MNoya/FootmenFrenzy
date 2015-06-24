-- Experimenting with Filter Orders
function GameMode:FilterExecuteOrder( filterTable )
    --[[for k, v in pairs( filterTable ) do
        print("Order: " .. k .. " " .. tostring(v) )
    end]]

    local units = filterTable["units"]
    local order_type = filterTable["order_type"]
    local issuer = filterTable["issuer_player_id_const"]

    local numUnits = 0
    local numBuildings = 0
    if units then
        for n,unit_index in pairs(units) do
            local unit = EntIndexToHScript(unit_index)
            if not unit:IsBuilding() then
                numUnits = numUnits + 1
            elseif unit:IsBuilding() then
                numBuildings = numBuildings + 1
            end
        end
    end

    if units and (order_type == DOTA_UNIT_ORDER_MOVE_TO_POSITION or order_type == DOTA_UNIT_ORDER_ATTACK_MOVE) and numUnits > 1 then
        
        local x = tonumber(filterTable["position_x"])
        local y = tonumber(filterTable["position_y"])
        local z = tonumber(filterTable["position_z"])

        ------------------------------------------------
        --           Grid Unit Formation              --
        ------------------------------------------------
        local DEBUG = false --If enabled it'll show circles and grid positions
        local SQUARE_FACTOR = 1.5 --1 is a perfect square, higher numbers will increase

        local navPoints = {}
        local first_unit = EntIndexToHScript(units["0"])
        local origin = first_unit:GetAbsOrigin()

        local point = Vector(x,y,z) -- initial goal

		if DEBUG then DebugDrawCircle(point, Vector(255,0,0), 100, 18, true, 3) end

        local unitsPerRow = math.floor(math.sqrt(numUnits/SQUARE_FACTOR))
        local unitsPerColumn = math.floor((numUnits / unitsPerRow))
        local remainder = numUnits - (unitsPerRow*unitsPerColumn) 
        print(numUnits.." units = "..unitsPerRow.." rows of "..unitsPerColumn.." with a remainder of "..remainder)

        local start = (unitsPerColumn-1)* -.5

        local curX = start
        local curY = 0

        local offsetX = 100
        local offsetY = 100
        local forward = (point-origin):Normalized()
        local right = RotatePosition(Vector(0,0,0), QAngle(0,90,0), forward)

        for i=1,unitsPerRow do
          for j=1,unitsPerColumn do
            --print ('grid point (' .. curX .. ', ' .. curY .. ')')
            local newPoint = point + (curX * offsetX * right) + (curY * offsetY * forward)
			if DEBUG then 
                DebugDrawCircle(newPoint, Vector(0,0,0), 255, 25, true, 5)
                DebugDrawText(newPoint, curX .. ', ' .. curY, true, 10) 
            end
            navPoints[#navPoints+1] = newPoint
            curX = curX + 1
          end
          curX = start
          curY = curY - 1
        end

        local curX = ((remainder-1) * -.5)

        for i=1,remainder do 
			--print ('grid point (' .. curX .. ', ' .. curY .. ')')
			local newPoint = point + (curX * offsetX * right) + (curY * offsetY * forward)
			if DEBUG then 
                DebugDrawCircle(newPoint, Vector(0,0,255), 255, 25, true, 5)
                DebugDrawText(newPoint, curX .. ', ' .. curY, true, 10) 
            end
			navPoints[#navPoints+1] = newPoint
			curX = curX + 1
        end

        for i=1,#navPoints do 
            local point = navPoints[i]
            --print(i,navPoints[i])
        end

        -- Sort the units by distance to the nav points
        sortedUnits = {}
        for i=1,#navPoints do
            local point = navPoints[i]
            local closest_unit_index = GetClosestUnitToPoint(units, point)
            if closest_unit_index then
                --print("Closest to point is ",closest_unit_index," - inserting in table of sorted units")
                table.insert(sortedUnits, closest_unit_index)

                --print("Removing unit of index "..closest_unit_index.." from the table:")
                --DeepPrintTable(units)
                units = RemoveElementFromTable(units, closest_unit_index)
            end
        end

        -- Sort the units by rank (0,1,2,3)
        unitsByRank = {}
        for i=0,3 do
            local units = GetUnitsWithFormationRank(sortedUnits, i)
            if units then
                unitsByRank[i] = units
            end
        end

        -- Order each unit sorted to move to its respective Nav Point
        local n = 0
        for i=0,3 do
            if unitsByRank[i] then
                for _,unit_index in pairs(unitsByRank[i]) do
                    local unit = EntIndexToHScript(unit_index)
                    if not unit:IsBuilding() then
                        --print("Issuing a New Movement Order to unit index: ",unit_index)

                        local pos = navPoints[tonumber(n)+1]
                        --print("Unit Number "..n.." moving to ", pos)
                        n = n+1
                        
                        ExecuteOrderFromTable({ UnitIndex = unit_index, OrderType = order_type, Position = pos, Queue = false})
                    end 
                end
            end
        end
        return false

    ------------------------------------------------
    --          Rally Point Right-Click           --
    ------------------------------------------------
    elseif units and order_type == DOTA_UNIT_ORDER_MOVE_TO_POSITION and numBuildings > 0 then
        local first_unit = EntIndexToHScript(units["0"])
        if first_unit:IsBuilding() then
            local x = tonumber(filterTable["position_x"])
            local y = tonumber(filterTable["position_y"])
            local z = tonumber(filterTable["position_z"])
            local point = Vector(x,y,z)
            if DEBUG then DebugDrawCircle(point, Vector(255,0,0), 255, 20, true, 3) end

            -- Cast the rally point if the building has the item
            for i=0,5 do
                local item = first_unit:GetItemInSlot(i)
                if item then
                    local item_name = item:GetAbilityName()
                    if item_name == "item_rally" then
                        --print("Executing Rally Point Order on ",point)
                        local item_index = item:GetEntityIndex()
                        ExecuteOrderFromTable({ UnitIndex = units["0"], OrderType = DOTA_UNIT_ORDER_CAST_POSITION, AbilityIndex = item_index, Position = point, Queue = false})
                        break
                    end
                end
            end
        end
    end

    return true
end


------------------------------------------------
--              Utility functions             --
------------------------------------------------

-- Returns the closest unit to a point from a table of unit indexes
function GetClosestUnitToPoint( units_table, point )
    local closest_unit = units_table["0"]
    if not closest_unit then
        closest_unit = units_table[1]
    end
    if closest_unit then   
        local min_distance = (point - EntIndexToHScript(closest_unit):GetAbsOrigin()):Length()

        for _,unit_index in pairs(units_table) do
            local distance = (point - EntIndexToHScript(unit_index):GetAbsOrigin()):Length()
            if distance < min_distance then
                closest_unit = unit_index
                min_distance = distance
            end
        end
        return closest_unit
    else
        return nil
    end
end

-- Returns a table of units by index with the rank passed
function GetUnitsWithFormationRank( units_table, rank )
    local allUnitsOfRank = {}
    for _,unit_index in pairs(units_table) do
        if GetFormationRank( EntIndexToHScript(unit_index) ) == rank then
            table.insert(allUnitsOfRank, unit_index)
        end
    end
    if #allUnitsOfRank == 0 then
        return nil
    end
    return allUnitsOfRank
end

-- Returns the FormationRank defined in npc_units_custom
function GetFormationRank( unit )
    local rank = 0
    if unit:IsHero() then
        rank = GameRules.HeroKV[unit:GetUnitName()]["FormationRank"]
    elseif unit:IsCreature() then
        rank = GameRules.UnitKV[unit:GetUnitName()]["FormationRank"]
    end
    return rank
end

-- Does awful table-recreation because table.remove refuses to work. Lua pls
function RemoveElementFromTable(table, element)
    local new_table = {}
    for k,v in pairs(table) do
        if v and v ~= element then
            new_table[#new_table+1] = v
        end
    end

    return new_table
end