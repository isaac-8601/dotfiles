return {
	"neanias/everforest-nvim",
	version = false,
	lazy = false,
	priority = 1000, --load before other plugins

	--optional config
	config = function()
		require("everforest").setup({
			background = "hard",
			transparent_background_level = 1
		})
	end;
}
	
