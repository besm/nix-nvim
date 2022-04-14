{ pkgs, lib, ... }:
# partially copied from https://framagit.org/vegaelle/nix-nvim/-/blob/main/default.nix
let vim-plugins = import ./plugins.nix { inherit pkgs lib; };
in {

  home.packages = with pkgs; [
    tree-sitter
    nixos-unstable.code-minimap
    luaPackages.lua-lsp
    rnix-lsp
    nodePackages.vim-language-server
    nodePackages.yaml-language-server
    nodePackages.bash-language-server
    rnix-lsp
  ];

  programs.neovim = {
    enable = true;
    package = nixos-unstable.neovim-unwrapped;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    plugins = with pkgs.vimPlugins; [
      csv-vim
      vim-surround # fix config
      vim-repeat
      vim-commentary
      vim-unimpaired
      vim-sleuth
      vim-startify
      vim-multiple-cursors
      gundo-vim
      vim-easy-align
      vim-table-mode
      editorconfig-vim
      vim-markdown
      vim-nix
      robotframework-vim
      vim-plugins.vim-bepoptimist
      vim-plugins.nvim-base16
      popup-nvim
      plenary-nvim
      telescope-nvim
      telescope-symbols-nvim
      nvim-colorizer-lua
      nvim-treesitter
      nvim-lspconfig
      lsp_extensions-nvim
      nvim-compe
      lspkind-nvim
      bufferline-nvim
      galaxyline-nvim
      vim-closetag
      nvim-tree-lua
      vim-plugins.neoscroll-nvim
      vim-easymotion
      quick-scope
      matchit-zip
      targets-vim
      neoformat
      vim-numbertoggle
      vim-markdown-composer
      vimwiki
      pkgs.vimwiki-markdown
      lsp_signature-nvim
    ];

    extraConfig = ''
      lua << EOF
    '' + builtins.readFile ./init.lua + ''

      EOF'';
  };
}

