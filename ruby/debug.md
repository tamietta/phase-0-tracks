### Debug Best Practices

**Variable Names**

* Descriptive names especially helpful in cases of boolean-valued variables. Use of such variables in conditional statements made code much easier to understand.
* To determine affinity for *x*, `if likes_x ...` makes tracking of code behaviour more intuitive than `if x ...`. This is compounded when chained boolean statements are used for a condition: `if likes_x && !likes_y || needs_z` as opposed to `if x && !y || z`

**Short Code**

* The line:
> Good workflow can feel like a lot of extra effort, but that's nothing compared to the effort of spending six hours wringing your hands over your broken code. Develop the discipline to code carefully and methodically, and life will be much more pleasant."

couldn't be more true.

* The habit of iteratively testing code as you write, and making sure to write only one or a few lines of code at time before testing saves frustration later on.

**Commit Iteratively**

* Committing code regularly as a strategy to improve or debug code increments highlights another indispensible utility of Git.
* Seen in this way, a feature branch or debug branch can be a way of not just saving fully-stable, updated versions of a code, but also tracking the process building a bug-free code.

** `p` versus `puts` as Debug Statement **

* It can feel more instinctive to use `puts` to print to the console, rather than `p`, which prints code in its literal form, and returns the value. 
* This is crucial to preserving functions as return-value functions, as opposed to inadvertently turning them into side-effect functions.
* This is especially clear with code involving nested function calls, where the return value of one is critical to the invocation of another. 
