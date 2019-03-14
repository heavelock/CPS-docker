# Docker Image for Computer Programs in Seismology

### Warning
This project is a playground project. The Computer Programs in Seismology were written by Dr. Robert Hermann (Saint Louis University) and can be downloaded through http://www.eas.slu.edu/eqc/eqccps.html. Dr. Hermann can be reached at herrmarb@slu.edu.

## Instructions
This is Docker Image prepared for using Computer Programs for Seismology. In order to use it you have to:

1. Have installed Docker. Follow the official instructions to install Docker Community Edition (CE). You can find it here: https://docs.docker.com/install/.
2. Run command 
   ```shell
    $ docker run -it -p 9988:9988 heavelock/computerprograminsinseismology:experimental
   ```
   #### That's it!

### Explanation 
Docker will download the prepared image and run it. It will automatically start with Jupyter Lab that will have exposed its interface to your localhost at port 9988. In order to connect to it you have open your browser and connect to `localhost:9988/{Token_that_jupyter_printed_ out_after_executing_last_command}`. From there you can open a terminal or use a Jupyter Lab as it originally was intended. CPS 3.30 are fully compiled and added to Path environmental variable. You can freely use it from the terminal.

Image has installed Obspy, Numpy, Scipy, Matplotlib and few more libraries through standard miniconda3 installation. You can manage it through standard `conda` command. 

If you prefer to use ZSH over standard bash, image has installed ZSH together with Oh-My-ZSH. Just open terminal and type `zsh` to run it.

### Connecting with local resources
If you want to use some of your local resources you have to use a `-v` option as follows
   ```shell
    $ docker run -it -v /home/user/some/local/directory:/directory/you_want_to_have/in_docker -p 9988:9988 heavelock/computerprograminsinseismology:experimental
   ```
