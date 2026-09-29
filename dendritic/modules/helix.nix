{
  flake.nixosModules.helix =
    { pkgsUnstable, ... }:
    {
      environment.systemPackages = [
        pkgsUnstable.steelix
        pkgsUnstable.steel

        # Languages
        ## Toml
        pkgsUnstable.tombi
      ];

      systemd.tmpfiles.rules = [
        "L+ /home/engson/.config/helix - - - - /home/engson/Dev/workstation/.config/helix"
      ];
    };
}
