# Defined in - @ line 0
function hba_mover --description 'alias hba_mover=docker run --rm -it -v ~/.infinidat:/root/.infinidat git.infinidat.com:4567/infradev/host-tools-docker hba_mover'
	docker run --rm -it -v ~/.infinidat:/root/.infinidat git.infinidat.com:4567/infradev/host-tools-docker hba_mover $argv;
end
