## T's Dotfiles 

Welcome to my dotfiles!  
I use this repo to practice Git + GitHub and document my journey of finding my ideal development environment.  

### 👾 What's in here ?  
- **Neovim** (Kickstart-based, but evolving)  
- **Tmux / Ghostty / Aerospace WM / .zshrc...** (Minimalist configs)  
- **Scripts** 


![Sc](https://github.com/TamerHamdan/images/raw/main/screenshots/dotfilesV1.png)  

I like to keep things minimal and close to default for easier maintainability & portability!  
This devflow focuses more on **keyboard-based programming** (Vi)  
##
### ⚙️ How to Use? its super simple 
1. Install GNU Stow:
   ```bash
   # macOS
   brew install stow

   # Ubuntu/Debian
   sudo apt install stow
   ```

2. Clone this repo to your home directory:
   ```bash
   git clone https://github.com/TamerHamdan/dotfiles.git ~/dotfiles
   cd dotfiles
   ```

3. Use Stow to create symlinks:
   ```bash
   stow .
   ```
   **This will symlink all the dotfiles to your home directory. :D**  

<details>
<summary><h3>Using My folder structure (Optional)</h3></summary>
   
Just run the bash script 
```bash
   bash dirSetup.sh
   ```

</details>

----
Working on adding dependencies...  

Feel free to explore, borrow, or contribute! 

