package = 'luarocks-addon-hooking'
version = 'scm-1'
source = {
    url = 'git://github.com/xiaq/luarocks-addon-hook.git',
}
description = {
    summary = 'An addon that exposes the hook functionality to rockspec.'
    license = 'BSD',
}
dependencies = {
    'lua >= 5.1'
}
build = {
    type = 'builtin',
    modules = {
        ["luarocks.addon.hooking"] = 'src/hooking.lua'
    },
}
