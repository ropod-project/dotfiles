# zsh aliases

# colorise ls command
alias ls='ls --color=auto'

# some ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# colorise grep commands
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# combine cd and ls functions
function cdls(){
    cd "$@" && ls
}

# parent directories aliases
alias ...='cdls ../..'
alias ....='cdls ../../..'
alias .....='cdls ../../../..'

# run ranger (with exiing to selected directory option)
alias r='echo "Starting Ranger file manager"; ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

# ping google's DNS
alias p='ping 8.8.8.8'

# Aliases from github.com/ropod-project/setup
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
# export CATKIN_WORKSPACE=~/ropod-project-software/catkin_workspace

# export ED_PLUGIN_PATH=$CATKIN_WORKSPACE/devel/lib
# export ED_MODEL_PATH=$CATKIN_WORKSPACE/src/functionalities/ED/ed_object_models/models

# export ROPOD_FRANK_IP=192.168.22.166
# export ROPOD_BONNIE_IP=192.168.44.92

# source /opt/ros/kinetic/setup.bash
# source $CATKIN_WORKSPACE/devel/setup.bash

# alias buildit="cd $CATKIN_WORKSPACE; catkin_make -DUSE_SETCAP=ON"
# alias clean_build="cd $CATKIN_WORKSPACE;
#                    rm -rf build/ devel/;
#                    cd $CATKIN_WORKSPACE/src/; 
#                    rm CMakelists.txt; 
#                    cd $CATKIN_WORKSPACE; 
#                    catkin_make -DUSE_SETCAP=ON;"


# alias catkin_workspace="cd $CATKIN_WORKSPACE"
# alias applications="cd $CATKIN_WORKSPACE/src/applications"
# alias functionalities="cd $CATKIN_WORKSPACE/src/functionalities"
# alias platform="cd $CATKIN_WORKSPACE/src/platform"

# alias teleop='rosrun robot_common teleop.py'
# alias rstart='roslaunch ropod_tue_1_bringup start.launch LOAD_ATTACHED:="false"'
# alias rmstart='roslaunch ropod_tue_1_bringup start.launch LOAD_ATTACHED:="true" loadName:="mobidik"'
# alias r2start='roslaunch ropod_tue_2_bringup start.launch LOAD_ATTACHED:="false"'

# alias git-status='functionalities; ./multi-git-status/mgitstatus ~/ropod-project-software/catkin_workspace/src/ 4; catkin_workspace'

# function git_branches()
# {
#     if [[ -z "$1" ]]; then
#         echo "Usage: $FUNCNAME <dir>" >&2
#         return 1
#     fi

#     if [[ ! -d "$1" ]]; then
#         echo "Invalid dir specified: '${1}'"
#         return 1
#     fi

#     # Subshell so we don't end up in a different dir than where we started.
#     (
#         cd "$1"
#         for sub in *; do
#             [[ -d "${sub}/.git" ]] || continue
#             echo "$sub [$(cd "$sub"; git  branch | grep '^\*' | cut -d' ' -f2)]"
#         done
#     )
# }

# alias git-check-branches='applications; git_branches .; functionalities; git_branches .; git_branches ./ED; git_branches ./ropod_comm; git_branches ./ropod_nav/; git_branches ./ros_experimental_nav/; platform; git_branches .; catkin_workspace; git_branches .'

# alias update-dependencies='rosdep update;rosdep install --from-path . -i -y;'
