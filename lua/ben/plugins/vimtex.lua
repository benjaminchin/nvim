return {
    {
        "lervag/vimtex",
        dependencies = {
             -- "micangl/cmp-vimtex",
            -- cantfigure out why this breaks other cmp sources, fix later
        },
        lazy = false,     -- we don't want to lazy load VimTeX
        -- tag = "v2.15", -- uncomment to pin to a specific release
        init = function()
            -- VimTeX configuration goes here, e.g.
            vim.g.vimtex_view_method = "zathura"
            vim.g.vimtex_compiler_latexmk = {
                aux_dir = '',
                out_dir = '',
                callback = 1,
                continuous = 1,
                executable = 'latexmk',
                hooks = {},
                options = {
                    '-verbose',
                    '-file-line-error',
                    '-synctex=1',
                    '-interaction=nonstopmode',
                },
            }
        end
    },
}
