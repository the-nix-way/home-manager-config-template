{ pkgs }:

let
  nixTools = with pkgs; [
    cachix
    lorri
  ];
in nixTools
