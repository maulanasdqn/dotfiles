{ pkgs, ... }:

{
  config = {

    home.packages = with pkgs; [
      rnix-lsp
      nixfmt
      ripgrep
      fd
      starship
      stylua
      luajitPackages.lua-lsp
      nodePackages.typescript-language-server
      nodePackages.pyright
      nodePackages.vscode-langservers-extracted
    ];

    home.file.".config/nvim/settings.lua".source = ./lua/settings.lua;

    programs.neovim = {
      enable = true;
      vimdiffAlias = true;
      withNodeJs = true;
      withPython3 = true;
      withRuby = true;
      defaultEditor = true;

      plugins = with pkgs.vimPlugins; [
        vim-nix
        cmp-git
        cmp-path
        cmp-vsnip
        vim-vsnip
        auto-pairs
        plenary-nvim
        cmp-nvim-lsp
        kanagawa-nvim
        nvim-web-devicons
        neoformat
        vim-floaterm

        {
          plugin = lualine-nvim;
          config = ''
            luafile ~/.config/dotfiles/modules/users/nvim/lua/config/lualine.lua
          '';
        }

        {
          plugin = lazy-lsp-nvim;
          config = ''
            luafile ~/.config/dotfiles/modules/users/nvim/lua/config/lazy.lua
          '';
        }

        {
          plugin = nvim-treesitter;
          config = ''
            luafile ~/.config/dotfiles/modules/users/nvim/lua/config/treesitter.lua
          '';
        }

        {
          plugin = nvim-cmp;
          config = ''
            luafile ~/.config/dotfiles/modules/users/nvim/lua/config/cmp.lua
          '';
        }

        {
          plugin = lspkind-nvim;
          config = ''
            luafile ~/.config/dotfiles/modules/users/nvim/lua/config/lspkind.lua
          '';
        }

        {
          plugin = telescope-nvim;
          config = ''
            luafile ~/.config/dotfiles/modules/users/nvim/lua/config/telescope.lua
          '';
        }

        {
          plugin = indent-blankline-nvim;
          config = ''
            luafile ~/.config/dotfiles/modules/users/nvim/lua/config/indent.lua
          '';
        }

        {
          plugin = nvim-lspconfig;
          config = ''
            luafile ~/.config/dotfiles/modules/users/nvim/lua/config/lsp.lua
          '';
        }

        {
          plugin = nvim-tree-lua;
          config = ''
            luafile ~/.config/dotfiles/modules/users/nvim/lua/config/tree.lua
          '';
        }

        {
          plugin = bufferline-nvim;
          config = ''
            luafile ~/.config/dotfiles/modules/users/nvim/lua/config/bufferline.lua
          '';
        }
      ];

      extraConfig = ''
        luafile ~/.config/dotfiles/modules/users/nvim/lua/settings.lua
        luafile ~/.config/nvim/settings.lua
        luafile ~/.config/dotfiles/modules/users/nvim/lua/maps.lua
      '';

    };
  };
}
