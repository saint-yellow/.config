local plugins = {}

local M = {}

for k, v in ipairs(plugins) do
    M[k] = {
        v,
        enabled = false,
    }
end

return M
