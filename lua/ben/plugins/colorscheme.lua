return {
    {
        "EdenEast/nightfox.nvim",
        name = "nightfox",
        priority = 1000,
        config = function()
            -- Default options
            require('nightfox').setup({
                options = {
                    -- Compiled file's destination location
                    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
                    compile_file_suffix = "_compiled", -- Compiled file suffix
                    transparent = false,     -- Disable setting background
                    terminal_colors = true,  -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
                    dim_inactive = true,    -- Non focused panes set to alternative background
                    module_default = true,   -- Default enable value for modules
                    colorblind = {
                        enable = false,        -- Enable colorblind support
                        simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
                        severity = {
                            protan = 0,          -- Severity [0,1] for protan (red)
                            deutan = 0,          -- Severity [0,1] for deutan (green)
                            tritan = 0,          -- Severity [0,1] for tritan (blue)
                        },
                    },
                    styles = {               -- Style to be applied to different syntax groups
                        comments = "italic",     -- Value is any valid attr-list value `:help attr-list`
                        conditionals = "italic",
                        constants = "NONE",
                        functions = "bold",
                        keywords = "NONE",
                        numbers = "NONE",
                        operators = "NONE",
                        strings = "NONE",
                        types = "NONE",
                        variables = "NONE",
                    },
                    inverse = {             -- Inverse highlight for different types
                        match_paren = false,
                        visual = false,
                        search = false,
                    },
                    modules = {             -- List of various plugins and additional options
                        -- ...
                    },
                },
                palettes = {},
                specs = {},
                groups = {},
            })

            -- setup must be called before loading
            -- vim.cmd("colorscheme gruvbox")
        end
    },
    {
        "ellisonleao/gruvbox.nvim",
        config = function()
            -- Default options:
            require("gruvbox").setup({
                terminal_colors = false, -- add neovim terminal colors
                undercurl = true,
                underline = true,
                bold = true,
                italic = {
                    strings = true,
                    emphasis = true,
                    comments = true,
                    operators = false,
                    folds = true,
                },
                strikethrough = true,
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                invert_intend_guides = false,
                inverse = true, -- invert background for search, diffs, statuslines and errors
                contrast = "", -- can be "hard", "soft" or empty string
                palette_overrides = {},
                overrides = {},
                dim_inactive = true,
                transparent_mode = false,
            })
            -- vim.cmd("colorscheme gruvbox")
        end
    },
    {
        "catppuccin/nvim",
        config = function()
            require("catppuccin").setup({
                flavour = "auto", -- latte, frappe, macchiato, mocha
                background = { -- :h background
                    light = "latte",
                    dark = "mocha",
                },
                transparent_background = false, -- disables setting the background color.
                show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
                term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
                dim_inactive = {
                    enabled = false, -- dims the background color of inactive window
                    shade = "dark",
                    percentage = 0.15, -- percentage of the shade to apply to the inactive window
                },
                no_italic = false, -- Force no italic
                no_bold = false, -- Force no bold
                no_underline = false, -- Force no underline
                styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
                    comments = { "italic" }, -- Change the style of comments
                    conditionals = { "italic" },
                    loops = {},
                    functions = {},
                    keywords = {},
                    strings = {},
                    variables = {},
                    numbers = {},
                    booleans = {},
                    properties = {},
                    types = {},
                    operators = {},
                    -- miscs = {}, -- Uncomment to turn off hard-coded styles
                },
                color_overrides = {},
                custom_highlights = {},
                default_integrations = true,
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    treesitter = true,
                    notify = false,
                    mini = {
                        enabled = true,
                        indentscope_color = "",
                    },
                    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
                },
            })

            -- setup must be called before loading
            -- vim.cmd.colorscheme "catppuccin-macchiato"
        end
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                variant = "auto", -- auto, main, moon, or dawn
                dark_variant = "main", -- main, moon, or dawn
                dim_inactive_windows = false,
                extend_background_behind_borders = true,

                enable = {
                    terminal = true,
                    -- legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
                    migrations = true, -- Handle deprecated options automatically
                },

                styles = {
                    bold = true,
                    italic = true,
                    transparency = false,
                },

                groups = {
                    border = "muted",
                    link = "iris",
                    panel = "surface",

                    error = "love",
                    hint = "iris",
                    info = "foam",
                    note = "pine",
                    todo = "rose",
                    warn = "gold",

                    git_add = "foam",
                    git_change = "rose",
                    git_delete = "love",
                    git_dirty = "rose",
                    git_ignore = "muted",
                    git_merge = "iris",
                    git_rename = "pine",
                    git_stage = "iris",
                    git_text = "rose",
                    git_untracked = "subtle",

                    h1 = "iris",
                    h2 = "foam",
                    h3 = "rose",
                    h4 = "gold",
                    h5 = "pine",
                    h6 = "foam",
                },

                palette = {
                    -- Override the builtin palette per variant
                     main = {
                         base = '#000000',
                         -- overlay = '#363738',
                     },
                },

                highlight_groups = {
                    -- Comment = { fg = "foam" },
                    -- VertSplit = { fg = "muted", bg = "muted" },
                },

                before_highlight = function(group, highlight, palette)
                    -- Disable all undercurls
                    -- if highlight.undercurl then
                    --     highlight.undercurl = false
                    -- end
                    --
                    -- Change palette colour
                    -- if highlight.fg == palette.pine then
                    --     highlight.fg = palette.foam
                    -- end
                end,
            })

            -- vim.cmd("colorscheme rose-pine")
            -- vim.cmd("colorscheme rose-pine-main")
            -- vim.cmd("colorscheme rose-pine-moon")
            -- vim.cmd("colorscheme rose-pine-dawn")vim.cmd.colorscheme "rose-pine"
        end
    },
    {
        "folke/tokyonight.nvim",
        priority= 1000,
        config = function()
            require("tokyonight").setup({
                -- use the night style
                style = "night",
                -- disable italic for functions
                styles = {
                    functions = {}
                },
                -- Change the "hint" color to the "orange" color, and make the "error" color bright red
                on_colors = function(colors)
                    colors.hint = colors.orange
                    colors.error = "#ff0000"
                    -- colors.bg = "#000000"
                end
            })
            --vim.cmd.colorscheme "tokyonight-night"
        end
    },
    {
        "miikanissi/modus-themes.nvim",
        priority = 1000,
        config = function()
            -- Default options
            require("modus-themes").setup({
                -- Theme comes in two styles `modus_operandi` and `modus_vivendi`
                -- `auto` will automatically set style based on background set with vim.o.background
                style = "auto",
                variant = "tinted", -- Theme comes in four variants `default`, `tinted`, `deuteranopia`, and `tritanopia`
                transparent = false, -- Transparent background (as supported by the terminal)
                dim_inactive = false, -- "non-current" windows are dimmed
                hide_inactive_statusline = false, -- Hide statuslines on inactive windows. Works with the standard **StatusLine**, **LuaLine** and **mini.statusline**
                line_nr_column_background = true, -- Distinct background colors in line number column. `false` will disable background color and fallback to Normal background
                sign_column_background = true, -- Distinct background colors in sign column. `false` will disable background color and fallback to Normal background
                styles = {
                    -- Style to be applied to different syntax groups
                    -- Value is any valid attr-list value for `:help nvim_set_hl`
                    comments = { italic = true },
                    keywords = { italic = true },
                    functions = {},
                    variables = {},
                },

                --- You can override specific color groups to use other groups or a hex color
                --- Function will be called with a ColorScheme table
                --- Refer to `extras/lua/modus_operandi.lua` or `extras/lua/modus_vivendi.lua` for the ColorScheme table
                ---@param colors ColorScheme
                on_colors = function(colors) end,

                --- You can override specific highlights to use other groups or a hex color
                --- Function will be called with a Highlights and ColorScheme table
                --- Refer to `extras/lua/modus_operandi.lua` or `extras/lua/modus_vivendi.lua` for the Highlights and ColorScheme table
                ---@param highlights Highlights
                ---@param colors ColorScheme
                on_highlights = function(highlights, colors) end,
            })
        end
    },
    {
        "navarasu/onedark.nvim",
        priority=1000,
        config = function()
            -- Lua
            require('onedark').setup  {
                -- Main options --
                style = 'warm', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
                transparent = false,  -- Show/hide background
                term_colors = true, -- Change terminal color as per the selected theme style
                ending_tildes = true, -- Show the end-of-buffer tildes. By default they are hidden
                cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

                -- toggle theme style ---
                toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
                toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

                -- Change code style ---
                -- Options are italic, bold, underline, none
                -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
                code_style = {
                    comments = 'italic',
                    keywords = 'italic',
                    functions = 'none',
                    strings = 'none',
                    variables = 'none'
                },

                -- Lualine options --
                lualine = {
                    transparent = false, -- lualine center bar transparency
                },

                -- Custom Highlights --
                colors = {}, -- Override default colors
                highlights = {}, -- Override highlight groups

                -- Plugins Config --
                diagnostics = {
                    darker = true, -- darker colors for diagnostic
                    undercurl = true,   -- use undercurl instead of underline for diagnostics
                    background = true,    -- use background color for virtual text
                },
            }
            vim.cmd("colorscheme onedark")
        end
    }
}
