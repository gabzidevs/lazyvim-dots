return {
  {
    "folke/snacks.nvim",
    opts = function()
      local cwd = vim.fn.getcwd()
      
      -- Set up colors based on context
      if string.find(cwd, "/Users/gabz/dev/work/MyAdbox") then
        -- Sesimi colors (from website gradient)
        vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#d2ff3d", bold = true })
        vim.api.nvim_set_hl(0, "SnacksDashboardDesc", { fg = "#9DCC00", italic = true })
      elseif string.find(cwd, "/Users/gabz/.enchyria") then
        -- Enchyria colors (Sigil Tree variant)
        vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#A8D5A2", bold = true })
        vim.api.nvim_set_hl(0, "SnacksDashboardDesc", { fg = "#5C7C5C", italic = true })
      else
        -- GabziOSS colors
        vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#87CEEB", bold = true })
        vim.api.nvim_set_hl(0, "SnacksDashboardDesc", { fg = "#6b8db5", italic = true })
      end
      
      -- Sesimi branding for MyAdbox work
      if string.find(cwd, "/Users/gabz/dev/work/MyAdbox") then
        return {
          dashboard = {
            enabled = true,
            sections = {
              { section = "header" },
              { 
                text = "✦ Create · Control · Scale your brand ✦\n─── next-gen brand management ───",
                hl = "SnacksDashboardDesc",
                align = "center",
                padding = 1
              },
              { section = "keys", gap = 1, padding = 1 },
              { section = "startup" },
            },
            preset = {
              header = [[

  ░██████╗ ███████╗ ░██████╗ ██╗ ███╗░░░███╗ ██╗
  ██╔════╝ ██╔════╝ ██╔════╝ ██║ ████╗░████║ ██║
  ╚█████╗░ █████╗░░ ╚█████╗░ ██║ ██╔████╔██║ ██║
  ░╚═══██╗ ██╔══╝░░ ░╚═══██╗ ██║ ██║╚██╔╝██║ ██║
  ██████╔╝ ███████╗ ██████╔╝ ██║ ██║░╚═╝░██║ ██║
  ╚═════╝░ ╚══════╝ ╚═════╝░ ╚═╝ ╚═╝░░░░╚═╝ ╚═╝
]],
            },
          },
        }
      end
      
      -- Enchyria branding for the realm
      if string.find(cwd, "/Users/gabz/.enchyria") then
        return {
          dashboard = {
            enabled = true,
            sections = {
              { section = "header" },
              { 
                text = "╌ ╌  sigils carved in living wood  ╌ ╌\n·  the tree knows your name  ·",
                hl = "SnacksDashboardDesc",
                align = "center",
                padding = 1
              },
              { section = "keys", gap = 1, padding = 1 },
              { section = "startup" },
            },
            preset = {
              header = [[

                           ✨
                          ╱|╲
                         ╱ | ╲
                        ╱  ·  ╲
                       ╱ · 🌙 · ╲
                      ╱ ·       · ╲
                     ╱               ╲
                    ╱    ·  ˚  ˚  ·    ╲
                   ╱                     ╲
                  ╱   🍃             🍃   ╲
                 ╱                         ╲
            ════╤═════════════════════════════╤════
                │                             │
                │    E  N  C  H  Y  R  I  A   │
                │                             │
            ════╧═════════════════════════════╧════
                 ╲                         ╱
                  ╲                       ╱
               🌿  ╲  ·  ˚  ·  ˚  ·  ╱  🌿
                     ╲  ·       ·  ╱
                      ╲    · ·    ╱
                       ╲   ⭐   ╱
                        ╲     ╱
                         ╲ | ╱
                          ╲|╱
]],
            },
          },
        }
      end
      
      -- Default GabziOSS branding
      return {
        dashboard = {
          enabled = true,
          sections = {
            { section = "header" },
            { 
              text = "🐟  terminal dweller · where fish swims in typed waters  🐟\ng@enchyria.local: well, actually, I don't do bash like a peasant",
              hl = "SnacksDashboardDesc",
              align = "center",
              padding = 1
            },
            { section = "keys", gap = 1, padding = 1 },
            { section = "startup" },
          },
          preset = {
            header = [[

     ██████╗   █████╗  ██████╗  ███████╗ ██╗  ██████╗  ░██████╗ ░██████╗
    ██╔════╝  ██╔══██╗ ██╔══██╗ ╚══███╔╝ ██║ ██╔═══██╗ ██╔════╝ ██╔════╝
    ██║  ███╗ ███████║ ██████╔╝   ███╔╝  ██║ ██║   ██║ ╚█████╗░ ╚█████╗░
    ██║   ██║ ██╔══██║ ██╔══██╗  ███╔╝   ██║ ██║   ██║ ░╚═══██╗ ░╚═══██╗
    ╚██████╔╝ ██║  ██║ ██████╔╝ ███████╗ ██║ ╚██████╔╝ ██████╔╝ ██████╔╝
     ╚═════╝  ╚═╝  ╚═╝ ╚═════╝  ╚══════╝ ╚═╝  ╚═════╝  ╚═════╝  ╚═════╝
]],
          },
        },
      }
    end,
  },
}