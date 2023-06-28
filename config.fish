if status is-interactive
    set -x GOROOT /opt/go
    set -x GOPATH $HOME/.cache/golang

    set -x PATH $PATH $GOROOT/bin $GOPATH/bin
    set -x VISUAL nvim
    set -x EDITOR $VISUAL
    set -x WORKSPACE ~/Workspace

    abbr -a -g Dx docker exec -it
    abbr -a -g Ds docker start
    abbr -a -g Dp docker ps

    abbr -a -g n nvim

    abbr -a -g Ga git add -A
    abbr -a -g Gs git status
    abbr -a -g Gb git branch
    abbr -a -g Gc git commit
    abbr -a -g Gcm git commit -m
    abbr -a -g Gp git pull
    abbr -a -g Gu git push
    abbr -a -g Guu git push --set-upstream origin \(git branch --no-color --show-current\)
    abbr -a -g Gk git checkout
    abbr -a -g Gkb git checkout -b
    abbr -a -g Gkbf git checkout -b feature/
    abbr -a -g Gfa git fetch --all
    abbr -a -g Gm git merge

    abbr -a -g Nrd npm run dev
    abbr -a -g Ni npm install
end
