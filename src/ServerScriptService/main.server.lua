local macros = {}

function define_macro(name, value)
    macros[name] = value
end

function substitute_macros(str)
    for name, value in pairs(macros) do
        str = string.gsub(str, name, value)
    end
    return str
end

function run_code(code)
    print(substitute_macros(code))
    loadstring(substitute_macros(code))()
end

define_macro("fr tho", "if")
define_macro("we finna", "then")
define_macro("real", "end")
define_macro("no cap", "local")
define_macro("shoutout to my boys", "print")
define_macro("finna be", "=")
define_macro("no lie be", "==")

local code = "no cap x finna be 1 fr tho x no lie be 1 we finna shoutout to my boys(x) real"
run_code(code)