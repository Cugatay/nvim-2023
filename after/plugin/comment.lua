local status, commenter = pcall(require, "nvim_comment")
if (not status) then return end

commenter.setup({
  -- line_mapping = "<C-/>",
  operator_mapping = "<C-/>",
  -- comment_chunk_text_object = "<C-/>"
})

