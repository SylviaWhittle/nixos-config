{ inputs, config, pkgs, ... }:

{

  imports = [
    inputs.nvchad4nix.homeManagerModule
  ];

  programs.nvchad = {
    enable = true;
    hm-activation = false;
    extraPackages = with pkgs; [
      emmet-language-server
      nixd
      (python3.withPackages(ps: with ps; [
        python-lsp-server
        flake8
      ]))
    ];
  };

}
