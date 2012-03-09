# Common Lisp on Heroku -- Example Project

This project is an example of how to use the [Heroku Common Lisp Buildpack](https://github.com/mtravers/heroku-buildpack-cl).  See the buildpack repository for more information and credits.

## Instructions:
First, get yourself set up with a
- [Heroku account and tools](http://devcenter.heroku.com/articles/quickstart), and
- a github account, in this example your user name is ZIPPY

Second fork this example project at github: [fork this project](/mtravers/heroku-cl-example/fork_select) (and optionally modify it with your own content).

Third clone your fork to your development machine:  

   git clone git@github.com:ZIPPY/heroku-cl-example.git

change into that directory, and using the tools heroku tools you installed early create a Heroku application that uses the CL Buildpack:

    heroku create -s cedar --buildpack http://github.com/mtravers/heroku-buildpack-cl.git

Deploy your project for the first time:

    git push heroku master

Your Heroku applications are enumerated here: https://api.heroku.com/myapps, including this one.  If you click it's name it will take you to your Lisp web app.



That's it!

## More details:

The file heroku-setup.lisp gets loaded at compile time, and needs to load any Lisp files or packages required.  

