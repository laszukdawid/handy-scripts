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
