function sc

    set_color white
    echo \n"This is my TMUX related environment:"
    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"\n

    if test -n "$tmux_yaml_dir"
        set_color green
        echo "TMUX YAML DIRECTORY IS: $tmux_yaml_dir"
    else
        set_color red
        echo "No tmux yaml directory set"
    end

    if test -n "$tmux_layout_local_repo"
        set_color green
        echo "TMUX LAYOUT REPO: $tmux_layout_local_repo"
    else
        set_color red
        echo "No tmux layout local repo found"
    end

    set_color white
    echo \n"Existing fish functions:"
    echo "~~~~~~~~~~~~~~~~~~~~~~~~"\n

    set_color yellow
    echo "d - DHCPAWN (FLASK 8001 ; EMBER 4201):"
    set_color white
    echo "fish func: /home/archhome/.config/fish/functions/d.fish"
    echo "tmux layout: /home/archhome/.tmuxp/dhcpawn.yaml"\n

    set_color yellow
    echo "br - BRO (FLASK 8000 ; EMBER 4200):"
    set_color white
    echo "fish func: /home/archhome/.config/fish/functions/br.fish"\n

    set_color yellow
    echo "dcli - DHCPAWN-CLI:"
    set_color white
    echo "fish func: /home/archhome/.config/fish/functions/dcli.fish"
    echo "tmux layout: /home/archhome/.tmuxp/dhcpawn_cli.yaml"\n

    set_color yellow
    echo "bcli - BRO-CLI:"
    set_color white
    echo "fish func: /home/archhome/.config/fish/functions/bcli.fish"
    echo "tmux layout: /home/archhome/.tmuxp/bro_cli.yaml"\n

    set_color yellow
    echo "ju - JUPYTER:"
    set_color white
    echo "fish func: /home/archhome/.config/fish/functions/jupi.fish"
    echo "tmux layout: /home/archhome/.tmuxp/jupi.yaml"\n

    set_color yellow
    echo "ilab - INFINILAB (FLASK 8003):"
    set_color white
    echo "fish func: /home/archhome/.config/fish/functions/ilab.fish"\n

    set_color yellow
    echo "xr - ESXER (FLASK 8004 / VUE 8080)"
    set_color white
    echo "fish func: /home/archhome/.config/fish/functions/esxer.fish"\n
end
