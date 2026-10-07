{ inputs, ... }:
let
  unstableModule =
    { pkgs, ... }:
    {
      _module.args.pkgsUnstable = import inputs.nixpkgs-unstable {
        system = pkgs.stdenv.hostPlatform.system;
        config.allowUnfree = true;
      };
    };
in
{
  flake.modules.nixos.unstable = unstableModule;
  flake.modules.hjem.unstable = unstableModule;
}
