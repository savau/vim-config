{
  outputs = { ... }:
  {
    neovim = args@{ pkgs, ... }: {
      home-manager.users.${userName} = import ./neovim args;
    };
  };
}
