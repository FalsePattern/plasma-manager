{ lib, ... }:

{
  imports = [
    ./files.nix
    ./hotkeys.nix
    ./shortcuts.nix
    ./spectacle.nix
    ./windows.nix
    ./workspace.nix
    ./kwin.nix
    ./startup.nix
    ./panels.nix
    ./apps
  ];

  options.programs.plasma = {
    enable = lib.mkEnableOption ''
      Enable configuration management for KDE Plasma.
    '';
    plasma6 = lib.mkEnableOption ''
      Enable plasma6-specific internal logic.
    '';
  };
}
