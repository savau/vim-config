{
  outputs = { ... }:
  {
    neovim = args@{ pkgs, userName, ... }: {
      home-manager.users.${userName} = import ./neovim args;
    };
  };
}
