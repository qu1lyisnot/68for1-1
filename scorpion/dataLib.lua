local data = {}

local premium = {}
local blacklist = {}

function data:GetPremiumUser()
    local premiums = {
        735060213, --Owner
        569741870,
        3589495030,
        3185243666,
        3121363344
    }

    table.insert(premium, premiums)
    return premium
end

function data:GetBlacklistedUsers()
    local blacklisted = {

    }

    table.insert(blacklist, blacklisted)
    return blacklist
end

return data
