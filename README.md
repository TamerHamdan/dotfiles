## T Unix Dotfiles 

Welcome to my dotfiles!  
I use this repo to practice Git + GitHub and document my journey of finding my ideal development environment.  

### What's in here ?  
- **Neovim** (Kickstart-based, but evolving)  
- **Tmux / Ghostty / Aerospace WM / .zshrc...** (Minimalist configs)  
- **Scripts** 


![Sc](https://github.com/TamerHamdan/images/raw/main/screenshots/dotfilesV1.png)  

I like to keep things minimal and close to default for easier maintainability & portability!  
This devflow focuses more on **keyboard-based programming** (Vi)  
##

<details>
<summary><h2>How to Use? its super simple ⤵︎ </h2></summary>

1. Install GNU Stow:
   ```bash
   # macOS
   brew install stow

   # Ubuntu/Debian
   sudo apt install stow
   ```

2. Clone this repo to your home directory then just stow it!
   ```bash
   git clone https://github.com/TamerHamdan/dotfiles.git ~/dotfiles
   cd dotfiles
   stow .
   ```
   **This will symlink all the dotfiles to your home directory. :D**  


</details>

<details>
<summary><h2>Dev Folder Structure (Optional) ⤵︎ </h2></summary>

   If u wanna use my Developer Dir struct :

```
~/Developer
├── Repos
├── Scripts
├── Temp
├── Uni
└── Working
```
   
   Just run the bash script - This will Create Developer directory with subfolder then move Script dir to it.
```bash
   bash dirSetup.sh
   ```

</details>

##
Working on adding dependencies...  
Feel free to explore, borrow, or contribute! 

