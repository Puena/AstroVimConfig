local silent_desc = function(d)
  return { silent = true, noremap = true, desc = d }
end

local map = vim.api.nvim_set_keymap

return function()
  map('n', '<leader>fi', '<cmd>lua require("telescope").extensions.goimpl.goimpl{}<cr>',
    silent_desc("Implement interface under cursor"))
end
