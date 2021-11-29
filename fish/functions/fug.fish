function fug --description "open vim and start fugitive, iff in a git dir"
	git status &> /dev/null
	if [ $status = 0 ]
		vim -c G -c only
	else
		echo 'Not a git dir...'
	end
end
