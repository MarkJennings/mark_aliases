# Source the current repo, replacing any previous repo sourcing commands
alias sourcethis='unset CMAKE_PREFIX_PATH;source ./devel/setup.bash'
  
# Automatic return to your last-sourced catkin root directory
alias gohome='cd $(echo $CMAKE_PREFIX_PATH | cut -d ':' -f 1);cd ..'
  
# Automatic catkin_make from any folder (use in conjunction with the above one-liner)
# Builds in Release mode, which can enable optimizations for some packages
alias cm='(gohome && exec catkin build -DCMAKE_BUILD_TYPE=Release --summarize)'
  
# Clean catkin_make (delete the generated folders, then catkin_make)
alias cmclean='(gohome && rm -rf build devel && exec catkin build --summarize)'
 
# Build just the package specified after this alias, i.e. 'cmfast my_pkg'
alias cmfast='gohome && catkin build --no-deps'

# Get current package path
alias rpp='echo $ROS_PACKAGE_PATH'

alias ..='cd ..'
alias ...='cd ../..'