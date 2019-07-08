function envs
	cd $HOME/envs
    if test -n "$VIRTUAL_ENV"
        deactivate
    end
end
