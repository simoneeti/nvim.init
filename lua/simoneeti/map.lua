vim.g.mapleader = " "
vim.keymap.set("n", "<C-up>", "5k")
vim.keymap.set("n", "<C-down>", "5j")

vim.keymap.set("n", "<C-L>", ":vnew<cr><C-w>r")
vim.keymap.set("n", "<C-c>", ":bnext <cr>", {silent=true})
vim.keymap.set("n", "<C-x>", ":bprev <cr>", {silent=true})

vim.keymap.set("n", "<Tab>", ">>")
vim.keymap.set("n", "<S-Tab>", "<<")
vim.keymap.set("v", "<Tab>", "> gv")
vim.keymap.set("v", "<S-Tab>", "< gv")

vim.keymap.set("n", "<C-s>", ":source %<cr>", {noremap=true})
vim.keymap.set("n", "<C-f>", ":CocCommand prettier.formatFile <cr>", {noremap=true})
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", {silent=true})

vim.keymap.set("i", "<C-H>", "<ESC> dbi")
vim.keymap.set("n", "<C-H>", "dbi")
vim.keymap.set("i", "<C-Del>", "<ESC> dwi")
vim.keymap.set("n", "<C-Del>", "dwi")
vim.keymap.set("n", "<S-up>", "<ESC> v <up>") 
vim.keymap.set("v", "<S-up>", "<up>")
vim.keymap.set("n", "<S-down>", "<ESC> v <down>")
vim.keymap.set("v", "<S-down>", "<down>")
vim.keymap.set("n", "<C-k>", "<leader>c<space>")
vim.keymap.set("v", "<C-k>", "<leader>c<space> gv")
--vim.keymap.set("n", "<C-p>", ":lua require(\"harpoon.ui\").toggle_quick_menu() <CR>")
--vim.keymap.set("n", "<C-m>", ":lua require(\"harpoon.mark\").add_file() <CR>")
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fm", ":Telescope keymaps<cr>")

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("t", "<C-w>", "<C-\\><C-n><Esc><C-w>")

