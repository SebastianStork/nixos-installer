{
  inputs,
  pkgs,
  lib,
  ...
}:
{
  nix.settings.experimental-features = [ "pipe-operators" ];

  networking.hostName = "installer";

  console.keyMap = "de-latin1-nodeadkeys";

  services.openssh.enable = lib.mkForce false;

  networking.wireless.enable = false;
  networking.networkmanager.enable = true;

  environment.systemPackages = [ inputs.disko.packages.${pkgs.system}.default ];
}
