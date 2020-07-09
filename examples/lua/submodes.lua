local libmodal = require('libmodal')
local fooModeRecurse = 1

function FooMode()
	local userInput = string.char(vim.g[
		'foo' .. tostring(fooModeRecurse) .. 'ModeInput'
	])

	if userInput == 'z' then
		fooModeRecurse = fooModeRecurse + 1
		Enter()
		fooModeRecurse = fooModeRecurse - 1
	end
end

function Enter()
	libmodal.mode.enter('FOO' .. fooModeRecurse, FooMode)
end

Enter()
