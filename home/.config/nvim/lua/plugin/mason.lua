local mason = require("mason")

mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

--[[-------------------------------------------------------------------------]]
--[[ ---------------------- Help Documentation ------------------------------]]
--[[-------------------------------------------------------------------------
--[[

| Cmd          | Description                      |
|--------------+----------------------------------|
| :CheckHealth | Run health check on Mason config |
| :MasonUpdate | Update Mason's registries        |

--]]

