{ pkgs, ... }:

{
  packages = [ pkgs.git pkgs.poetry ];

  enterShell = ''
    poetry shell
  '';
  
  scripts.serve.exec = ''
    mkdocs serve
  '';
  
  languages.python.enable = true;
}
