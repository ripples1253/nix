{
  description = "ripley & theo's nix packages";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};

      thePackagesOfDoom = final: {
        test-shared-repo-install = final.callPackage ./pkgs/test-shared-repo-install.nix { };
      };

    in
    {
      packages.${system} = thePackagesOfDoom pkgs;
      overlays.default = final: prev: thePackagesOfDoom final;

      # for later me lol
      # nixosModules.default = import ./modules/example.nix;
    };
}
