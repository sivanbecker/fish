# Defined in - @ line 0
function prodcli --description 'alias prodcli=export _DHCPAWN_PORT=80; export _DHCPAWN_STAGING=False; export _DHCPAWN_CLI_DEVELOP=False; dhcpawn_cli config query'
	export _DHCPAWN_PORT=80; export _DHCPAWN_STAGING=False; export _DHCPAWN_CLI_DEVELOP=False;dhcpawn_cli config query $argv;
end
