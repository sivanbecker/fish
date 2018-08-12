# Defined in - @ line 0
function stcli --description 'alias stcli=export _DHCPAWN_PORT=80; export _DHCPAWN_STAGING=True; export _DHCPAWN_CLI_DEVELOP=True; dhcpawn_cli config query'
	export _DHCPAWN_PORT=80; export _DHCPAWN_STAGING=True; export _DHCPAWN_CLI_DEVELOP=True; dhcpawn_cli config query $argv;
end
