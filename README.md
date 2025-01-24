# nixos-config
my public nixos config


# my notes
## initial setup

- `sudo nano /etc/nixos/configuration.nix`
- add git, wget, neovim
- `sudo nixos-rebuild switch`

## let's add flakes

- add `  nix.settings.experimental-features = [ "nix-command" "flakes" ];` to `configuration.nix`
- `sudo nixos-rebuild switch`
- create `flake.nix`:
```nix
{
  description = "my nixos flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
      ];
    };
  };
}
```
- `sudo nixos-rebuild switch`

## manage system configuration in a home directory

- `git config --global user.name SylviaWhittle`
- `git config --global user.email sylviwhittle@gmail.com`

- `ssh-keygen -t ed25519 -C "sylviwhittle@gmail.com"`
- add passphrase ofc
- `eval "$(ssh-agent -s)"`
- `ssh-add ~/.ssh/id_ed25519`
- `cat ~/.ssh/id_ed25519.pub` make sure this is the public one
- github > add new ssh key > paste




 
