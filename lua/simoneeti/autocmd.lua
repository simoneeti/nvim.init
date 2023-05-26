local augroup = vim.api.nvim_create_augroup   -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd   -- Create autocommand


augroup("misDefault", {clear=true})
autocmd("VimEnter", {
	group="misDefault",
	pattern="*",
	command="set laststatus=3"
})
