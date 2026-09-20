{
  flake.nixosModules.tmux = {pkgs, ...}:{
    programs.tmux = {
        enable = true;
        historyLimit = 20000;
        terminal = "tmux-256color";
        plugins = [ pkgs.tmuxPlugins.resurrect ];
        # TODO: Fix plugins;
    };

    systemd.tmpfiles.rules = [
      "L+ /home/engson/.config/tmux - - - - /home/engson/Dev/workstation/.config/tmux"
    ];
  };
}
