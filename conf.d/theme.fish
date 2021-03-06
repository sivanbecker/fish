set -U fish_color_autosuggestion 969896
set -U fish_color_cancel -r
set -U fish_color_command c397d8
set -U fish_color_comment e7c547
set -U fish_color_cwd green
set -U fish_color_cwd_root red
set -U fish_color_end c397d8
set -U fish_color_error d54e53
set -U fish_color_escape 'bryellow'  '--bold'
set -U fish_color_history_current --bold
set -U fish_color_host normal
set -U fish_color_match --background=brblue
set -U fish_color_normal normal
set -U fish_color_operator bryellow
set -U fish_color_param 7aa6da
set -U fish_color_quote b9ca4a
set -U fish_color_redirection 70c0b1
set -U fish_color_search_match 'bryellow'  '--background=brblack'
set -U fish_color_selection 'white'  '--bold'  '--background=brblack'
set -U fish_color_status red
set -U fish_color_user brgreen
set -U fish_color_valid_path --underline
set -U fish_pager_color_completion
set -U fish_pager_color_description 'B3A06D'  'yellow'
set -U fish_pager_color_prefix 'white'  '--bold'  '--underline'
set -U fish_pager_color_progress 'brwhite'  '--background=cyan'

# Enable colors for man pages, adapted from /etc/profile.d/less_termcap.sh
set -x LESS_TERMCAP_mb \e'[01;31m'       # begin blinking
set -x LESS_TERMCAP_md \e'[01;38;5;74m'  # begin bold
set -x LESS_TERMCAP_me \e'[0m'           # end mode
set -x LESS_TERMCAP_se \e'[0m'           # end standout-mode
set -x LESS_TERMCAP_so \e'[01;47;30m'    # begin standout-mode - info box
set -x LESS_TERMCAP_ue \e'[0m'           # end underline
set -x LESS_TERMCAP_us \e'[04;38;5;146m' # begin underline
