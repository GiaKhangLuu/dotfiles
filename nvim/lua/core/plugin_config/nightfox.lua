require("nightfox").setup({
  options = {
		styles = {
			strings = "italic"
		},
    colorblind = {
      enable = true,
			simulate_only = false,
      severity = {
        --protan = 1,
        --deutan = 1,
				--tritan = 1
      },
    },
  },
	palettes = {
		--terafox = { green = "#00ff00"}
	},
	specs = {
		all = { syntax = { operator = 'orange' } }
	},
	inverse = {
		match_paran = true,
		visual = true,
		search = true
	},
	groups = {
		all = {
			["@field"] = { fg = "palette.yellow" },
			LineNr = { fp = "palette.red" }
		}
	}
})

vim.cmd("colorscheme terafox")
