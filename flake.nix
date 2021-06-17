{
  outputs = { ... }:
  {
    neovim = args@{ pkgs, ... }: {
      home-manager.users.savau = import ./neovim args;
    };
  };
}
