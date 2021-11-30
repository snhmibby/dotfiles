set HUGO_DOCS $HOME/src/other/hugo/docs
set HUGO_DOC_LOCKFILE $HUGO_DOCS/.serverlock
#lockfile has words: pid and port

function _hugo_doc_has_lockfile
	return [ -e $HUGO_DOC_LOCKFILE ]
end

function hugo-doc -d "start hugo-doc server if it's not running"
	cd ~/src/other/hugo/docs/
	mkfifo hugo-output
	hugo server -p 1616 &
	#todo: grab hugo server output in a named pipe
	#todo: grab hugo port from named pipe
	firefox localhost:1616 &; disown
end
