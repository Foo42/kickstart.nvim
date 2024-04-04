return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      close_if_last_window = true,
      popup_border_style = 'rounded',
      default_component_configs = {
        git_status = {
          align = 'float',
        },
      },
      window = {
        position = 'left',
        mappings = {
          ['<space>'] = 'none',
          ['l'] = 'open',
          ['a'] = {
            'add',
            config = {
              show_path = 'relative',
            },
          },
          ['A'] = {
            'add_directory',
            config = {
              show_path = 'relative',
            },
          },
        },
      },
      buffers = {
        follow_current_file = {
          enabled = true,
        },
      },
      filesystem = {
        follow_current_file = {
          enabled = true,
        },
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {
            'node_modules',
          },
          never_show = {
            '.DS_Store',
            'thumbs.db',
          },
        },
      },
    }

    vim.keymap.set('n', '<S-e>', ':Neotree toggle<cr>')
  end,
}
