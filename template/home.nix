{ homeDirectory, pkgs, system, username }:

let
  stateVersion = "22.11";
in {
  home = {
    inherit homeDirectory packages stateVersion username;
  };

  nixpkgs = {
    config = {
      inherit system;
      allowUnfree = true;
      allowUnsupportedSystem = true;
      experimental-features = "nix-command flakes";
    };
  };

  programs = import ./programs.nix;
};
