function prompt_virtualenv
    if set -q VIRTUAL_ENV
        set -l venv_parts (string split -m 2 -r / -- $VIRTUAL_ENV)
        set -l venv_name $venv_parts[-1]
        if test $venv_name = '.env'
            set venv_name $venv_parts[-2]
        end
        echo -ns (set_color -o yellow) 'Py(' (set_color -o white) $venv_name (set_color -o yellow) ') '
    end
end
