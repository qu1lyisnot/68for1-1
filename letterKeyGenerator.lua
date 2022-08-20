local keyGen = {}

function keyGen:GetKey()
	local function generateLetter()

		local randomBigChar = string.char(math.random(65,90)).. string.char(math.random(65,90)).. string.char(math.random(97, 122)).. string.char(math.random(65,90)).. string.char(math.random(97, 122)).. string.char(math.random(97, 122)).. string.char(math.random(97, 122))
		local key = "null"
		key = randomBigChar
		return key
	end
	
	local generatedKey = generateLetter().. generateLetter().. generateLetter().. generateLetter()
	local token = ""
	token = token.. generatedKey
end

return keyGen;
