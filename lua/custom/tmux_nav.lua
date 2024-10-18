local M = {}

-- Check if we are inside a tmux session
local function in_tmux()
  return os.getenv("TMUX") ~= nil
end

-- Move between vim splits or tmux panes
M.move = function(direction)
  if in_tmux() then
    -- Send tmux command to move in the specified direction
    local cmd
    if direction == "h" then
      cmd = "tmux select-pane -L"
    elseif direction == "j" then
      cmd = "tmux select-pane -D"
    elseif direction == "k" then
      cmd = "tmux select-pane -U"
    elseif direction == "l" then
      cmd = "tmux select-pane -R"
    end
    if cmd then
      vim.fn.system(cmd)
    end
  else
    -- Move between vim splits
    vim.api.nvim_command("wincmd " .. direction)
  end
end

return M
