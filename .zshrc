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

split_branch() {
  # Make sure everything is committed
  git switch $1
  git status            # clean? commit/stash if not

  git fetch origin

  # Create a new branch off main for the “split-out” PR
  git switch -c split-$1 origin/main

  # Interactively bring over only the lines you want from $1
  # (modern command; same as old `git checkout -p`)
  git restore -s $1 -p -- .

  # ^ Git will show each diff hunk; say 'y' to take it into this branch,
  # 'n' to skip. You’re selecting *lines/hunks*, not whole files.

  # Commit those selected hunks
  git add -A
  git commit -m "Extract part X from $1"

  # Push and open a new PR
  git push -u origin split-$1

  gh pr create --fill-verbose --web

  # ===============================
  # Now, we need to update the original branch
  # ===============================

  # Keep a backup of the original just in case
  git switch $1
  git branch backup/$1

  # Reset $1 to base (main)
  git reset --hard origin/main

  # Interactively re-apply only the *remaining* changes from the backup
  git restore -s backup/$1 -p -- .

  # Review, then commit
  git add -A
  git commit -m "Feature minus the split-out changes $1"

  # Force-push to update the existing PR (you rewrote its history)
  git push -f
}

purge_merge_branches() {
  git checkout -q main
  git for-each-ref refs/heads/ "--format=%(refname:short)" | while read branch; do mergeBase=$(git merge-base main $branch) && [[ $(git cherry main $(git commit-tree $(git rev-parse $branch^{tree}) -p $mergeBase -m _)) == "-"* ]] && git branch -D $branch; done
}

# Remi App
proj() {
    open "http://localhost:3000/dashboard/$1"
}

bid() {
    open "http://localhost:3000/dashboard/bids/$1"
}

pproj() {
    open "https://app.remihq.com/dashboard/$1"
}

pbid() {
    open "https://app.remihq.com/dashboard/bids/$1"
}

dproj() {
    open "https://roofworx-monorepo-nextjs-kevink-roofworxio-roofworx.vercel.app/dashboard/$1"
}

dbid() {
    open "https://roofworx-monorepo-nextjs-kevink-roofworxio-roofworx.vercel.app/dashboard/bids/$1"
}

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

ss() {
  git checkout -B $1;
  git reset main;
  git clean -f;
  git add -p;
}


# split-branch my_large_feature_branch "Extract part $1 from $2"


# pnpm
export PNPM_HOME="/Users/andrew/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


# Neo4j
export PATH="/Users/andrew/neo4j-community-2025.06.2/bin:$PATH"


export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"
export JAVA_HOME="/opt/homebrew/opt/openjdk@21"

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
