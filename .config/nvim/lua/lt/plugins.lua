-- Install the packer if not yet
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

vim.cmd('autocmd BufWritePost plugins.lua PackerCompile')

vim.cmd [[packadd packer.nvim]]
-- vim._update_package_paths()

return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
  use { 'wbthomason/packer.nvim', opt = true }

  --
  -- lsp
  --

  use 'neovim/nvim-lspconfig'
  use 'anott03/nvim-lspinstall'
  use 'tjdevries/nlua.nvim'
  use 'glepnir/lspsaga.nvim'
  use 'nvim-lua/lsp-status.nvim'
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/nvim-compe'
  use 'SirVer/ultisnips'
  use 'honza/vim-snippets' -- https://github.com/honza/vim-snippets

  --
  -- highlighting & colors
  --

  use 'sainnhe/gruvbox-material'
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'romgrk/nvim-treesitter-context'

  --
  -- file management
  --

  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'
  use { 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install' } -- https://github.com/iamcco/markdown-preview.nvim
  use 'justinmk/vim-dirvish' -- https://github.com/justinmk/vim-dirvish

  -- ---------------------------------------------------------------------------

  use 'tpope/vim-commentary' -- https://github.com/tpope/vim-commentary
  use 'suy/vim-context-commentstring' -- https://github.com/suy/vim-context-commentstring
  -- use 'tpope/vim-dispatch'
  use 'vimwiki/vimwiki' -- https://github.com/vimwiki/vimwiki
  use 'tpope/vim-surround' -- https://github.com/tpope/vim-surround
  use 'brooth/far.vim' -- https://github.com/brooth/far.vim
  use 'ojroques/nvim-bufdel' -- https://github.com/ojroques/nvim-bufdel
  use 'mhinz/vim-startify' -- https://github.com/mhinz/vim-startify

  --
  -- test & debug
  --

  use 'vim-test/vim-test' -- https://github.com/vim-test/vim-test
  use 'mfussenegger/nvim-dap'
  -- use 'szw/vim-maximizer'
  use 'akinsho/nvim-toggleterm.lua'

  --
  -- vcs
  --

  use 'tpope/vim-fugitive' -- https://github.com/tpope/vim-fugitive
  use 'lewis6991/gitsigns.nvim'
  use 'rhysd/git-messenger.vim' -- https://github.com/rhysd/git-messenger.vim
  use 'f-person/git-blame.nvim' -- https://github.com/f-person/git-blame.nvim
end)

