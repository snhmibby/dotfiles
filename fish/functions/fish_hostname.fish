function fish_hostname -d "print hostname for prompt"
	printf '@'
	if [ "$SSH_CONNECTION" != "" ]
		echo "ssh://"
	end
	hostname
end
