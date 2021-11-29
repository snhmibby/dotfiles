function hugo-doc -d "start hugo-doc server if it's not running"
	#todo: figure out how to get pid of started process with fish
	#todo: then make a run-lock file
	cd ~/src/other/hugo/docs/
	hugo server -p 1616 &
	#todo: grab hugo server output in a named pipe
	#todo: grab hugo port from named pipe
	firefox localhost:1616 &; disown
end
