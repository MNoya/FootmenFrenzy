function tableContains(list, element)
    if list == nil then return false end
    for i=1,#list do
        if list[i] == element then
            return true
        end
    end
    return false
end

function getIndex(list, element)
    if list == nil then return false end
    for i=1,#list do
        if list[i] == element then
            return i
        end
    end
    return -1
end

function getUnitIndex(list, unitName)
    --print("Given Table")
    --DeepPrintTable(list)
    if list == nil then return false end
    for k,v in pairs(list) do
        for key,value in pairs(list[k]) do
            --print(key,value)
            if value == unitName then 
                return key
            end
        end        
    end
    return -1
end

function getIndexTable(list, element)
    if list == nil then return false end
    for k,v in pairs(list) do
        if v == element then
            return k
        end
    end
    return -1
end

function split(inputstr, sep)
    if sep == nil then
            sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
            t[i] = str
            i = i + 1
    end
    return t
end

function StringStartsWith( fullstring, substring )
    local strlen = string.len(substring)
    local first_characters = string.sub(fullstring, 1 , strlen)
    return (first_characters == substring)
end



function GetClosestUnitToPoint( units_table, point )
    local closest_unit = units_table["0"]
    if not closest_unit then
        closest_unit = units_table[1]
    end
    DeepPrintTable(units_table)
    local min_distance = (point - EntIndexToHScript(closest_unit):GetAbsOrigin()):Length()

    for _,unit_index in pairs(units_table) do
        local distance = (point - EntIndexToHScript(unit_index):GetAbsOrigin()):Length()
        if distance < min_distance then
            closest_unit = unit_index
            min_distance = distance
        end
    end

    return closest_unit
end

function GetUnitsWithFormationRank( units_table, rank )
    local allUnitsOfRank = {}
    for _,unit_index in pairs(units_table) do
        print("RANK",GetFormationRank( EntIndexToHScript(unit_index) ))
        if GetFormationRank( EntIndexToHScript(unit_index) ) == rank then
            table.insert(allUnitsOfRank, unit_index)
        end
    end
    if #allUnitsOfRank == 0 then
        return nil
    end
    return allUnitsOfRank
end

function GetFormationRank( unit )
	if unit:IsHero() then
		return 0
	end
    return GameRules.UnitKV[unit:GetUnitName()]["FormationRank"]
end

-- Lua pls
function RemoveElementFromTable(table, element)
    local new_table = {}
    for k,v in pairs(table) do
        if v and v ~= element then
            new_table[#new_table+1] = v
        end
    end

    return new_table
end