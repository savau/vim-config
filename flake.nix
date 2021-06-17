{
  outputs = { ... }:
  {
    neovim = args: {
      home-manager.users.savau = import ./neovim args;
    };
  };
}
