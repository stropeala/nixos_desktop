{ config, pkgs, ... }:

{
  home.stateVersion = "26.05";

  #========  FISH
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      fastfetch
    '';
  };
}
