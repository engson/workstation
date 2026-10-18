{
  flake.modules.nixos.helix =
    {
      pkgsUnstable,
      ...
    }:
    {
      environment.systemPackages = [
        pkgsUnstable.steelix
        pkgsUnstable.steel

        # Languages
        ## Toml
        pkgsUnstable.tombi
      ];

    };
  flake.modules.hjem.helix = {
    files.".config/helix".source = ./../../.config/helix;
  };
}
