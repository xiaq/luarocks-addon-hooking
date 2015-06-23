local hooking = {}

local api = require("luarocks.api")

local function hooking_callback(tbl)
    -- TODO: Check validity of hook names
    for k, v in pairs(tbl) do
        api.register_hook(k, function() print(v()) end)
    end
end

function hooking.load()
    api.register_rockspec_field("hooking", { _more = true }, hooking_callback)
end

function hooking.run(...)
    return nil, "this addon is not supposed to be run"
end

return hooking
