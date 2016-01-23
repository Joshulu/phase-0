How does tracking and adding changes make developers' lives easier?
  It is like looking at a virtual to-do list.  You can see what you've changed and what you need to.
  
What is a commit?
  A commit is a version of your project that you've saved.  Usually it is in a working condition that you can return to if any editing you've done has changed the way it works.
  
What are the best practices for commit messages?
  It is preferred to -v to open up a text editor to make a full description.  The first line should be short and concise.  The first paragraph should also be short at about 50 characters long.  Then you may type a complete description if needed.
  
What does the HEAD^ argument mean?
  HEAD^ means the previous commit as oppossed to the current one.
  
What are the 3 stages of a git change and how do you move a file from one stage to the other?
  Grabing a project from GitHub by using "git clone url".  Edit the project as you desire and add them using "git add files/directories-to-add".  Added files/directories can be commited using "git commit -m "Message here""
  
Write a handy cheatsheet of the commands you need to commit your changes?
  git add files/directories
  git commit -m
What is a pull request and how do you create and merge one?
  A pull request is a way to put your work up to GitHub.  You create one by 'git push origin branch-name' and on GitHub.com you then can access pull requests and merge them to the master
Why are pull requests preferred when working with teams?
  You can review the code before finalizing the request
  
This challenge took about an hour and a half to complete