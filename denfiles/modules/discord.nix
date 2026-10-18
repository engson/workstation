{
  flake.modules.nixos.discord = { pkgs, ... }: {
    environments.systemPackages = [
      pkgs.vesktop
      pkgs.discord
    ];

  };
}
