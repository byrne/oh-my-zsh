local user_host="%{$fg_bold[green]%}%n@%m%{$reset_color%}"
local current_dir="%{$fg_bold[cyan]%}%~%{$reset_color%}"
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"

local proxy_flag="%{$fg_bold[red]%}N%{$reset_color%}"
if [ -n "$http_proxy" ];then
    local proxy_flag="%{$fg_bold[green]%}Y%{$reset_color%}"
fi
PROMPT='${ret_status}${user_host} %{$fg_bold[green]%}%p${current_dir} %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}) %{$fg[green]%}✔%{$reset_color%}"
