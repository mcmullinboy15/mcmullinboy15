# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# OLD: ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME="awesomepanda"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker zsh-autosuggestions aliases dotenv)

source $ZSH/oh-my-zsh.sh

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# pnpm
export PNPM_HOME="/Users/andrew/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Neo4j
export PATH="/Users/andrew/neo4j-community-2025.06.2/bin:$PATH"

# Java
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"
export JAVA_HOME="/opt/homebrew/opt/openjdk@21"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


# Andrew's Additions

## Github
alias gs="git status"
alias gch="git checkout"
alias gchl="git checkout @{-1}"
alias gchb="git checkout -b"
alias gchmb="git checkout main && git pull && git checkout -b"
alias gmm="git merge main --no-edit"
alias gmc="git merge --continue"
alias gchm="git checkout main"
alias gD="git branch -D"
alias gDl="git branch -D @{-1}"
alias gap="git add -p"
alias gcammm="gcam \"Merged main\""
alias gcammc="gcam \"Misc Changes\""
alias gcamt="gcam \"Type Errors\""
alias gcaml="gcam \"Lint Errors\""
alias gcamf="gcam \"Formatting Errors\""
alias gcamk="gcam \"Knip Errors\""
alias gcammmp="gcam \"Merged main\" && gp"
alias gcammcp="gcam \"Misc Changes\" && gp"
alias gcamtp="gcam \"Type Errors\" && gp"
alias gcamlp="gcam \"Lint Errors\" && gp"
alias gcamfp="gcam \"Formatting Errors\" && gp"
alias gcamkp="gcam \"Knip Errors\" && gp"

## Misc
alias n="pnpm"
alias li="pnpm lint:fix"
alias ff="pnpm biome:fix"
alias nip="pnpm i && gcam \"pnpm-lock.yml\" && gp"
alias nf="pnpm -F"
alias ns="pnpm -F services"
alias nstest="pnpm -F services test"
alias nstestw="pnpm -F services test -- --watch"
alias nstsc="pnpm -F services tsc"

# Open the provided .env file and log the provided Var
alias env="dotenvx get $2 -f $1"
alias envprod="dotenvx get $1 -f .env.production"
alias envprev="dotenvx get $1 -f .env.preview"
alias envdev="dotenvx get $1 -f .env.development"
alias envproddb="dotenvx get DATABASE_URL -f .env.production"
alias envprevdb="dotenvx get DATABASE_URL -f .env.preview"
alias envdevdb="dotenvx get DATABASE_URL -f .env.development"

# Mics
alias cdmono="cd ~/Documents/roofworx-monorepo"
alias cdmono1="cd ~/Documents/roofworx-monorepo-1"
alias cdapps="cd ~/Documents/roofworx-monorepo/apps"
alias cdpacks="cd ~/Documents/roofworx-monorepo/packages"
alias stream="pnpm dev:stream"
alias s="pnpm dev:stream"

alias zsh="cursor ~/.zshrc"
alias szsh="source ~/.zshrc"
alias ct="n clean:tsc"
alias t="n i && n tsc"
alias tw="n i && n tsc && n tsc -- -w"
alias ni="n i"
alias ps="n prod:scripts"
alias psr="n prod:scripts -r"
alias ds="n dev:scripts"
alias dsr="n dev:scripts -r"

alias time="fc -lf"
alias ci="n boundaries:check && n biome:ci & n knip:check"
alias madge="n madge:check"
alias sherif="n sherif:check"
alias knip="n knip:check"
alias biome="n biome:ci"
alias cits="n boundaries:check & n biome:ci & n tsgo"

# start-splitting-out-a-branch
ss() {
  git checkout -B $1;
  git reset main;
  git clean -f;
  git add -p;
}

purge_merge_branches() {
  git checkout -q main
  git for-each-ref refs/heads/ "--format=%(refname:short)" | while read branch; do mergeBase=$(git merge-base main $branch) && [[ $(git cherry main $(git commit-tree $(git rev-parse $branch^{tree}) -p $mergeBase -m _)) == "-"* ]] && git branch -D $branch; done
}


# My Github Prs
_prs() { gh pr list --search "is:open is:pr author:@me" --web; }
prs() { gh pr list --search "is:open is:pr author:@me"; }
_dprs() { gh pr list --search "is:open is:pr author:@me is:draft" --web; }
dprs() { gh pr list --search "is:open is:pr author:@me is:draft"; }
_rprs() { gh pr list --search "is:open is:pr user-review-requested:@me" --web; }
rprs() { gh pr list --search "is:open is:pr user-review-requested:@me"; }
_rtprs() { gh pr list --search "is:open is:pr review-requested:@me" --web; }
rtprs() { gh pr list --search "is:open is:pr review-requested:@me"; }
opr() { gh pr view --web $1; }
# open my pr description chat in chatgpt
prd() { open "https://chatgpt.com/c/68fdc15c-6010-832d-8141-799e7625c46a"; }
# NSYNC's Sentry issues
sen() { open "https://remi-2g.sentry.io/issues/views/189942/?project=4509787534852096&project=4509911421943808&project=4509929011281921&project=4510031507816448&project=4510064617717760&project=4510064624336896&project=4510064649699328&project=4510069464432640&project=4510148758667264&project=4510148781473792&project=4510331659223045&query=is%3Aunresolved%20assigned%3A%5Bmy_teams%2Cme%2Cjosh%40remihq.com%2Candrew%40remihq.com%2Ckevin%40remihq.com%2Ccarson%40remihq.com%2Cjoshuachambers%40remihq.com%2Cdaniel%40remihq.com%5D&sort=date&statsPeriod=90d"; }

# Remi App
loc() { open "http://localhost:3000"; }
locp() { open "http://localhost:3000/dashboard/dashboard/${1}"; }
locb() { open "http://localhost:3000/dashboard/bids/${1}"; }

# Cron ideas
# 1. Every day at 12:00 AM, run the command `restart the computer`
# 2. Close all chrome tabs that are the remi app, or github prs, or any other tabs that are not needed
# 3. 
