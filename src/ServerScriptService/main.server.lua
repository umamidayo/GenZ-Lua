local GenZLua = require(game.ServerScriptService.GenZLua)

GenZLua.define_macro("fr tho", "if")
GenZLua.define_macro("we finna", "then")
GenZLua.define_macro("real", "end")
GenZLua.define_macro("no cap", "local")
GenZLua.define_macro("shoutout to my boys", "print")
GenZLua.define_macro("finna be", "=")
GenZLua.define_macro("no lie be", "==")

local code = "no cap x finna be 1 fr tho x no lie be 1 we finna shoutout to my boys(x) real"

GenZLua.run_code(code)