{

  config,
  pkgs,
  lib,
  ...

}:
let
  inherit (config.lib.formats.rasi) mkLiteral;
in 
{

  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    #font = "CaskaydiaCove Nerd Font";

    theme = {

      configuration = {
        display-drun = "Applications:";
        display-window = "Windows:";
        display-run = "Execute:";
        #drun-display-format = "{icon}  {name}";
        drun-display-format = "{name}";
        modi = "run,drun,window";
        show-icons = true;
        icon-theme = "Papirus-dark";
        lines = 5;
      };

      "*" = {
        "bg-col" = mkLiteral "#1D2021";
        "bg-col-light" = mkLiteral "#282828";
        "border-col" = mkLiteral "#A89984";
        "selected-col" = mkLiteral "#3C3836";
        "primary" = mkLiteral "#f2cdcd";
        "fg-col" = mkLiteral "#FBF1C7";
        "fg-col2" = mkLiteral "#EBDBB2";
        "grey" = mkLiteral "#BDAE93";
        "green" = mkLiteral "#98971A";

        "width" = 600;
        "font" = "Noto Sans 11";

        highlight = mkLiteral "@green";
      };

      "element-text, element-icon, mode-switcher" = {
        background-color = mkLiteral "inherit";
        text-color = mkLiteral "inherit";
      };

      window = {
        height = mkLiteral "600px";
        width = mkLiteral "900px";
        border-color = mkLiteral "@border-col";
        background-color = mkLiteral "@bg-col";
        border = mkLiteral "2px";
        border-radius = mkLiteral "2px";
      };

      mainbox = {
        background-color = mkLiteral "@bg-col";
      };

      inputbar = {
        children = mkLiteral "[prompt, entry]";
        background-color = mkLiteral "@bg-col-light";
        border-radius = mkLiteral "5px";
        padding = mkLiteral "0px";
      };

      prompt = {
        background-color = mkLiteral "@border-col";
        padding = mkLiteral "4px";
        text-color = mkLiteral "@bg-col-light";
        border-radius = mkLiteral "3px";
        margin = mkLiteral "10px 0px 10px 10px";
      };

      textbox-prompt-colon = {
        expand = mkLiteral "false";
        #str = mkLiteral ":";
      };

      entry = {
        padding = mkLiteral "6px";
        margin = mkLiteral "10px 10px 10px 5px";
        text-color = mkLiteral "@fg-col";
        background-color = mkLiteral "@bg-col";
        border-radius = mkLiteral "3px";
      };

      listview = {
        border = mkLiteral "0px 0px 0px";
        padding = mkLiteral "6px 0px 0px";
        margin = mkLiteral "10px 0px 0px 6px";
        #lines = 5;
        columns = 3;
        background-color = mkLiteral "@bg-col";
      };

      element = {
        padding = mkLiteral "8px";
        margin = mkLiteral "0px 10px 4px 4px";
        background-color = mkLiteral "@bg-col";
        text-color = mkLiteral "@fg-col";
        border-radius = mkLiteral "2px";
      };

      element-icon = {
        size = mkLiteral "28px";
      };

      "element selected" = {
        background-color = mkLiteral "@selected-col";
        text-color = mkLiteral "@fg-col2";
        border-radius = mkLiteral "3px";
      };

      mode-switcher = {
        spacing = 0;
      };

      button = {
        padding = mkLiteral "10px";
        background-color = mkLiteral "@bg-col-light";
        text-color = mkLiteral "@grey";
        vertical-align = mkLiteral "0.5";
        horizontal-align = mkLiteral "0.5";
      };

      "button selected" = {
        background-color = mkLiteral "@bg-col";
        text-color = mkLiteral "@green";
      };

      message = {
        background-color = mkLiteral "@bg-col-light";
        margin = mkLiteral "2px";
        padding = mkLiteral "2px";
        border-radius = mkLiteral "5px";
      };

      textbox = {
        padding = mkLiteral "6px";
        margin = mkLiteral "20px 0px 0px 20px";
        text-color = mkLiteral "@primary";
        background-color = mkLiteral "@bg-col-light";
      };

    };

  };

}
