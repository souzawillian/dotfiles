# git prompt definitions
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}( "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[blue]%})%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# nvm prompt definitions
ngreen="$FG[154]"
ZSH_THEME_NVM_PROMPT_PREFIX="${ngreen}(⬢ "
ZSH_THEME_NVM_PROMPT_SUFFIX=")%{$reset_color%}"

# python prompt definitions
pyellow="$FG[226]"
ZSH_THEME_PY_PROMPT_PREFIX="${pyellow}(py "
ZSH_THEME_PY_PROMPT_SUFFIX=")%{$reset_color%}"

precmd() {
    print -P "\n%{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info) $(nvm_prompt_info) $(py_prompt_info)"
    # unset cmd_timestamp #Reset cmd exec time.
}

st_green="$FG[190]"
st_red="$FG[124]"
local ret_status="%(?:${st_green}❯ :${st_red}❯ )"
PROMPT="${ret_status}%{$reset_color%}"
RPROMPT="%F{8}${SSH_TTY:+%n@%m}%f"    # Display username if connected via SSH

# ------------------------------------------------------------------------------
#
# List of vcs_info format strings:
#
# %b => current branch
# %a => current action (rebase/merge)
# %s => current version control system
# %r => name of the root directory of the repository
# %S => current path relative to the repository root directory
# %m => in case of Git, show information about stashes
# %u => show unstaged changes in the repository
# %c => show staged changes in the repository
#
# List of prompt format strings:
#
# prompt:
# %F => color dict
# %f => reset color
# %~ => current path
# %* => time
# %n => username
# %m => shortname host
# %(?..) => prompt conditional - %(condition.true.false)
#
# ------------------------------------------------------------------------------
