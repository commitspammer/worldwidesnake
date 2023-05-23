{
  description = "Multisnake: a Snake multiplayer game";
  
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
  let
    pkgs = import nixpkgs { system = "x86_64-linux"; };
  in {
    packages."x86_64-linux" = {
      default = pkgs.stdenv.mkDerivation {
        name = "multisnake";
        # src = ./.;
        nativeBuildInputs = with pkgs; [
          gradle
          jdk17
          nodejs-19_x
          nodePackages_latest.parcel-bundler
        ];
        # buildInputs = with pkgs; [
        # ];
      };
    };
  };

  nixConfig = {
    bash-prompt-prefix = "dev:";
  };

}
