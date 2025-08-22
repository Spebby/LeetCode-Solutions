# My Leetcode Problems

[![wakatime](https://wakatime.com/badge/user/6c1b4d80-35ad-487a-a081-efc861c8d411/project/051f59b9-ac77-4a63-9e76-ec2f78a992c8.svg)](https://wakatime.com/badge/user/6c1b4d80-35ad-487a-a081-efc861c8d411/project/051f59b9-ac77-4a63-9e76-ec2f78a992c8)

This is a repository containing my solutions to some leetcode problems. I don't
actually like leetcode very much, but every now and then I feel like doing one
or two. I make use of [leetgo](https://github.com/j178/leetgo) as a testing
framework, to automate acquiring and submitting problems.

## Usage

You can either use the `.yaml` file provided in this repository, or create your
own by running `leetgo init` after entering the nix shell. Speaking of, I make
use of a flake to manage some basic dependencies for the testing environment.
Not everything I use is present in this flake, but everything you "need" is
included. Neovim, for example, is not included in the flake as I didn't want to
override my configuration from outside the shell while inside the shell.

To use the shell, simply type `nix develop`
