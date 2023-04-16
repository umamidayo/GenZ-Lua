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

define_macro("fr", "if")
define_macro("ongod", "then")
define_macro("tho", "end")
define_macro("nocap", "local")
define_macro("shoutout to my boys", "print")
define_macro("finna", "=")
define_macro("be", "==")

local code = "nocap a finna 1 fr a be 1 ongod shoutout to my boys('we working') tho"

local processed_code = substitute_macros(code)
loadstring(processed_code)(...)