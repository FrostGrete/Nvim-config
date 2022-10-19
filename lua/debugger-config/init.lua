local dap = require('dap')

-- Python
require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')

-- C, C++
dap.adapters.cppdbg = {
	id = 'cppdbg',
	type = 'executable',
	command = '/home/frostg/debug-adapter/extension/debugAdapters/bin/OpenDebugAD7',
	options = {
		detached = false
	}
}


dap.configurations.c = {
  	{
    	name = "Launch file",
    	type = "cppdbg",
    	request = "launch",
    	program = function()
      		return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    	end,
    	cwd = '${workspaceFolder}',
    	stopAtEntry = true,
  	},
  	{
    	name = 'Attach to gdbserver :1234',
    	type = 'cppdbg',
    	request = 'launch',
    	MIMode = 'gdb',
    	miDebuggerServerAddress = 'localhost:1234',
    	miDebuggerPath = '/usr/bin/gdb',
    	cwd = '${workspaceFolder}',
    	program = function()
      		return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    	end,
  	},
}

require("dapui").setup()
local dapui = require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

require("nvim-dap-virtual-text").setup()
require('telescope').load_extension('dap')
