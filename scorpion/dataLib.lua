local data = {}

local premiums = {
    735060213, --Owner
    569741870,
    3589495030,
    3185243666,
    3121363344
}
local blacklisted = {

}

function data:GetPremiumUser(table)
    table.insert(table, premiums)
    return table
end

function data:GetBlacklistedUsers(table)
    table.insert(table, blacklisted)
    return table
end

return data
