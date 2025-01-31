{

  programs.starship.enable = true;
  programs.starship.enableZshIntegration = true;
  programs.starship.settings = {
    format = "$directory$all\n$os$username$hostname$character";
    add_newline = true;
    palette = "custom";
    palettes.custom = {
      blue = "#9db8e9";
      green = "#98C379";
      red = "#BF616A";
      orange = "#FFCC80";
      yellow = "#FFEB3B";
    };
    username = {
      show_always = true;
      style_user = "fg:#F7969D";
      format = "[$user]($style) ";
    };
    os = {
      disabled = false;
      style = "bold fg:#FA919F";
      symbols = {
        NixOS = "󱄅 ";
      };
    };
    directory = {
      style = "bold #F59C8E";
    };
    character = {
      success_symbol = "[❯](bold #F3AF80)";
    };
  };
}
