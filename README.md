# Docker Image for Computer Programs in Seismology

## Disclaimer
The Computer Programs in Seismology were written by Dr. Robert Hermann (Saint Louis University) and can be downloaded from http://www.eas.slu.edu/eqc/eqccps.html. Dr. Hermann can be reached at herrmarb@slu.edu.

## What is it?
Docker is a virtualization method that makes it extremely easy to share an image of machine with others and run it in different environments. Thanks to this method it is possible to skip all the hassle with installation of compilers, compiling code, debugging, solving problems. It was already done, now it's time to use it. 

## Running the image
This is Docker Image prepared for using Computer Programs for Seismology. In order to use it you have to:

1. Have installed Docker. Follow the official instructions to install Docker Community Edition (CE). You can find it here: https://docs.docker.com/install/. For some more detail see further part of this document.
2. Run command 
   ```shell
    $ docker run --rm -it --name CPS_docker -p 9988:9988 heavelock/computerprograminsinseismology:experimental
   ```
   ##### That's it!

## Explanation 
### Connecting to Jupyter Lab
Docker will download the prepared image and run it. The image starts automatically with Jupyter Lab that's interface will be exposed to your localhost at port 9988. In order to connect to it you have open your browser and connect to `localhost:9988/{Token_that_jupyter_printed_ out_after_executing_last_command}`. From there you can open a terminal or use a Jupyter Lab as it originally was intended. CPS 3.30 are fully compiled and added to Path environmental variable. You can freely use it from the terminal.

### Connecting to machine's bash
If you prefer to work with standard bash of the machine you can easily do it. After running the container, move to another instance of your local shell and execute command:
```shell
$ docker exec -it CPS_docker /bin/bash
```

It will automatically connect you to virtual machine's bash and allow you to operate as a root.

###### ZSH
If you prefer ZSH over bash, it is also installed on the image together with Oh-My-ZSH. In order to open it, just run 
```shell
$ docker exec -it CPS_docker zsh
```

### Data Persistence and Data manipulation!
By default data saved on Docker Container are not persistent!

In order to manipulate data and save results for later you have to mount an external volume to the image. You  need to use a `-v` option as follows
   ```shell
    $ docker run --rm -it --name CPS_docker -v /home/user/some/local/directory:/directory/you_want_to_have/in_docker -p 9988:9988 heavelock/computerprograminsinseismology:experimental
   ```

It will give an access to provided directory from within the docker instance and make everything save there continue existing after closing docker container.

### Python on the image
Image has installed Obspy, Numpy, Scipy, Matplotlib and few more libraries through standard miniconda3 installation. You can manage it through standard `conda` command. 

### Running on Windows
In order to run docker on Windows you need to install Docker Desktop for Windows. It can be downloaded from [here](https://hub.docker.com/editions/community/docker-ce-desktop-windows).

After installation of Docker Desktop, all commands mentioned before can be executed in terminal such as `cmd` or `PowerShell`. 

I didn't test this approach yet.

### Running on Mac
In order to run docker on Mac you need to install Docker Desktop for Mac. It can be downloaded from [here](https://hub.docker.com/editions/community/docker-ce-desktop-mac).

After installation of Docker Desktop, all commands mentioned before can be executed in terminal.

I'm not a Mac user, give me a hint if this approach works.

## Computer Programs in Seismology
The image is based on Computer Programs in Seismology 3.30, released on 2019.02.19. It can be downloaded from here http://www.eas.slu.edu/eqc/eqccps.html. Software is being developed by Dr. Robert Herrmann who can be reached at herrmarb@slu.edu.