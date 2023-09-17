return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
    { import = "astrocommunity.pack.rust" },

    {
    "simrat39/rust-tools.nvim",
    opts = {
      tools = {
                inlay_hints = {
                    auto = false,
                    show_parameter_hints = false,
                },
            },

    }

  },
    { import = "astrocommunity.pack.java" },
    { import = "astrocommunity.pack.typescript" },
     { import = "astrocommunity.colorscheme.catppuccin" },

      {
        -- further customize the options set by the community
        "catppuccin",
        opts = {
            flavour = "mocha",
            term_colors = true,
            transparent_background = true,
            no_italic = false,
            no_bold = false,
            styles = {
                comments = {},
                conditionals = {},
                loops = {},
                functions = {},
                keywords = {},
                strings = {},
                variables = {},
                numbers = {},
                booleans = {},
                properties = {},
                types = {},
            },
            highlight_overrides = {
                mocha = function(C)
                    return {
                        TabLineSel = { bg = C.pink },
                        NotifyBackground = { bg = C.pink },
                        CmpBorder = { fg = C.surface2 },
                        Pmenu = { bg = C.none },
                        TelescopeBorder = { link = "FloatBorder" },
                    }
                end,
            },
            color_overrides = {
                mocha = {
                    base = "#000000",
                    mantle = "#000000",
                    crust = "#000000",
                },
            },
        },
    },
}
