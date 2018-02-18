![build status on #master:](https://travis-ci.org/gusbocju/DIT168.svg?branch=master)

## DIT168 V18 Project: Industrial IT and Embedded Systems

The group will during the spring term of 2018 design and implement software for a mini car to drive autonomously under stable conditions. The car should be able to, in addition to self-driving, follow a line, do safe handling of intersections, pass other vehicles and park. To accomplish this the car is equipped with sensors. The project will be done in C/C++ with focus on quality assurance, effective design and testing throughout. 

### GITHUB LAYOUT:

We will be using individual branches per feature; they’ll be merged using pull requests that have to approved by at least one other group member. There shall be no direct pushes to the master branch; prototypes will only evolve by pulling completed features into the release branch. In addition to the feature branches, each contributor creates a separate branch from the feature branch for which they push their code to.

### CLONING
`$ git clone https://github.com/gusbocju/DIT168.git`

### BUILD AND DEPLOY
`$ docker build -t dit168.marble -f Dockerfile .`

(successful builds originating master will be pushed to `gusbocju/dit168.marble:latest` on Docker Hub using TravisCI)

#### SAVE AND RESTORE:
`$ docker save dit168.marble > dit168.marble.tar`\
`$ cat dit168.marble.tar | docker load`

#### RUN:
`$ docker run --rm -ti --net=host dit168.marble /opt/MARBLE`

#### DEMOS:
`$ docker run --rm -ti --net=host dit168.marble /opt/MARBLE.Networking.Demo.Sender`\
`$ docker run --rm -ti --net=host dit168.marble /opt/MARBLE.Networking.Demo.Receiver`\
\
(the receiving process has to be terminated using `docker sp` and `docker stop <container id>`)

### CONTRIBUTING:
Please read the [CONTRIBUTING.md](DIT168/CONTRIBUTING.md) on how to contribute to this project.

### LICENSE:
This project is licensed under MIT- see [LICENSE.md](DIT168/LICENSE) for more details.





