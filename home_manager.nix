{ config, pkgs, ... }:

{
  home.stateVersion = "26.05";

  #========  ZED
  xdg.configFile."zed/settings.json".source = ./dotfiles/zed/settings.json;
  xdg.configFile."zed/keymap.json".source = ./dotfiles/zed/keymap.json;
  xdg.configFile."zed/tasks.json".source = ./dotfiles/zed/tasks.json;

  #========  GIT
  programs.git = {
    enable = true;
    settings = {
      user.name = "Petre Razvan";
      user.email = "petre.ispir2002@protonmail.com";
      init.defaultBranch = "main";
      pull.rebase = false;
    };
  };

  #========  SSH
  # ssh-keygen -t ed25519 -C "petre.ispir2002@protonmail.com"
  programs.ssh = {
    enable = true;
    matchBlocks = {
      "github.com" = {
        identityFile = "~/.ssh/id_ed25519";
      };
    };
  };

  #========  FISH
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      fastfetch
    '';
  };

  #========  KITTY
  programs.kitty = {
    enable = true;
    shellIntegration.enableFishIntegration = true;

    font = {
      name = "JetBrainsMono Nerd Font";
      size = 12.0;
    };

    settings = {
      shell = "/run/current-system/sw/bin/fish";

      background_opacity = "0.92";
      window_padding_width = 10;
      confirm_os_window_close = 0;

      cursor_shape = "beam";
      cursor_blink_interval = 0;

      tab_bar_style = "powerline";
      tab_powerline_style = "slanted";

      # Catppuccin Mocha
      foreground = "#CDD6F4";
      background = "#1E1E2E";
      selection_foreground = "#1E1E2E";
      selection_background = "#F5E0DC";

      color0 = "#45475A";
      color1 = "#F38BA8";
      color2 = "#A6E3A1";
      color3 = "#F9E2AF";
      color4 = "#89B4FA";
      color5 = "#F5C2E7";
      color6 = "#94E2D5";
      color7 = "#BAC2DE";

      color8 = "#585B70";
      color9 = "#F38BA8";
      color10 = "#A6E3A1";
      color11 = "#F9E2AF";
      color12 = "#89B4FA";
      color13 = "#F5C2E7";
      color14 = "#94E2D5";
      color15 = "#A6ADC8";
    };
  };

  #========  MIMEAPPS.LIST DEFAULTS
  xdg.mimeApps = {
    enable = true;

    defaultApplications = {
      "application/json" = "dev.zed.Zed.desktop";
      "application/pdf" = "onlyoffice-desktopeditors.desktop";
      "application/x-docbook+xml" = "dev.zed.Zed.desktop";
      "application/x-yaml" = "dev.zed.Zed.desktop";

      "audio/aac" = "vlc.desktop";
      "audio/mp4" = "vlc.desktop";
      "audio/mpeg" = "vlc.desktop";
      "audio/mpegurl" = "vlc.desktop";
      "audio/ogg" = "vlc.desktop";
      "audio/vnd.rn-realaudio" = "vlc.desktop";
      "audio/vorbis" = "vlc.desktop";
      "audio/x-flac" = "vlc.desktop";
      "audio/x-mp3" = "vlc.desktop";
      "audio/x-mpegurl" = "vlc.desktop";
      "audio/x-ms-wma" = "vlc.desktop";
      "audio/x-musepack" = "vlc.desktop";
      "audio/x-oggflac" = "vlc.desktop";
      "audio/x-pn-realaudio" = "vlc.desktop";
      "audio/x-scpls" = "vlc.desktop";
      "audio/x-speex" = "vlc.desktop";
      "audio/x-vorbis" = "vlc.desktop";
      "audio/x-vorbis+ogg" = "vlc.desktop";
      "audio/x-wav" = "vlc.desktop";

      "text/markdown" = "dev.zed.Zed.desktop";
      "text/plain" = "dev.zed.Zed.desktop";
      "text/x-cmake" = "dev.zed.Zed.desktop";

      "x-scheme-handler/geo" = "google-maps-geo-handler.desktop";
      "x-scheme-handler/proton-inbox" = "proton-mail.desktop";
      "x-scheme-handler/discord" = "legcord.desktop";
      "x-scheme-handler/x-github-client" = "github-desktop.desktop";
      "x-scheme-handler/x-github-desktop-dev-auth" = "github-desktop.desktop";
      "x-scheme-handler/http" = "brave-browser.desktop";
      "x-scheme-handler/https" = "brave-browser.desktop";
    };
  };
}
