-- File explorer
return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        -- Properly setup nvim-web-devicons first
        require("nvim-web-devicons").setup({
        strict = true,
        override_by_filename = {
            [".gitignore"] = {
            icon = "",
            color = "#f1502f",
            name = "Gitignore"
            }
        },
        override_by_extension = {
            ["txt"] = {
            icon = "",
            color = "#89e051",
            name = "Text"
            },
        },
        })

        require("nvim-tree").setup({
        sort_by = "case_sensitive",
        view = {
            width = 35,
            cursorline = true,    -- Highlight current line
            signcolumn = "yes",   -- Show sign column
            float = {
            enable = false,
            quit_on_focus_loss = true,
            },
        },
        on_attach = function(bufnr)
            local api = require('nvim-tree.api')
          
            local function opts(desc)
            return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
            end
          
            -- Default mappings
            api.config.mappings.default_on_attach(bufnr)
          
            -- Custom mappings
            vim.keymap.set('n', 'l', api.node.open.edit, opts('Open'))
            vim.keymap.set('n', 'h', api.node.navigate.parent_close, opts('Close Directory'))
        end,
        renderer = {
            group_empty = true,
            highlight_git = true,
            full_name = false,
            highlight_opened_files = "all",
            root_folder_modifier = ":t",
            root_folder_label = function(root_cwd)
            return vim.fn.fnamemodify(root_cwd, ':t')
            end,
            indent_width = 3,
            indent_markers = {
            enable = true,
            inline_arrows = true,
            icons = {
                corner = "└ ",
                edge = "│ ",
                item = "│ ",
                bottom = "─ ",
                none = "  ",
            },
            },
            icons = {
            web_devicons = {
                file = {
                enable = true,
                color = true,
                },
                folder = {
                enable = true,
                color = true,
                },
            },
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
                modified = true,
                diagnostics = true,
                bookmarks = true,
            },
            glyphs = {
                default = "",
                symlink = "",
                bookmark = "󰆤",
                modified = "●",
                folder = {
                arrow_closed = "",
                arrow_open = "",
                default = "",
                open = "",
                empty = "",
                empty_open = "",
                symlink = "",
                symlink_open = "",
                },
                git = {
                unstaged = "✗",
                staged = "✓",
                unmerged = "",
                renamed = "➜",
                untracked = "★",
                deleted = "",
                ignored = "◌",
                },
            },
            },
            special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md", "CMakeLists.txt" },
            symlink_destination = true,
        },
        filters = {
            dotfiles = true,
            git_clean = false,
            no_buffer = false,
            custom = { "node_modules", "\\.cache" },
            exclude = {},
        },
        git = {
            enable = true,
            ignore = false,
            show_on_dirs = true,
            show_on_open_dirs = true,
            timeout = 400,
        },
        modified = {
            enable = true,
            show_on_dirs = true,
            show_on_open_dirs = true,
        },
        actions = {
            use_system_clipboard = true,
            change_dir = {
            enable = true,
            global = false,
            },
            expand_all = {
            max_folder_discovery = 300,
            exclude = {},
            },
            file_popup = {
            open_win_config = {
                col = 1,
                row = 1,
                relative = "cursor",
                border = "shadow",
                style = "minimal",
            },
            },
            open_file = {
            quit_on_open = false,
            resize_window = true,
            window_picker = {
                enable = true,
                picker = "default",
                chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
                exclude = {
                filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
                buftype = { "nofile", "terminal", "help" },
                },
            },
            },
        },
        trash = {
            cmd = "gio trash",
        },
        live_filter = {
            prefix = "[FILTER]: ",
            always_show_folders = true,
        },
        log = {
            enable = false,
            truncate = false,
            types = {
            all = false,
            config = false,
            copy_paste = false,
            diagnostics = false,
            git = false,
            profile = false,
            },
        },
        })
    end
}