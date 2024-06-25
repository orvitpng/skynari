{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    flake-parts.url = "github:hercules-ci/flake-parts";
  };
  outputs =
    inputs@{ self, flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" ];
      
      perSystem =
        { pkgs, ... }:
        {
          devShells.default = pkgs.mkShell { packages = with pkgs; [
            gleam
            erlang
            rebar3
            flyctl
            redis
          ]; };
        };
    };
}
