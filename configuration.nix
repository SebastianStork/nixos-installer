{ inputs, pkgs, ... }:
{
  nix.settings.experimental-features = [ "pipe-operators" ];

  networking = {
    hostName = "installer";
    wireless.enable = false;
    networkmanager.enable = true;
  };

  console.keyMap = "de-latin1-nodeadkeys";

  environment.systemPackages = [ inputs.disko.packages.${pkgs.system}.default ];

  users.users.seb = {
    isNormalUser = true;
    description = "Sebastian Stork";
    password = "seb";
    extraGroups = [ "wheel" ];
  };
}
