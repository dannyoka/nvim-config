-- LuaRocks configuration

rocks_trees = {
   { name = "user", root = home .. "/.luarocks" };
   { name = "system", root = "/Users/dannyoka/.config/nvim/lazy-rocks/hererocks" };
}
variables = {
   LUA_DIR = "/Users/dannyoka/.config/nvim/lazy-rocks/hererocks";
   LUA_BINDIR = "/Users/dannyoka/.config/nvim/lazy-rocks/hererocks/bin";
   LUA_VERSION = "5.1";
   LUA = "/Users/dannyoka/.config/nvim/lazy-rocks/hererocks/bin/lua";
}
