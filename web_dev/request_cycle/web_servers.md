### Web Servers

**What are some of the key design philosophies of the Linux operating system?**

- **Open Source**  
    + The freedom to run the program, for any purpose.

    + The freedom to study how the program works, and change it to make it do what you wish.

    + The freedom to redistribute copies so you can help your neighbor.

    + The freedom to distribute copies of your modified versions to others.

- **Users as Computer Literate**
    + Users may access and modify any part of the operating system without restriction via the command line.
    + Whilst Linux GUIS are now available, the full power of Linux remains in its command line interface.

**In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?**

- **Definition**
    + A VPS enables the simulation of a dedicated server within a shared server environment, by apportioning a specified amount of RAM to run an isolated instance of an operating system. 

- **Advantages**
    + **Privacy**: Each VPS runs an operating system sandboxed from all other VPS operating systems. Thus, access to files is limited to only the operating system on which the files are stored. 

    + **Customisation**: Settings to the operating systems may be changed, and software may be installed on the VPS, without it affecting any other VPS on the same physical machine.

    + **Control**: One VPS may be restarted in insolation to any other VPS on teh same machine.

    + **RAM Control**: The maximum amount of RAM assigned to a VPS will always be available to that VPS when needed.

**Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?**

+ The root user has read and write access to all system files.
+ In contrast, logging into Linux on a user account limits access only to a user's Home folder. Thus, unintended errors are automatically isolated only that to folder, shielding the core operating system. 
+ For commands which require root access, such as software installations, commands can gain temporary access via the `sudo` prefix, e.g. `sudo install`. 