local function copy_locations(options, label)
	local locations = require("haunt.sidekick").get_locations(options)
	local text

	if type(locations) == "table" then
		text = table.concat(locations, "\n")
	elseif type(locations) == "string" then
		text = locations
	else
		text = ""
	end

	if text == "" then
		vim.notify("No haunt locations found", vim.log.levels.INFO, { title = "Haunt" })
		return
	end

	vim.fn.setreg("+", text)
	vim.notify(label, vim.log.levels.INFO, { title = "Haunt" })
end

return {
	"TheNoeTrevino/haunt.nvim",
	event = { "BufReadPost", "BufNewFile" },
	opts = {},
	config = function(_, opts)
		require("haunt").setup(opts)
	end,
	keys = {
		{ "<leader>ba", function() require("haunt.api").annotate() end, desc = "Haunt annotate" },
		{ "<leader>bt", function() require("haunt.api").toggle_annotation() end, desc = "Haunt toggle annotation" },
		{ "<leader>bT", function() require("haunt.api").toggle_all_lines() end, desc = "Haunt toggle all annotations" },
		{ "<leader>bd", function() require("haunt.api").delete() end, desc = "Haunt delete annotation" },
		{ "<leader>bC", function() require("haunt.api").clear_all() end, desc = "Haunt clear all annotations" },
		{ "<leader>bn", function() require("haunt.api").next() end, desc = "Haunt next annotation" },
		{ "<leader>bp", function() require("haunt.api").prev() end, desc = "Haunt prev annotation" },
		{ "<leader>bl", function() require("haunt.picker").show() end, desc = "Haunt picker" },
		{ "<leader>bq", function() require("haunt.api").to_quickfix() end, desc = "Haunt to quickfix (all)" },
		{ "<leader>bQ", function() require("haunt.api").to_quickfix({ current_buffer = true }) end, desc = "Haunt to quickfix (buffer)" },
		{ "<leader>bs", function() copy_locations(nil, "Haunt locations copied") end, desc = "Haunt locations to clipboard" },
		{
			"<leader>bS",
			function() copy_locations({ current_buffer = true }, "Haunt buffer locations copied") end,
			desc = "Haunt buffer locations to clipboard",
		},
	},
}
