{
  config, 
  pkgs,
  ... 
}:

{
  home.username = "doe";
  home.homeDirectory = "/home/doe";

  home.packages = with pkgs; [
    # terminal utils
    btop
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
