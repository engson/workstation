{
  flake.modules.nixos.core = {
    nixpkgs.config.allowUnfree = true;
    nix.settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
    # Set your time zone
    time.timeZone = "Europe/Oslo";
    # Select internationalisentation properties
    i18n.defaultLocale = "en_US.UTF-8";

    nix.gc.automatic = true;
    nix.gc.options = "--delete-older-than 30d";
    nix.gc.dates = "weekly";

    system.stateVersion = "25.11";
  };
}
