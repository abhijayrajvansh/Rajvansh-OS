set fish_greeting
if status is-interactive
    clear
    #   here goes startup message
    alias getcontrol='fish /Users/abhijayrajvansh/.config/fish/greetme.fish'
    
    # Custom Functions:- version update and shortcuts
    # Terminal Custom: -
    alias remove-executables='rm *.out'
    alias g++='g++-11'
    alias gcc='gcc-11'
    alias cc='clang-13'
    alias pip='pip3'
    alias python='python3'
    alias py='python'
    alias kk='clear'
    alias bb='cd ..'
	alias nv='nvim'
    alias app='python app.py'
    alias oo='open .'
    alias notes='cd /Users/abhijayrajvansh/Desktop/files && prg notes.txt'
    
    # login bots
    alias cf-login='codeforces-login'
    alias elab='cd /Users/abhijayrajvansh/Personal-Softwares/Elab-Login-Bot && app'

    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  VS Code  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    alias git-push-vscode-snippets='cp -r /Users/abhijayrajvansh/Library/Application\ Support/Code/user/snippets/ /Users/abhijayrajvansh/Desktop/programming-environment/vscode && cd /Users/abhijayrajvansh/Desktop/programming-environment/vscode && git-push "Updating User Snippets From VScode"'
    
    function push-templates
        git-push-vscode-snippets
        echo
        echo "Successfully Completed ✅, lesssgoo 🚀"
    end


    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Hackathons ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

        alias hackathons='cd /Users/abhijayrajvansh/Desktop/development/Hackathons'

    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  projects   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    alias project-time='cd /Users/abhijayrajvansh/Desktop/development/projects/Project-TIME'
    alias wb='python /Users/abhijayrajvansh/Desktop/development/projects/Launch-Websites/wb.py'
    alias url-remaker='cd /Users/abhijayrajvansh/Personal-Stuff/url-remaker'
    alias rajvansh-os='cd /Users/abhijayrajvansh/Desktop/development/projects/Rajvansh-os'


    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  SRM - Elab   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

        alias sepm='cd /Users/abhijayrajvansh/Desktop/4th-Sem-Academics/Software-Engineering-and-Project-Management'
        alias pqt='cd /Users/abhijayrajvansh/Desktop/4th-Sem-Academics/Probability-and-Queueing-Theory'
        alias os='cd /Users/abhijayrajvansh/Desktop/4th-Sem-Academics/Operating-System'
        alias daa='cd /Users/abhijayrajvansh/Desktop/4th-Sem-Academics/Design-and-Analysis-of-Algorithms'
        alias daa-elab='cd /Users/abhijayrajvansh/Desktop/4th-Sem-Academic`s/Design-and-Analysis-of-Algorithms/elab'

        
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Codeforces   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    alias codeforces-login='cd /Users/abhijayrajvansh/Personal-Softwares/codeforces-login-bot && app'

    function 1000
        main
        cd /Users/abhijayrajvansh/Personal-Softwares/C2-Ladders-CFLogin-Bot
        app
    end
    
    
    #Codeforces Contest Bot
    function cf_contest_bot
        # Directory location of Codeforces Bot
        /Users/abhijayrajvansh/Desktop/development/projects/Codeforces-Contest-Bot && python main.py $argv
        # After running bot and downloading TC
        codeforces
        cd $argv && cd A
    end
    function cf-upsolver
        #directory of upsolver bot
        /Users/abhijayrajvansh/Desktop/development/projects/Codeforces-Contest-Bot && python cf-upsolver.py $argv
        #after running bot and downloading testcases
        cd /Users/abhijayrajvansh/desktop/codeforces/UPSOLVE-1000/
    end

    # CommandLine Debug during contests:- Compile, Debug && Timed: C++

    function cpp # ABHIJAY_DEBUG FILE_NAME.cpp
        echo "Compiling" $argv" with G++17..."
        echo
        sleep 1
        g++ -std=c++17 $argv -o a.out
        ./a.out
    end

    function deb # ABHIJAY_DEBUG FILE_NAME.cpp
        echo "[ABHIJAY_DEBUG MODE] Compiling" $argv.cpp" with G++17..."
        echo "---------INPUT--------"
        if test -f sample_input_1.txt;
            echo "Sample testcase 1:"
            cat sample_input_1.txt
            echo "``````````````````````````````````````````````````````"
            sleep 1
            g++ -std=c++17 -DABHIJAY_DEBUG $argv.cpp -o a.out
            echo "--------OUTPUT--------"
            ./a.out
        else
            sleep 1
            g++ -std=c++17 -DABHIJAY_DEBUG $argv.cpp -o a.out
            echo "--------OUTPUT--------"
            ./a.out
        end
    end


    function run # ABHIJAY_DEBUG FILE_NAME.cpp
        echo "Compiling" main.cpp" with G++17..."
        g++ -std=c++17 main.cpp -o a.out
        sleep 1
        if test -f sample_input_$argv.txt;
            ./a.out <sample_input_$argv.txt> my_output_$argv.txt
            if cmp -s sample_output_$argv.txt my_output_$argv.txt;
                echo Running Testcase $argv:(set_color --bold green) 'Passed!' 
                echo " Expected                                My Output"
                echo "```````````                             ````````````"
                diff -y -W 70 sample_output_$argv.txt my_output_$argv.txt
            else
                echo Running Testcase $argv:(set_color --bold red) 'Failed' 
                echo " Expected                                My Output"
                echo "```````````                             ````````````"
                diff -y -W 70 sample_output_$argv.txt my_output_$argv.txt
            end
        end
    end

    # for single problem
    function runtestcases # runnig  and testing sample testcases
        echo "Compiling main.cpp with G++17..."
        echo 
        sleep 1
        # Compiling file
        g++ -std=c++17 main.cpp -o main.out
        # Running testcases:
        if test -f sample_input_1.txt;
            ./main.out <sample_input_1.txt> my_output_1.txt
            if cmp -s sample_output_1.txt my_output_1.txt;
                echo Running Testcase 1:(set_color --bold green) 'Passed!' (set_color normal)
                echo "Expected                              My Output"
                echo "``````````                           ````````````"
                diff -y -W 70 sample_output_1.txt my_output_1.txt
                echo (set_color normal)
            else
                echo Running Testcase 1:(set_color --bold red) 'Failed' (set_color normal)                
                echo "Expected                              My Output"
                echo "``````````                           ````````````"
                diff -y -W 70 sample_output_1.txt my_output_1.txt
                echo ""                
            end
        end
        if test -f sample_input_2.txt;
            ./main.out <sample_input_2.txt> my_output_2.txt
            if cmp -s sample_output_2.txt my_output_2.txt;
                echo Running Testcase 2:(set_color --bold green) 'Passed!' (set_color normal)
                echo "Expected                               My Output"
                echo "``````````                            ````````````"
                diff -y -W 70 sample_output_2.txt my_output_2.txt
                echo (set_color normal)
            else
                echo Running Testcase 2:(set_color --bold red) 'Failed' (set_color normal)                
                echo "Expected                               My Output"
                echo "``````````                            ````````````"
                diff -y -W 70 sample_output_2.txt my_output_2.txt
                echo ""                
            end
        end
        if test -f sample_input_3.txt;
            ./main.out <sample_input_3.txt> my_output_3.txt
            if cmp -s sample_output_3.txt my_output_3.txt;
                echo Running Testcase 3:(set_color --bold green) 'Passed!' (set_color normal)
                echo "Expected                               My Output"
                echo "``````````                            ````````````"
                diff -y -W 70 sample_output_3.txt my_output_3.txt
                echo (set_color normal)
            else
                echo Running Testcase 3:(set_color --bold red) 'Failed' (set_color normal)                
                echo "Expected                               My Output"
                echo "``````````                            ````````````"
                diff -y -W 70 sample_output_3.txt my_output_3.txt
                echo ""                
            end
        end
        if test -f sample_input_4.txt;
            ./main.out <sample_input_4.txt> my_output_4.txt
            if cmp -s sample_output_4.txt my_output_4.txt;
                echo Running Testcase 4:(set_color --bold green) 'Passed!' (set_color normal)
                echo "Expected                               My Output"
                echo "``````````                            ````````````"
                diff -y -W 70 sample_output_4.txt my_output_4.txt
                echo (set_color normal)
            else
                echo Running Testcase 4:(set_color --bold red) 'Failed' (set_color normal)                
                echo "Expected                               My Output"
                echo "``````````                            ````````````"
                diff -y -W 70 sample_output_4.txt my_output_4.txt
                echo ""                
            end
        end
    end
    #for problemset
    function runsamples # runnig and testing sample testcases
        echo "Compiling main.cpp with G++17..." \n
        sleep 1
        #navigating to problem dir:
        cd ..
        cd $argv
        # Compiling file
        g++ -std=c++17 $argv.cpp -o $argv.out
        # Running testcases:
        if test -f sample_input_1.txt;
            ./$argv.out <sample_input_1.txt> my_output_1.txt
            if cmp -s sample_output_1.txt my_output_1.txt;
                echo Running Testcase 1:(set_color --bold green) 'Passed!' (set_color normal)
                echo ""
            else
                echo Running Testcase 1:(set_color --bold red) 'Failed' (set_color normal)
                echo " Expected                              My Output"
                echo "```````````                           ````````````"
                diff -y -W 70 sample_output_1.txt my_output_1.txt
                echo ""
            end
        end
        if test -f sample_input_2.txt;
            ./$argv.out <sample_input_2.txt> my_output_2.txt
            if cmp -s sample_output_2.txt my_output_2.txt;
                echo Running Testcase 2:(set_color --bold green) 'Passed!' (set_color normal)
                echo ""
            else
                echo Running Testcase 2:(set_color --bold red) 'Failed' (set_color normal)
                echo " Expected                              My Output"
                echo "```````````                           ````````````"
                diff -y -W 70 sample_output_2.txt my_output_2.txt
                echo ""
            end
        end
        if test -f sample_input_3.txt;
            ./$argv.out <sample_input_3.txt> my_output_3.txt
            if cmp -s sample_output_3.txt my_output_3.txt;
                echo Running Testcase 3:(set_color --bold green) 'Passed!' (set_color normal)
                echo ""
            else
                echo Running Testcase 3:(set_color --bold red) 'Failed' (set_color normal)
                echo " Expected                              My Output"
                echo "```````````                           ````````````"
                diff -y -W 70 sample_output_3.txt my_output_3.txt
                echo ""
            end
        end
        if test -f sample_input_4.txt;
            ./$argv.out <sample_input_4.txt> my_output_4.txt
            if cmp -s sample_output_4.txt my_output_4.txt;
                echo Running Testcase 4:(set_color --bold green) 'Passed!' (set_color normal)
                echo ""
            else
                echo Running Testcase 4:(set_color --bold red) 'Failed' (set_color normal)
                echo " Expected                              My Output"
                echo "```````````                           ````````````"
                diff -y -W 70 sample_output_4.txt my_output_4.txt
                echo ""
            end
        end
    end

    function checkfile 
        if test -f $argv;
            echo (set_color --bold green)"File Exist."
        else
            echo (set_color --bold red)"File Doesn't Exist."
        end
    end

    
    # alias deb-main='echo "[ABHIJAY_DEBUG MODE] Compiling main.cpp with G++17..." && g++ -DABHIJAY_DEBUG main.cpp -o main && ./main'


    # SRM and Academics:

    alias srm='cd /Users/abhijayrajvansh/Desktop/4th-Sem-Academics'
    alias academics='srm'
    alias tt='cd /Users/abhijayrajvansh/Desktop/4th-Sem-Academics && open 4th-sem-TT.png'
    alias ct3='cd /Users/abhijayrajvansh/Desktop/4th-Sem-Academics && open ct3-schedule.pdf'

    #Programming environment:

    alias programming-environment='desktop && cd programming-environment'
    alias template='cd /Users/abhijayrajvansh/Desktop/programming-environment/Templates'
    alias abhijayrajvansh.cpp='template && prg abhijayrajvansh.cpp'



    #Development:

    function dev # short form of development
        echo "Launching" $argv "DIR In VS Code Editor"
        echo "Grab some liquid & stay hydrated :)"  
        echo ""
        cd $argv
        code .
    end

    # Fish

    function reload
        echo "[Previous Direcotry:]"
        pwd
        fish
    end

    # function fish_prompt
    #     set -l prompt_symbol '$: '
    #     echo (set_color --bold green)'abhijay@macbook:'(set_color --bold blue)(prompt_pwd) \
    #     (set_color --bold yellow)$prompt_symbol(set_color normal) 
    # end

    function fish_prompt
        set -l prompt_symbol '$: '
        echo (set_color --bold green)'abhijay@macbook:'(set_color --bold blue)(prompt_pwd) \
        (set_color --bold yellow)$prompt_symbol(set_color normal)
    end

    function clean
        rm $argv
        touch $argv
    end

    function clear-dir
        rm -r $argv
        mkdir $argv
    end

    function prg
        # code ./contest-library
        touch $argv      
        code $argv
    end

    # github
    alias push='git-push "updating files & debugging"'
    alias latenight='git-push "Late-Night-Commits"'

    function git-push
        rm .DS_Store
        rm *.out
        rm debug_error.txt
        git add .
        git commit -m "$argv"
        git push
    end

    function push-fish
        echo [Previous Path Direcotry]
        echo " "
        echo
        echo "Copying config.fish to github fish repo..."
        echo
        cp -r /Users/abhijayrajvansh/.config/fish /Users/abhijayrajvansh/desktop/programming-environment
        programming-environment
        git-push "Updating Fish With Programming Environment 💙"    
        echo
        echo "Successfully Completed ✅"
    end

    function push-contest-library
        echo [Previous Path Direcotry]
        echo " "
        cd /Users/abhijayrajvansh/Desktop/competitive-programming/Contest-Library
        git-push "Updating more programs for CP"
    
    end

    function push-1000
        rm *.out
        rm my_output_1.txt
        rm my_output_2.txt
        rm my_output_3.txt
        rm my_output_4.txt
        rm debug.txt
        git-push "Upsolving Rating Level 1000"

    end


    # Creating files.cpp :-
    alias code-A='touch a.cpp && code a.cpp'
    alias code-B='touch a.cpp b.cpp && code a.cpp b.cpp'
    alias code-C='touch a.cpp b.cpp c.cpp && code a.cpp b.cpp c.cpp'
    alias code-D='touch a.cpp b.cpp c.cpp d.cpp && code a.cpp b.cpp c.cpp d.cpp'
    alias code-E='touch a.cpp b.cpp c.cpp d.cpp e.cpp && code a.cpp b.cpp c.cpp d.cpp e.cpp'
    # Creating files with pre texts in it:
    #echo "some text you want" >> "filename.extension"

    alias iosetup='touch input.txt output.txt debug.txt && code input.txt output.txt debug.txt'
    

    #Launching folder..
    alias fish-config='cd && cd /Users/abhijayrajvansh/.config/fish && code config.fish'
    alias fish-c='fish-config'
    alias zsh-config='cd && code .zshrc'
    alias desktop='cd && cd Desktop/'
    alias downloads='cd /Users/abhijayrajvansh/Downloads'
    alias personal-softwares='cd /Users/abhijayrajvansh/Personal-Softwares'

    alias books='cd /Users/abhijayrajvansh/Desktop/CP-Stuffs/books'
    alias config='cd ~/.config/'

    #System in build:
    alias movies='cd && cd movies'

    #Development:
    alias development='desktop && cd development'
    alias projects='development && cd projects'
    alias social-engineering='development && cd Social-Engineering'

    # Programming - Languages
    alias lang='cd /Users/abhijayrajvansh/Desktop/programming-languages'

    function push-lang
        lang
        git-push "Updaying programming languages and tech stack with modules 🚀"
        echo
        echo "Successfully Completed ✅"
    end



    #Competitive-Programming:-
    alias competitive-programming='cd /Users/abhijayrajvansh/Desktop/Competitive-Programming'
    alias comp='competitive-programming'
    alias contest-library='cd /Users/abhijayrajvansh/Desktop/contest-library'

    function push-library
        contest-library
        git-push "Adding More Algorithms && Data Structures 🚀"
        echo ""
        echo "Successfully Completed ✅"
    end


    alias stl='cd /Users/abhijayrajvansh/desktop/competitive-programming/STL'
    alias containers='cd /Users/abhijayrajvansh/desktop/competitive-programming/containers'
    alias greedy='cd /Users/abhijayrajvansh/Desktop/competitive-programming/GREEDY'

    alias searching-sorting='cd /Users/abhijayrajvansh/Desktop/competitive-programming/SEARCHING-AND-SORTING'
    
    
    #DataStructures-Algorithms:-
    alias dsa='desktop && cd DataStructures-Algorithms'
    alias recursion='dsa && cd recursion'
    alias arrays='dsa && cd ARRAYS'

    # Github all push and commit && backup repo
    function push-dsa
        echo "[Previous Working Dir]"
        pwd
        echo ""
        dsa
        git-push "Adding New Data-Structures && Algorithms ✅"
        echo
        echo "Successfully Completed ✅, Lesssgoo 🚀"
    end

    

    #Launching Apps:
    alias cryptobot='projects && cd Cryptocurrency-Price-Bot && zsh bot-intro.sh'
    alias BIDcalulator='projects && cd Cryptocurrency-Biding-Calculator && zsh app-intro.sh && deb app.py' 
    alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
    alias main='desktop && code . && prg main.cpp'
    alias codepy='cd /Users/abhijayrajvansh/Desktop/programming-languages/python && code app.py'

    #Downloading Files:
    alias download-cryptobot='projects && git clone https://github.com/abhijayrajvansh/Cryptocurrency-Price-Bot.git'
    alias download-BIDcalulator='projects && git clone https://github.com/abhijayrajvansh/Cryptocurrency-Biding-Calculator.git'


    # Whereis commands:-
    alias whereisfish='echo "/Users/abhijayrajvansh/.config/fish"'
    
    #Customization:

    # agrument Desktop : capital 1st letter
    alias showdesktop='defaults write com.apple.finder CreateDesktop true;killall Finder'
    alias hidedesktop='defaults write com.apple.finder CreateDesktop false;killall Finder'

    # function hide
    #     defaults write com.apple.finder Create$argv false
    #     killall Finder
    # end

    # function show
    #     defaults write com.apple.finder CreateDesktop true
    #     killall Finder
    # end


    # Startup commands:
    echo "** Welcome Back Mr.Rajvansh **"
    desktop
end
