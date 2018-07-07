## Continuous Deployment to GitHub Pages

**WARNING!** This is a post about JavaScript tooling.  Continue reading at your own risk.



You run: `git push`

Computers do the rest.



There are a lot of blog posts that describe how to do this, but they all involve a lot of copy-paste scripts.  Some of them are also dangerous, and can leak your secret keys if used improperly.

For example, our `.travis.yml` can look like this:

And our `package.json` looks like this:



## push-dir

`push-dir` is a tool Ryan Tsao and I created.




## git-credential-env

`git-credential-env` is a
