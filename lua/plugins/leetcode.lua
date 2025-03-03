---@alias lc.lang
---| "cpp"
---| "java"
---| "python"
---| "python3"
---| "c"
---| "csharp"
---| "javascript"
---| "typescript"
---| "php"
---| "swift"
---| "kotlin"
---| "dart"
---| "golang"
---| "ruby"
---| "scala"
---| "rust"
---| "racket"
---| "erlang"
---| "elixir"
---| "bash"

---@alias lc.hook
---| "enter"
---| "question_enter"
---| "leave"

---@alias lc.size
---| string
---| number
---| { width: string | number, height: string | number }

---@alias lc.position "top" | "right" | "bottom" | "left"

---@alias lc.direction "col" | "row"

---@alias lc.inject { before?: string|string[], after?: string|string[] }

---@alias lc.storage table<"cache"|"home", string>

---@alias lc.picker { provider?: "fzf-lua" | "telescope" }

return {
  {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
    dependencies = {
      "nvim-telescope/telescope.nvim",
      -- "ibhagwan/fzf-lua",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    opts = {
      -- configuration goes here
      ---@type lc.lang
      lang = "golang",
      ---@type lc.storage
      storage = {
        home = "~/Desktop/LeetCode/leetcode-nvim/",
        cache = vim.fn.stdpath("cache") .. "/leetcode",
      },
      injector = { ---@type table<lc.lang, lc.inject>
        ["golang"] = {
          before = { "package main" },
        },
      },
    },
  },
}
