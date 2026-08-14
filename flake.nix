{
  description = "the packages that i made or something idk";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      packages.${system} = {
        test-ripley-repo-install = pkgs.callPackage ./pkgs/my-script.nix { };
      };

      # for later me lol
      # nixosModules.default = import ./modules/example.nix;
    };
}
