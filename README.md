# ripley & theo's nix packages

**notice: all packages, code, et-cetera in this repo is governed by the Opinionated Queer License. see LICENSE.md for more details.**

### how to use packages here
- first off, you'll need to add this repository to your flake inputs:
```nix
inputs = {
  rip-and-theo-repo = {
    url = "github:ripples1253/nix-repo";
    inputs.nixpkgs.follows = "nixpkgs";
  };
}
```
- then, you're ready to use the packages here basically anywhere. we merge into `pkgs`, so
  don't worry about having to do weird workarounds.

mirror details also coming soon
