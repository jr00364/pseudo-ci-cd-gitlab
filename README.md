pseudo-ci-cd-gitlab
a pseudo CI/CD pipeline one-click deployment code for hello world application.

This is project that I put together very quickly is my first attempt working with a gitlab CI but doing so was fun. I hope to hear back from the team, Jonathan

It is important to note:

I made this repo originally in the gitlab free trial and move it to github so some things make more sense in gitlab.
I opted to use a helmchart as code tool for my deployment mechanism as its more interesting than using plain kubectl commands, however I am very efficient using kubectl
Although I'm using helm chart as code tool I didnt create a helm chart as it is a pseudo pipeline and couldn't run anyway
I assume that this would be deployed to Kubernetes
The secrets are assumed to be setup in vault.
