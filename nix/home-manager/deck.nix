# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  lib,
  inputs,
  config,
  pkgs,
  user,
  ...
}: {
  # You can import other home-manager modules here
  imports = [
    # If you want to use home-manager modules from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModule

    # You can also split up your configuration and import pieces of it here:
    ./common.nix
  ];

  home.packages = import ./../apps.nix {
    inherit lib pkgs;
    cliUtils = true;
    baseApps = true;
    office = true;
    plasma = true;
    hyprland = false;
    coding = false;
    art = false;
    javaCoding = false;
    pythonCoding = false;
    videoEditing = false;
    gaming = true;
    streaming = false;
    android = false;
  };
}
