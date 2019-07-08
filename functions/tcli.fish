# Defined in - @ line 0
function tcli --description 'alias tcli=export _DHCPAWN_PORT=80; export _DHCPAWN_STAGING=False; export _DHCPAWN_CLI_DEVELOP=False; export _DHCPAWN_CLI_PROD_SITE=telad; dhcpawn config query'
	export _DHCPAWN_PORT=80; export _DHCPAWN_STAGING=False; export _DHCPAWN_CLI_DEVELOP=False; export _DHCPAWN_CLI_PROD_SITE=telad; dhcpawn config query $argv;
end
