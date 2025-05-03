return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 
        'nvim-lua/plenary.nvim'
    },
    config = function()
        local actions = require('telescope.actions')
        local builtin = require('telescope.builtin')
        
        require('telescope').setup({
            defaults = {
                mappings = {
                    n = {
                        ['C-n'] = actions.move_selection_next,
                        ['C-p'] = actions.move_selection_previous,
                        ['<leader>fc'] = actions.close
                    },
                    i = {
                        ['<leader>fc'] = actions.close
                    }
                }
            }
        })
         
        -- vim.keymap.set('n', '<leader>fc', actions.close)
        vim.keymap.set('n', '<leader>f', builtin.live_grep) 
        vim.keymap.set('n', '<leader>ff', builtin.find_files)
        vim.keymap.set('n', '<leader>fn', function()
            builtin.find_files{
                cwd = vim.fn.stdpath('config')
            }
        end)
    end 
}
