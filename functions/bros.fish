function bros
	if set -q bro_cli_site
        bro -s $bro_cli_site $argv
    end
end
