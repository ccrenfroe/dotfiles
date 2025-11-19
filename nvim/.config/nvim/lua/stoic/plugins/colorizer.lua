return {
    "norcalli/nvim-colorizer.lua",
    opts = {
        rgb_fn = true,
        css = true,
        mode = 'background'
    },
    config = function(_, opts)
        require("colorizer").setup({"*"}, opts)
    end
}
