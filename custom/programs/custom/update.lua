os.loadAPI("custom/apis/custom_term.lua")

shell.setPath(shell.path()..":/custom/programs")

local comp = require("cc.shell.completion")
shell.setCompletionFunction("custom/programs/tab_edit.lua", comp.build(comp.file))
