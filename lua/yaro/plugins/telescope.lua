local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
  return
end

local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
  return
end

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ["<C-k>"] = actions.move_selection_previous,                        -- move to previous result
        ["<C-j>"] = actions.move_selection_next,                            -- move to next result
        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,  -- sent selected to quickfixlist
      },
    },
  },
})

telescope.load_extension("fzf")
