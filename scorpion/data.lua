local data = {}

local premiumList = {
  735060213,
  3589495030
}

local blacklist = {
}

function data:GetPremiumList()
  return premiumList
end

function data:GetBlacklist()
  return blacklist
end

return data
