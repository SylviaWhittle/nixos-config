{

  services.hyprpaper = {
    enable = true;
    settings = {
      ipc = "on";
      splash = false;
      splash_offset = 2.0;
      preload = [
	"/home/doe/nixos-config/assets/nixos-wallpaper-1.png"
      ];
      wallpaper = [
        "DP-1,/home/doe/nixos-config/assets/nixos-wallpaper-1.png"
	"DP-2,/home/doe/nixos-config/assets/nixos-wallpaper-1.png"
      ];
    };
  };

}
