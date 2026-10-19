{
  flake.modules.nixos.helix =
    {
      pkgsUnstable,
      lib,
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
      programs.bash.interactiveShellInit = lib.mkAfter ''
        export EDITOR="hx"
      '';

    };
  flake.modules.hjem.helix = {
    files.".config/helix".source = ./../../.config/helix;
  };
}
