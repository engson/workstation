{...}:{
  flake.modules.nixos.tmux = {pkgs, ...}:{
    programs.tmux = {
        enable = true;
        plugins = [ pkgs.tmuxPlugins.resurrect pkgs.tmuxPlugins.continuum ];
    };

  };
  flake.modules.hjem.tmux ={ pkgs,... }:{
    packages = [ pkgs.tmux ];

    files.".config/tmux.conf".source = ./tmux.conf;
  };
}
