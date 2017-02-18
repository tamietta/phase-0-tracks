# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
    - Version control enables the backup and tracking of changes made to a file or folder. 
    - In software development, version controls helps to identify and isolate errors caused by bugs, in addition to allowing the simultaneous development of updates or features without it affecting the main, stable, working code base. 
* What is a branch and why would you use one?
    - Branches are essentially pointers from a specific snapshot of the main code base, which starts a new line of commit history, completely independent from the commit history of the core code base going forwards.
    - Branches allow experimentation in software development, which is isolated from inadvertently affecting the stability of the core code base.
* What is a commit? What makes a good commit message?
    - A commit is the creation of a new snapshot of the state of a working directory. 
    - Commit messages should be clear and comprehensive in explaining the changes made between the previous and current commit.
* What is a merge conflict?
    - A merge conflict concurs when git is presented with two sets of changes, which are compatible with one another. An example would be a snapshot recording a modified file, and another snapshot showing that file deleted. Merge conflicts must be resolved by user intervention.