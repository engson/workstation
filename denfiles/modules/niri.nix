{ ... }:
{
  flake.modules.nixos.niri =
    {
      pkgs,
      pkgsUnstable,
      ...
    }:
    {
      programs.niri.enable = true;
      environment.systemPackages = [ pkgsUnstable.waybar
        pkgs.alacritty
        pkgs.fuzzel
        pkgs.swaylock
        pkgs.playerctl
        pkgs.brightnessctl
        pkgs.wireplumber
        pkgs.swaybg
      ];
    };
  flake.modules.hjem.niri = {
    files.".config/niri".source = ./../.config/niri;
    files.".config/waybar".source = ./../.config/waybar;
  };
}
