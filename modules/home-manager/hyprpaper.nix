{

  services.hyprpaper = {
    enable = true;
    settings = {
      ipc = "on";
      splash = false;
      splash_offset = 2.0;
      preload = [
	      "/home/doe/nixos-config/assets/nixos-wallpaper-outline-scribble.png"
      ];
      wallpaper = [
        "DP-1,/home/doe/nixos-config/assets/nixos-wallpaper-outline-scribble.png"
	      "DP-2,/home/doe/nixos-config/assets/nixos-wallpaper-outline-scribble.png"
      ];
    };
  };

}
