# Include .bashrc
# All aliases, functions and prompt definitions
# are located in bashrc so they're all in one place
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# Include any company specific rc scripts
if [ -e "$HOME/.company_profile" ]; then
    . "$HOME/.company_profile"
fi
  
# On OSX, explicitly source .bashrc so that OS X bash is guaranteed to include all definitions
if [ "Darwin" = "$(uname -s)" ]; then
    [ -s "$HOME/.bashrc" ] && . "$HOME/.bashrc"
fi
