function fish_hostname -d "print hostname for prompt"
	if [ "$SSH_CONNECTION" != "" ]
		echo "ssh://"
	end
	echo "ssh://"
	hostname
end
