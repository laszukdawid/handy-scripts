Purpose
=======
What purpose? Nothing specific. Many different scripts for different purposes. Feel free to take what you like.

Summary
=======

cp_many_dir.sh
--------------
    
    **Usage:** *./cp_many_dir.sh dirname target_path cp_num*

    **Example:** *./cp_many_dir.sh test ../ 8*

    Makes many copies of directory *dirname* in specified *dir_target*.
    Each of these directories, 10 in example, will have ending $dirname-1 .. $dirname-10.

run_many.sh
-----------

    **Usage:** *./run_many.sh core_path run_num run_cmd*

    **Example:** *./run_many.sh test 10 "python hello_world.py"*

    For each *core_path* directory that ends with -n (n in 1..*run_num*) it will run *run_cmd* as a background process. Script also prints PID of each process, so it's easier to kill them.

tmux_log_less.sh
----------------

    **Usage:** *./tmux_log_less.sh core_path num_dir (log_file)*

    **Example:** *./tmux_log_less.sh . 10*

    For each log_file opens a tmux session and displays its content with *less +F* command. All sessions are organized in titled layout. Super helpful when running many process and want to see their log.

zip_many.sh
-----------

    **Usage:** *./zip_many.sh core_path num_dir ("files")*

    **Example:** *./zip_many.sh ~/test/inside-story 4 "\*.log main.py"*

    Iterates over node directories from xx-1 up to xx-num_dir and zips described files. By default it zips all files within directories. Results are stored in common root for directories.
