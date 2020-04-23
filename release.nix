let
  pkgs = import (builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/5272327b81ed355bbed5659b8d303cf2979b6953.tar.gz";
    sha256 = "0182ys095dfx02vl2a20j1hz92dx3mfgz2a6fhn31bqlp1wa8hlq";
  }) { };

  computeIntersection = pkgs.haskellPackages.callCabal2nix "computeIntersection" ./computeIntersection { };

  dhallBookList =
    pkgs.runCommand "dhall-book-list" {} ''
      mkdir $out
      cp ${./types.dhall} ./types.dhall
      cp -R ${./lists} ./lists
      cd ./lists
      for i in ./lists/*.dhall; do
        ${pkgs.dhall}/bin/dhall format $i > $out/$i
      done;
    '';

  booklist =
    let
      dirList = pkgs.lib.mapAttrsToList (name: value: { inherit name value; }) (builtins.readDir dhallBookList);
      lists   = builtins.filter (x: x.value == "regular") dirList;
    in
    builtins.map (x: "${./lists + ("/" + x.name)}") lists;

  essentialBookList =
    let
      options = pkgs.lib.cli.toGNUCommandLineShell {} {
        inherit booklist;
      };
    in
      pkgs.runCommand "essential-book-list" {} ''
        mkdir $out
        ${computeIntersection}/bin/computeIntersection ${options} > $out/essential-list.dhall
      '';
in

  { inherit essentialBookList; }
