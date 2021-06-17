{ pkgs, ... }:

let
  coc = {
    enable = true;
    plugins = with pkgs.vimPlugins; [
      coc-nvim
      coc-git
    ];
    settings = builtins.readFile ./coc/basic/settings.json;
  };
in
{
  programs.neovim = {
    enable = true;
    vimAlias = true;
    plugins = with pkgs.vimPlugins; [
      airline
      fugitive
      vim-nix
    ] // if coc.enable then coc.plugins else [];
    extraConfig = builtins.readFile ../.vimrc;
  };
} // if coc.enable then {
  home.file.".config/nvim/coc-settings.json".text = coc.settings;
} else {}
