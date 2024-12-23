local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- remap leader key
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- yank to system clipboard
keymap({"n", "v"}, "<leader>y", '"+y', opts)

-- paste from system clipboard
keymap({"n", "v"}, "<leader>p", '"+p', opts)

-- better indent handling
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move text up and down
keymap("v", "J", ":m .+1<CR>==", opts)
keymap("v", "K", ":m .-2<CR>==", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- paste preserves primal yanked piece
keymap("v", "p", '"_dP', opts)

-- removes highlighting after escaping vim search
keymap("n", "<Esc>", "<Esc>:noh<CR>", opts)

keymap({"n", "v"}, "<leader>t", "<cmd>lua require('vscode').action('workbench.action.terminal.toggleTerminal')<CR>")
keymap({"n", "v"}, "<leader>b", "<cmd>lua require('vscode').action('editor.debug.action.toggleBreakpoint')<CR>")
keymap({"n", "v"}, "<leader>d", "<cmd>lua require('vscode').action('editor.action.showHover')<CR>")
keymap({"n", "v"}, "<leader>a", "<cmd>lua require('vscode').action('editor.action.quickFix')<CR>")
keymap({"n", "v"}, "<leader>sp", "<cmd>lua require('vscode').action('workbench.actions.view.problems')<CR>")
keymap({"n", "v"}, "<leader>cn", "<cmd>lua require('vscode').action('notifications.clearAll')<CR>")
keymap({"n", "v"}, "<leader>ff", "<cmd>lua require('vscode').action('find-it-faster.findFiles')<CR>")
keymap({"n", "v"}, "<leader>fr", "<cmd>lua require('vscode').action('find-it-faster.findWithinFiles')<CR>")
keymap({"n", "v"}, "<leader>cp", "<cmd>lua require('vscode').action('workbench.action.showCommands')<CR>")
keymap({"n", "v"}, "<leader>pr", "<cmd>lua require('vscode').action('code-runner.run')<CR>")
keymap({"n", "v"}, "<leader>fd", "<cmd>lua require('vscode').action('editor.action.formatDocument')<CR>")

keymap("n", "gpd", "<cmd>lua require('vscode').action('editor.action.peekDefinition')<CR>", opts)
keymap("n", "gh", "<cmd>lua require('vscode').action('editor.action.showDefinitionPreviewHover')<CR>", opts)
keymap("n", "gi", "<cmd>lua require('vscode').action('editor.action.goToImplementation')<CR>", opts)
keymap("n", "gpi", "<cmd>lua require('vscode').action('editor.action.peekImplementation')<CR>", opts)
keymap("n", "gq", "<cmd>lua require('vscode').action('editor.action.quickFix')<CR>", opts)
keymap("n", "gr", "<cmd>lua require('vscode').action('editor.action.referenceSearch.trigger')<CR>", opts)
keymap("n", "gt", "<cmd>lua require('vscode').action('editor.action.goToTypeDefinition')<CR>", opts)
keymap("n", "gpt", "<cmd>lua require('vscode').action('editor.action.peekTypeDefinition')<CR>", opts)
