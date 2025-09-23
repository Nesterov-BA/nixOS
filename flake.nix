{
  description = "Your new nix config";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";

    # Home manager
    home-manager.url = "github:nix-community/home-manager/release-25.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nvf.url = "github:notashelf/nvf";
    nix-flatpak.url = "github:gmodena/nix-flatpak?ref=latest";
    spicetify-nix.url = "github:the-argus/spicetify-nix";
    minesddm = {
      url = "github:Davi-S/sddm-theme-minesddm";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, nvf, nix-flatpak, minesddm
    , spicetify-nix, ... }@inputs:
    let inherit (self) outputs;
    in {
      # NixOS configuration entrypoint
      # Available through 'nixos-rebuild --flake .#your-hostname'
      nixosConfigurations = {
        boris = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs outputs; };
          # > Our main nixos configuration file <
          modules = [
            ./nixos/configuration.nix
            nix-flatpak.nixosModules.nix-flatpak
            minesddm.nixosModules.default
          ];

        };
      };
    };
}
