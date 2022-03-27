# KDE Linux Customization
  All Linux Customisation, Themes, Apps links and config files

### Two Terminal Configuration:

##### 1. PowerLevel 10k Config:
  Enhanced Visibility(Color and required Information)
  Make backup of current configuration.
  
  ```
  cp p10k.zsh /home/$(whoami)/.p10k.zsh
  ```

##### 2. Kali Linux Zsh Prompt:
  Changed Prompt Symbols, Colors

 ```
 sudo mv root-zshrc.txt /root/.zshrc
 mv user-zshrc.txt /home/$(whoami)/.zshrc
 ```

### Lightly Custom GUI QT applications:
  Lightly Link - https://github.com/Luwx/Lightly

### Custom Splash Screen:
  1. Download Viki and place it in ~./local/share/plasma/look-and-feel 
  2. System Settings -> Startup and Shutdown -> Splash Screen -> Choose ViKi -> Apply
  3. To change Image edit Splash.qml --> ```source: "images/image-name.img-extension"```

### Custom SSDM login:
  ![https://store.kde.org/p/1303587]Ittu-Bottom 
  ```
  /ush/share/ssdm/themes/ittu_bottom/
  /ush/share/ssdm/themes/ittu_bottom/components/artwork/gifs
  ```
  To Test changes of SDDM:
  ```
  sddm-greeter --test-mode --theme /ush/share/ssdm/themes/ittu_bottom
  ```
  
### Appearence: 
  1. Application Style --> Lightly
  2.  Plasma Style --> ![https://store.kde.org/p/1656563]Canta-Dark
  3.  Colors --> Canta-Dark
  4.  Window Decorations --> Canta-Dark
  5.  Fonts --> Nasalization (All), MesloLGS NF (Terminal)
  6.  Icons --> ![https://store.kde.org/p/1425426/]Beauty-Line, ![https://store.kde.org/p/1166289/]Papirus, ![https://store.kde.org/p/1238162]Suru++
  7.  Cursors --> ![https://store.kde.org/p/1358330/]Vimix, ![https://store.kde.org/p/1197198]Bibata 
  8.  Splash Screen --> ViKi, ![https://store.kde.org/p/1433200]BeautifulTreeAnimation

### Desktop[Kwin Effects] Effects:
  1. <a href="https://github.com/zzag/kwin-effects-yet-another-magic-lamp">Yet Another Magic Lamp</a>
  2. Slide Back
  3. Force Blur

### Dock:
  Latte Dock --> Import Kali.layout.latte 
  
 ### KDE Widgets:
  1. Window Button
  2. Window Title
  3. Global Menu
  4. Event Calendar
  5. Latte Separator
  6. Latte Spacer
  7. MacOS InLine Battery
