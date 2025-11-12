which deactivate-lua >&/dev/null && deactivate-lua

alias deactivate-lua 'if ( -x '\''/Users/dannyoka/.config/nvim/lazy-rocks/hererocks/bin/lua'\'' ) then; setenv PATH `'\''/Users/dannyoka/.config/nvim/lazy-rocks/hererocks/bin/lua'\'' '\''/Users/dannyoka/.config/nvim/lazy-rocks/hererocks/bin/get_deactivated_path.lua'\''`; rehash; endif; unalias deactivate-lua'

setenv PATH '/Users/dannyoka/.config/nvim/lazy-rocks/hererocks/bin':"$PATH"
rehash
