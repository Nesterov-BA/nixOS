{ pkgs, config, ... }: {
  programs.bash = {
    enable = true;
    shellAliases = {
      nixreb = "sudo nixos-rebuild switch --flake /home/boris/sysConfig#boris";
    };
  };
}
