{inputs, ...}:{
  flake-file.inputs.hjem = {
    url = "github:feel-co/hjem";
    inputs.nixpkgs.follows = "nixpkgs";
  };
  flake.modules.nixos.hjem = inputs.hjem.nixosModules.default;
}
