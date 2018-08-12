function fish_prompt
    if test $status -eq 0
        set prompt_status (set_color -o green)' ✔'
    else
        set prompt_status (set_color -o red)' ✘'
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
            set cli (string join ":" $cli (set_color -o yellow)"PROD" $_DHCPAWN_PORT)
        end

    end

    if not set -q $SSH_TTY
        echo -n (set_color -o magenta)$USER@(prompt_hostname)
    end
    if test "$USER" = 'root'
        echo -n (set_color -o red)"#"
    end



    echo -n $prompt_status $cli (set_color -o red)'❯'(set_color -o yellow)'❯'(set_color -o green)'❯ '(set_color -o normal)
end
