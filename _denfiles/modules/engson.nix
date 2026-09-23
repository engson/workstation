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
    hjem.users.${username} = {
      user = "${username}";
      directory = "/home/${username}";
    };
  };
}
