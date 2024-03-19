local comp = require("cc.shell.completion")
shell.setCompletionFunction("custom/programs/tab_edit.lua", comp.build(comp.file))

local args = {...}

if args[1] ~= nil then
    if fs.isDir(args[1]) == false then
        local id = shell.openTab("edit", args[1])
    
        multishell.setTitle(id, args[1]:gsub(" ", ""):gsub(".lua", ""))
        multishell.setFocus(id)
    else
        print("Cannot edit a directory.")
    end
else
    print("No file name provided.")
end
