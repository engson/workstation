{self, ...}:{
  flake.modules.nixos.tmux = {pkgs, ...}:{
    programs.tmux = {
        enable = true;
        historyLimit = 20000;
        terminal = "tmux-256color";
        plugins = [ pkgs.tmuxPlugins.resurrect ];
        # TODO: Fix plugins;
    };
    imports = [ self.modules.hjem.tmux ];

  };
  flake.modules.hjem.tmux ={ pkgs,... }:{
    packages = [ pkgs.tmux ];

    files.".config/tmux.conf".source = ../../.config/tmux/tmux.conf;
  };
}
