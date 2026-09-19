{ inputs, ... }: {
  # This registers a global NixOS module that all your machines will inherit
  flake.nixosModules.unstable = { pkgs, ... }: {
    _module.args.pkgsUnstable = import inputs.nixpkgs-unstable {
      system = pkgs.stdenv.hostPlatform.system;
      # inherit (pkgs) system;
      config = { allowUnfree = true; };
    };
  };
}
