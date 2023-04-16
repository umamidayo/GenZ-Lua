local module = {
    macros = {
        ["fr tho"] = "if",
        ["we finna"] = "then",
        ["real"] = "end",
        ["no cap"] = "local",
        ["shoutout to my boys"] = "print",
        ["finna be"] = "=",
        ["no lie be"] = "==",
        ["yea"] = "true",
        ["nah"] = "false",
        ["run that"] = "function",
        ["secure the bag"] = "Connect",
        ["goofyahh"] = "error",
    }
}

function module.define_macro(name, value)
    module.macros[name] = value
end

function module.substitute_macros(str)
    for name, value in pairs(module.macros) do
        str = string.gsub(str, name, value)
    end
    return str
end

function module.run_code(code)
    loadstring(module.substitute_macros(code))()
end

function module.check_translation(code)
    print(module.substitute_macros(code))
end

return module
