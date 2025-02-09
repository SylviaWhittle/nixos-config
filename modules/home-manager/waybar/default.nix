{ ... }:

{
  programs.waybar = {
    enable = true;
    settings = [
      {
        position = "top";
        include = [ "${./shared.json}" ];
        modules-left = [
          "custom/window"
          "custom/left1"
          "hyprland/workspaces"
          "custom/right1"
          "custom/paddw"
          "hyprland/window"
        ];
        modules-center = [
          "custom/paddc"
          "custom/left2"
          # cpu temp, maybe use 'temperature'
          "custom/left3"
          "memory"

          "custom/left4"
          "cpu"
          "custom/leftin1"

          "custom/left5"
          "custom/nix"
          "custom/right2"

          "custom/rightin1"
          "clock"
          "custom/right3"

          "cava"
          "custom/right4"
          
          # network up
          # network down
          "bluetooth"
          "custom/right5"

        ];
        modules-right = [
          
          # media playing
          
          #"custom/left6"
          "pulseaudio"
          #"pulseaudio/slider"

          #"cusom/left7"
          # free space

          #"custom/left8"
          # free space

          #"custom/leftin2"
          # free space / power?
          
        ];
      }
    ];
    style = builtins.readFile ./style.css;
    systemd.enable = true;
  };
}
