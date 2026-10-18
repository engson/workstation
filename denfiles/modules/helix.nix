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
      environment.variables = {
        EDITOR = "hx";
      };

    };
  flake.modules.hjem.helix = {
    files.".config/helix".source = ./../../.config/helix;
  };
}
