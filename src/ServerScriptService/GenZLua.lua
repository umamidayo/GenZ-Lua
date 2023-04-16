local module = {
    macros = {}
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

return module
