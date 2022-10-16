local data = {}

local premiums = {
    735060213 --Owner
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
