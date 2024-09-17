local function addArguments(args)
  local rawArguments = vim.fn.input("Rust Program Arguments: ");
  if string.len(rawArguments) == 0 then
    return;
  end
  local sep = "%s,"
  for str in string.gmatch(rawArguments, "([^" .. sep .. "]+)") do
    table.insert(args, str)
  end
  print("command: ", table.concat(args, " "))
end
MAP('n', '<leader>rd', function()
  vim.cmd.RustLsp('debug')
end, "Rust debug")

MAP('n', '<leader>ra', function()
  local args = {};
  table.insert(args, "debug");
  addArguments(args);
  vim.cmd.RustLsp(args)
end, "Rust debug with arguments")


MAP('n', '<leader>rda', function()
  local args = {}
  table.insert(args, "debuggables")
  addArguments(args);
  vim.cmd.RustLsp(args)
end, "Rust debuggables with arguments")

MAP('n', '<leader>rr', function()
  vim.cmd.RustLsp('run')
end, "Rust run")

MAP('n', '<leader>rrr', function()
  vim.cmd.RustLsp('runnables')
end, "Rust runnables")

MAP('n', '<leader>rh', function()
  vim.cmd.RustLsp { 'hover', 'actions' }
end)
