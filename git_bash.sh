export PROMPT_COMMAND=__git_prompt
__git_prompt ()
{
    txtblk='\e[0;30m' # Black - Regular
        txtred='\e[0;31m' # Red
        txtgrn='\e[0;32m' # Green
        txtylw='\e[0;33m' # Yellow
        txtblu='\e[0;34m' # Blue
        txtpur='\e[0;35m' # Purple
        txtcyn='\e[0;36m' # Cyan
        txtwht='\e[0;37m' # White
        bldblk='\e[1;30m' # Black - Bold
        bldred='\e[1;31m' # Red
        bldgrn='\e[1;32m' # Green
        bldylw='\e[1;33m' # Yellow
        bldblu='\e[1;34m' # Blue
        bldpur='\e[1;35m' # Purple
        bldcyn='\e[1;36m' # Cyan
        bldwht='\e[1;37m' # White
        txtrst='\e[0m'    # Text Reset

        CURRENT_BRANCH=`git branch 2>/dev/null | grep '*' | head -n1`
        CURRENT_BRANCH=${CURRENT_BRANCH:2}
    if [ -z "$CURRENT_BRANCH" ] ; then
      gitstatus=''
    else
      STATUS_LINES=`git status`
          if [[ "$STATUS_LINES" =~ "# Changed but not updated" ]] ; then
            colour=$bldred
                elif [[ "$STATUS_LINES" =~ "# Changes to be committed" ]] ; then
                colour=$bldgrn
                elif [[ "$STATUS_LINES" =~ "# Untracked files" ]] ; then
                colour=$bldblu
          else
            colour=$bldblk
                fi
                gitstatus=" "$colour[${CURRENT_BRANCH}]$txtrst
                fi
                PS1="${debian_chroot:+($debian_chroot)}\u@\h:\w${gitstatus}$ "
}
