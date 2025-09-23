{ pkgs, config, ... }: {

  environment.systemPackages = with pkgs; [ python312Packages.numpy ];
}

