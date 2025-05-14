  -- Status line
return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup({
        options = {
            theme = 'catppuccin',
            component_separators = { left = '', right = ''},
            section_separators = { left = '', right = ''},
            globalstatus = true,
        },
        sections = {
            lualine_a = {{'mode', separator = { left = '' }, right_padding = 2 }},
            lualine_b = {
            {'branch', icon = ''}, 
            {'diff',
                symbols = {
                added = ' ',
                modified = ' ',
                removed = ' '
                }
            },
            {'diagnostics',
                sources = { 'nvim_diagnostic' },
                symbols = {
                error = ' ',
                warn = ' ',
                info = ' ',
                hint = ' '
                }
            }
            },
            lualine_c = {
            {'filename',
                path = 1,
                symbols = {
                modified = '●',
                readonly = '',
                unnamed = '[No Name]',
                }
            }
            },
            lualine_x = {
            'encoding',
            {'fileformat',
                symbols = {
                unix = 'LF',
                dos = 'CRLF',
                mac = 'CR',
                }
            },
            'filetype'
            },
            lualine_y = {'progress'},
            lualine_z = {{'location', separator = { right = '' }, left_padding = 2 }}
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {'filename'},
            lualine_x = {'location'},
            lualine_y = {},
            lualine_z = {}
        },
        extensions = {'nvim-tree'}
        })
    end
}