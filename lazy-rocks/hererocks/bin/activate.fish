if functions -q deactivate-lua
    deactivate-lua
end

function deactivate-lua
    if test -x '/Users/dannyoka/.config/nvim/lazy-rocks/hererocks/bin/lua'
        eval ('/Users/dannyoka/.config/nvim/lazy-rocks/hererocks/bin/lua' '/Users/dannyoka/.config/nvim/lazy-rocks/hererocks/bin/get_deactivated_path.lua' --fish)
    end

    functions -e deactivate-lua
end

set -gx PATH '/Users/dannyoka/.config/nvim/lazy-rocks/hererocks/bin' $PATH
