### XDG env vars so the follwing exports know what they should be ###
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

### Stupid exports because some goofy programs don't know what XDG is :( ###
export HISTFILE="$XDG_STATE_HOME/bash/history"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"
export W3M_DIR="$XDG_DATA_HOME/w3m"

### Cool Exports *sunglasses emoji* ###
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"
export MANPAGER="nvim +Man!"
export EDITOR="lvim"
export ALSOFT_DRIVERS="pulse" # Stops OpenAL from using JACK, so Minecraft audio works
export JDK_JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true" # Java anti-aliasing
export XCURSOR_SIZE="24"
export XCURSOR_THEME="Bibata-Modern-Classic"

### Paths for pathing
export PATH="$PATH:$HOME/.local/share/cargo/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:/home/alx/.local/share/JetBrains/Toolbox/scripts"
