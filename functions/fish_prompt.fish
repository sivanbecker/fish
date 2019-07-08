function fish_prompt
    if test $status -eq 0
        set prompt_status (set_color green)' ✔'
    else
        set prompt_status (set_color red)' ✘'
    end

    if set -q _DHCPAWN_CLI_DEVELOP
        set cli (set_color -o yellow)"CLI"
        if test "$_DHCPAWN_CLI_DEVELOP" = "True"
            if test "$_DHCPAWN_STAGING" = "True"
                set cli (string join ":" $cli (set_color -o yellow)"STAGING" $_DHCPAWN_PORT)
            else
                set cli (string join ":" $cli (set_color -o yellow)"LOCAL" $_DHCPAWN_PORT)
            end
        else
            if test "$_DHCPAWN_CLI_PROD_SITE" = "telad"
                set cli (string join ":" $cli (set_color -o yellow)"TELAD" $_DHCPAWN_PORT)
            else
                set cli (string join ":" $cli (set_color -o yellow)"INFI1" $_DHCPAWN_PORT)
            end
        end

    end

    if set -q bro_cli_site
        set cli (set_color -o yellow)"BRO-CLI"
        if test "$bro_cli_site" = "gdc"
            set cli (string join ":" $cli (set_color -o yellow)"GDC")
        else if test "$bro_cli_site" = "infi1"
            set cli (string join ":" $cli (set_color -o yellow)"INFI1")
        else if test "$bro_cli_site" = "stage"
            set cli (string join ":" $cli (set_color -o yellow)"STAGE")
        else if test "$bro_cli_site" = "localhost"
            set cli (string join ":" $cli (set_color -o yellow)"LOCALHOST")
        end
    end





    if not set -q $SSH_TTY
        echo -n (set_color magenta)$USER@(prompt_hostname)
    end
    if test "$USER" = 'root'
        echo -n (set_color red)"#"
    end

    echo -n $prompt_status $cli (set_color -o red)'❯'(set_color -o yellow)'❯'(set_color -o green)'❯ '(set_color -o normal)
end
