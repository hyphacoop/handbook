{
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = inputs @ { self, ... }:
    (inputs.flake-utils.lib.eachDefaultSystem (system:
      let

        pkgs = import inputs.nixpkgs {
          inherit system;
        };

        rubyGems = with pkgs; bundlerEnv {
          name = "ruby-gems-env";
          inherit ruby;
          gemdir = ./.;
        };

        shellPkgs = [
        ] ++ (with pkgs; [
          bundix
          nodejs-18_x
          ruby
          rubyGems
        ]);

      in
      rec {

        devShells = {
          default = pkgs.mkShell {
            buildInputs = shellPkgs;
          };
        };

      }));
}
