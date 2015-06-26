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

function IsCustomBuilding( unit )
    local ability_building = unit:FindAbilityByName("ability_building")
    local ability_tower = unit:FindAbilityByName("ability_tower")
    if ability_building or ability_tower then
        return true
    else
        return false
    end
end

function IsCustomTower( unit )
    local ability_tower = unit:FindAbilityByName("ability_tower")
    if ability_tower then
        return true
    else
        return false
    end
end