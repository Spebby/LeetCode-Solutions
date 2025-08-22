{
  description = "LeetCode dev environment using leetgo with C and Python support";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            leetgo
            git

            # CXX
            clang
            gcc
            gdb
            gnumake

            # Python
            python3
            python3Packages.pip

            # Rust
            rustc
            cargo

            # nice CLI
            bat
            eza
            fd
            fzf
            jq
            less
            ripgrep
            tokei
            tree
            yazi
          ];

          shellHook = ''
            		echo "LeetCode development environment loaded."
            		echo "- Write solutions in C, Python or Rust."
            		echo "- Use 'leetgo pick <id> -l <lang> to pick a problem for a specific language."
          '';
        };
      }
    );
}
