# Defined in - @ line 0
function gdh --description 'alias gdh=git diff origin/master..HEAD'
	git diff origin/master..HEAD $argv;
end
