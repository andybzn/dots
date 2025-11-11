{ lib, pkgs, ... }:
{
  imports = [
    ./colemak-dh-keymap.nix
  ];

  home.packages = with pkgs; [
    helix
    nixfmt-rfc-style
  ];

  programs.helix = {
    enable = true;
    settings = {
      theme = "solarized_dark_transparent";
      editor = {
        line-number = "relative";

        indent-guides = {
          render = false;
          skip-levels = 2;
          character = "┊";
        };

        lsp = {
          display-messages = true;
          display-inlay-hints = true;
        };

        cursor-shape = {
          normal = "block";
          insert = "bar";
          select = "underline";
        };
      };
    };
    languages.language = [
      {
        name = "nix";
        auto-format = true;
        formatter.command = lib.getExe pkgs.nixfmt-rfc-style;
      }
      {
        name = "html";
        auto-format = true;
      }
      {
        name = "rust";
        auto-format = true;
      }
      {
        name = "zig";
        auto-format = true;
      }
    ];
    themes = {
      solarized_dark_transparent = {
        "inherits" = "solarized_dark";
        "ui.background" = { };
      };
    };
  };
}
