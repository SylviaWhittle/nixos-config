{
  config, 
  pkgs,
  ... 
}:

{
  home.username = "doe";
  home.homeDirectory = "/home/doe";

  imports = [
    ./zsh.nix
    ./fastfetch.nix
    ./ghostty.nix
    ./hyprpaper.nix
    ./btop.nix
    ./starship.nix
    ./cava.nix
    ./emacs.nix
    ./nvim.nix
    ./waybar
    ./rofi
  ];

  # set cursor theme
  home.pointerCursor = {
    gtk.enable = true;
    # x11.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 16;
  };

  home.packages = with pkgs; [
    # terminal utils
    prismlauncher
  ];

  programs.git = {
    enable = true;
    userName = "SylviaWhittle";
    userEmail = "sylviwhittle@gmail.com";
  };

  programs.bash = {
    enable = true;
    enableCompletion = true;
  };

  # never change, can update hm without changing this
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
}
