return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  version = false, -- Never set this value to "*"! Never!
  --version = "0.0.23", -- Never set this value to "*"! Never!
  opts = {
    -- add any opts here
    -- for example
    provider = "openai",
    openai = {
      endpoint = "https://api.openai.com/v1",
      model = "o1", -- your desired model (or use gpt-4o, etc.)
      timeout = 30000, -- Timeout in milliseconds, increase this for reasoning models
      temperature = 0.1,
      max_completion_tokens = 30000, -- Increase this to include reasoning tokens (for reasoning models)
      reasoning_effort = "high", -- low|medium|high, only used for reasoning models
    },
    vendors = {
      -- Available
      -- Available
      openai_o1_pro = {
        __inherited_from = "openai",
        model = "o1-pro",
      },
      -- Available
      openai_o3_mini = {
        __inherited_from = "openai",
        model = "o3-mini",
      },
    },
    rag_service = {
      enabled = true, -- Enables the RAG service
      host_mount = os.getenv("HOME"), -- Host mount path for the rag service
      provider = "openai", -- The provider to use for RAG service (e.g. openai or ollama)
      llm_model = "", -- The LLM model to use for RAG service
      embed_model = "", -- The embedding model to use for RAG service
      endpoint = "https://api.openai.com/v1", -- The API endpoint for RAG service
    },
  },
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  build = "make",
  -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below dependencies are optional,
    "echasnovski/mini.pick", -- for file_selector provider mini.pick
    "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
    "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
    "ibhagwan/fzf-lua", -- for file_selector provider fzf
    "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    "zbirenbaum/copilot.lua", -- for providers='copilot'
    {
      -- support for image pasting
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for Windows users
          use_absolute_path = true,
        },
      },
    },
    {
      -- Make sure to set this up properly if you have lazy=true
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
