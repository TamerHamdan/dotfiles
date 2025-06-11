## T Unix Dotfiles

This repo tracks my journey of building my ideal development environment!  
I like to keep things close to default, portable, and easy to maintain (not to mention looking good :).  
My aim is minimal friction between having a thought and building it.

### What's In here?
- Neovim (Kickstart-based, but evolving)
- Tmux, Ghostty, Aerospace, Zsh configs...
- Custom scripts

### Preview
![Dotfiles Preview](https://github.com/TamerHamdan/repo-media/blob/main/dotfiles/dotfilesV1.png?raw=true)

### Usage / Installation  

First, install `stow` using your package manager : 

<details>
<summary>macOS</summary>

```bash
brew install stow
```
</details>

<details>
<summary>Debian/Ubuntu</summary>

```bash
sudo apt-get update
sudo apt-get install stow
```
</details>

<details>
<summary>Fedora</summary>

```bash
sudo dnf install stow
```
</details>

<details>
<summary>Arch Linux</summary>

```bash
sudo pacman -S stow
```
</details>

Then clone this repo and use [`stow`](https://www.gnu.org/software/stow/) to symlink the dotfiles:

```bash
git clone https://github.com/TamerHamdan/dotfiles.git ~
cd dotfiles
stow .
```
Feel free to look around, fork, or contribute!
