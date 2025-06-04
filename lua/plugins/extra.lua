return {
  -- {
  --   "nvim-neo-tree/neo-tree.nvim",
  --   opts = {
  --     window = {
  --       position = "right",
  --     },
  --   },
  -- },
  {
    "folke/snacks.nvim",
    opts = {
      explorer = {
        -- your explorer configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      },
      picker = {
        win = {
          input = {
            keys = {
              ["H"] = {
                "toggle_hidden",
              },
              -- ["I"] = {
              --   "toggle_ignored",
              -- },
            },
          },
        },
        sources = {
          explorer = {
            layout = { layout = { position = "right" }, preset = "sidebar" },
          },
        },
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          settings = {
            vtsls = {
              autoUseWorkspaceTsdk = true,
            },
            typescript = {
              -- tsdk = "../../.yarn/sdks/typescript/lib",
            },
          },
        },
        tailwindcss = {
          settings = {
            tailwindCSS = {
              classAttributes = {
                "className",
                "classNames",
                -- ".*ClassName",
                -- ".*Styles",
              },
              experimental = {
                classRegex = {
                  {
                    "(ClassName.*=\\s*\\{(?:[^{}]*|\\{[^{}]*\\})*\\})",
                    "[\"'`]([^\"'`]*)[\"'`]",
                  },
                  "ClassName.*=\\s*[\"'`]([^\"'`]*)[\"'`]",
                  {
                    "(Classes.*=\\s*\\{(?:[^{}]*|\\{[^{}]*\\})*\\})",
                    "[\"'`]([^\"'`]*)[\"'`]",
                  },
                  "Classes.*=\\s*[\"'`]([^\"'`]*)[\"'`]",
                  -- { "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
                  -- { "cx\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
                  { "cn\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
                  -- { "([a-zA-Z0-9\\-:]+)" },
                },
              },
            },
          },
        },
      },
      setup = {
        -- vtsls = function(_, opts)
        --   local pathSep = LazyVim.is_win() and "\\" or "/"
        --   local binPath = table.concat({ LazyVim.root.git(), ".yarn", "sdks", "typescript" }, pathSep)
        --   if (vim.uv.fs_stat(table.concat({ binPath, "bin", "tsserver" }, pathSep)) or {}).type == "file" then
        --     opts.settings.typescript.tsdk = table.concat({ binPath, "lib" }, pathSep)
        --   end
        --
        --   LazyVim.lsp.on_attach(function(client, buffer)
        --     client.commands["_typescript.moveToFileRefactoring"] = function(command, ctx)
        --       ---@type string, string, lsp.Range
        --       local action, uri, range = unpack(command.arguments)
        --
        --       local function move(newf)
        --         client.request("workspace/executeCommand", {
        --           command = command.command,
        --           arguments = { action, uri, range, newf },
        --         })
        --       end
        --
        --       local fname = vim.uri_to_fname(uri)
        --       client.request("workspace/executeCommand", {
        --         command = "typescript.tsserverRequest",
        --         arguments = {
        --           "getMoveToRefactoringFileSuggestions",
        --           {
        --             file = fname,
        --             startLine = range.start.line + 1,
        --             startOffset = range.start.character + 1,
        --             endLine = range["end"].line + 1,
        --             endOffset = range["end"].character + 1,
        --           },
        --         },
        --       }, function(_, result)
        --         ---@type string[]
        --         local files = result.body.files
        --         table.insert(files, 1, "Enter new path...")
        --         vim.ui.select(files, {
        --           prompt = "Select move destination:",
        --           format_item = function(f)
        --             return vim.fn.fnamemodify(f, ":~:.")
        --           end,
        --         }, function(f)
        --           if f and f:find("^Enter new path") then
        --             vim.ui.input({
        --               prompt = "Enter move destination:",
        --               default = vim.fn.fnamemodify(fname, ":h") .. "/",
        --               completion = "file",
        --             }, function(newf)
        --               return newf and move(newf)
        --             end)
        --           elseif f then
        --             move(f)
        --           end
        --         end)
        --       end)
        --     end
        --   end, "vtsls")
        --   -- copy typescript settings to javascript
        --   opts.settings.javascript =
        --     vim.tbl_deep_extend("force", {}, opts.settings.typescript, opts.settings.javascript or {})
        -- end,
        -- tailwindcss = function(_, opts)
        --   local tw = LazyVim.lsp.get_raw_config("tailwindcss")
        --   opts.filetypes = opts.filetypes or {}
        --
        --   -- Add default filetypes
        --   vim.list_extend(opts.filetypes, tw.default_config.filetypes)
        --
        --   -- Remove excluded filetypes
        --   --- @param ft string
        --   opts.filetypes = vim.tbl_filter(function(ft)
        --     return not vim.tbl_contains(opts.filetypes_exclude or {}, ft)
        --   end, opts.filetypes)
        --
        --   -- Additional settings for Phoenix projects
        --   -- vim.tbl_deep_extend("keep", opts.settings, {
        --   --   tailwindCSS = {
        --   --     includeLanguages = {
        --   --       elixir = "html-eex",
        --   --       eelixir = "html-eex",
        --   --       heex = "html-eex",
        --   --     },
        --   --   },
        --   -- })
        --
        --   -- Add additional filetypes
        --   vim.list_extend(opts.filetypes, opts.filetypes_include or {})
        -- end,
      },
    },
  },
}
