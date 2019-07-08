# Defined in - @ line 0
function lcli --description 'alias lcli=export _DHCPAWN_PORT=8001; export _DHCPAWN_STAGING=False; export _DHCPAWN_CLI_DEVELOP=True; dhcpawn config query'
	export _DHCPAWN_PORT=8001; export _DHCPAWN_STAGING=False; export _DHCPAWN_CLI_DEVELOP=True; dhcpawn config query $argv;
end
