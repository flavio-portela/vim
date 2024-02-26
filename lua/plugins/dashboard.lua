return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
 /$$$$$$$$ /$$                      /$$          
| $$_____/| $$                     |__/          
| $$      | $$  /$$$$$$  /$$    /$$ /$$  /$$$$$$ 
| $$$$$   | $$ |____  $$|  $$  /$$/| $$ /$$__  $$
| $$__/   | $$  /$$$$$$$ \  $$/$$/ | $$| $$  \ $$
| $$      | $$ /$$__  $$  \  $$$/  | $$| $$  | $$
| $$      | $$|  $$$$$$$   \  $/   | $$|  $$$$$$/
|__/      |__/ \_______/    \_/    |__/ \______/ 
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
