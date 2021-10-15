{ username }:
{
  outputs = { ... }:
  {
    neovim = args@{ pkgs, ... }: {
      home-manager.users.${username} = import ./neovim args;
    };
  };
}
