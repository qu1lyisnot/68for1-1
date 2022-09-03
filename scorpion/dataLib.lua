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

function data:GetPremiumUser()
    return premiums
end

function data:GetBlacklistedUsers()
    return blacklisted
end

return data
