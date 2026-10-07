{ self, ... }:
let
  username = "engson";
in
{
  flake.modules.nixos."${username}" = {
    users.users."${username}" = {
      isNormalUser = true;
      extraGroups = [
        "users"
        "wheel"
        "networkmanager"
      ];
    };
    hjem = {
      clobberByDefault = true;
      users.${username} = {
        user = "${username}";
        directory = "/home/${username}";

        imports = with self.modules.hjem; [
          unstable
          tmux
         # niri
        ];
      };
    };
  };
}
