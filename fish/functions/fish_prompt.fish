#all prompt related functions are here
function fish_hostname -d "print hostname for prompt"
	if [ "$SSH_CONNECTION" != "" ]
        set_color red
		printf "ssh://"
	end
	hostname
end

# silence vi mode indicator with an empty function
function fish_mode_prompt
end

function fish_right_prompt --description 'Get right prompt content'
    # if git repository
    if git rev-parse --git-dir > /dev/null 2>&1
        set -l cl_gorse 'FFEB3B'
        set -l cl_empress '757575'
        set -l cl_black '000000'
        set_color $cl_gorse -b normal
        printf ''
        set_color $cl_black -b $cl_gorse
        printf '  '
        set_color $cl_empress -b $cl_gorse
        printf ''
        set_color normal -b $cl_empress
        printf ' %s' (fish_git_prompt '%s')
        set_color normal
    else
        printf ' '
    end
end

function fish_prompt --description 'Write out the prompt'
    set last_status $status

    # Display first line
    printf '\n'
    set -l cl_blue_1 '1C55A2'
    set -l cl_blue_2 '428CF1'
    set -l cl_blue_3 '78A8F2'
    set -l cl_black '000000'
    set_color white -b $cl_blue_1
 
    printf ' %s@%s' (whoami) (fish_hostname)

    set_color normal
    set_color $cl_blue_1 -b $cl_blue_2
    printf ''
    set_color $cl_black -b $cl_blue_2
    if [ (prompt_pwd) = '~' ]
        printf '  ~ '
        set_color $cl_blue_2 -b normal
    else if [ (prompt_pwd) = '/' ]
        printf '  / '
        set_color $cl_blue_2 -b normal
    else
        printf '  '
        set_color $cl_blue_2 -b $cl_blue_3
        printf ''
        set_color $cl_black -b $cl_blue_3
        printf ' %s ' (prompt_pwd)
        set_color $cl_blue_3 -b normal
    end
    printf ''
    set_color normal

    # Display second line
    #set -l color_cursor '8829F9'
    set -l color_cursor blue
    printf '\n'
    set_color white -b $color_cursor
    printf '  '
    set_color $color_cursor -b normal
    printf ' '
    set_color normal
end
