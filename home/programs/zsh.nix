{
  pkgs,
  inputs,
  ...
}:
{
  programs.zsh = {
    enable = true;

    autocd = true;
    autosuggestion.enable = true;
    enableCompletion = true;
    completionInit = "autoload -U compinit && compinit";

    profileExtra = ''
      zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
      zstyle ':completion:*' list-colors "''${(s.:.)LS_COLORS}"
      zstyle ':completion:*' rehash true
      zstyle ':completion:*' use-cache on
    '';

    shellAliases = {
      cd = "z";
      cdir = ''cd ''${_%/*}'';
      mdir = ''mkdir -p ''$_'';
      clippy = "cargo clippy -- -W clippy::pedantic -W clippy::nursery";
      d = "docker";
      dls = "docker container ls";
      dcd = "docker compose down";
      dcu = "docker compose up -d";
      fcow = "fortune | cowsay";
      fuck = ''sudo $(fc -ln -1)'';
      gc = "git commit";
      gca = "git commit --amend";
      gcm = "git commit -m";
      gco = "git checkout";
      gd = "git diff";
      gds = "git diff --staged";
      glo = "git log --oneline";
      gs = "git status";
      gss = "git status --short";
      k = "kubectl";
      ll = "lsd -lah";
      ls = "lsd";
      nix-shell = "nix-shell --run zsh";
      naas = "curl -s naas.isalman.dev/no 2>/dev/null | jq -r '.reason'";
      ncow = "naas | cowsay";
      please = "sudo";
      space = "du -cha --max-depth=1";
      tf = "terraform";
      tree = "lsd --tree";
      v = "nvim";
      update = "nh os switch .";
    };

    initContent = ''
      wclone() {gh repo clone ''${PWD##*/}/$1; }
    '';
  };
}
