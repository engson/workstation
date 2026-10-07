{ ... }:
{
  flake.modules.nixos.tmux =
    { pkgs, ... }:
    {
      programs.tmux = {
        enable = true;
        plugins = [
          pkgs.tmuxPlugins.resurrect
          pkgs.tmuxPlugins.continuum
        ];
      };
      environment.systemPackages = [ pkgs.tmux ];
    };
  flake.modules.hjem.tmux = {

    files.".config/tmux.conf".source = ./tmux.conf;
  };
}
