vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
	pattern = { "*" },
	command = "silent! wall",
	nested = true,
})
--  auto formatting
local set_autoformat = function(pattern, bool_val)
	vim.api.nvim_create_autocmd({ "FileType" }, {
		pattern = pattern,
		callback = function()
            vim.g.autoformat = false
			vim.b.autoformat = bool_val
		end,
	})
end

local set_autowrap  = function(pattern, bool_val)
    vim.api.nvim_create_autocmd({ "FileType" }, {
        pattern = pattern,
        callback = function()
            vim.g.autowrap = true
            vim.b.autowrap = bool_val
        end,
    })
end

set_autoformat({ "cpp" }, false)
set_autoformat({ "fish" }, false)
set_autoformat({ "lua" }, false)
set_autoformat({ "perl" }, false)
set_autoformat({ "yaml" }, false)

set_autowrap({ "markdown" }, true)
