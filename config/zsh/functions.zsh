# ls but with a coloured file preview using fzf and bat
function lsf() {
	fd --hidden --exclude .git | fzf --ansi --reverse \
	 --preview-window 'right:60%' \
	 --preview 'bat --color=always --style=header,grid --line-range :300 {}'
}

# Fuzzy Edit
fuction fe() {
	file=$(lsf)
	[[ $file ]] && $EDITOR $file
}