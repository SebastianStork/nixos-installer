set quiet := true

default:
    just --list --unsorted

generate image:
    -nix build path:.#{{ image }}

update:
    nix flake update --commit-lock-file

fmt:
    nix fmt
