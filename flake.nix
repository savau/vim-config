{
  outputs = { ... }:
  {
    neovim = {
      home-manager.users.savau = {
        programs.neovim = {
          enable = true;
          vimAlias = true;
          plugins = with pkgs.vimPlugins; [
            airline
            coc-nvim
            coc-git
            fugitive
            vim-nix
          ];
          extraConfig = builtins.readFile ./.vimrc;
        };
        home.file.".config/nvim/coc-settings.json".text = builtins.readFile ./nvim/coc-settings/basic.json;
      };
    };
  }
}
