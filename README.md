# Docker Image for Computer Programs for Seismology

This is Docker Image prepared for using Computer Programs for Seismology. In order to use it you have to:

1. Have installed Docker. Follow the official instructions to install Docker Community Edition (CE). You can find it here: https://docs.docker.com/install/.
2. Run command 
   ```shell
    $ docker run -it -p 9988:9988 heavelock/computerprograminsinseismology:experimental
   ```
   #### That's it!

Docker will download the prepared image and then run it. It will automatically run Jupyter Lab and expose it's interface to your localhost at port 9988. In order to connect to it you have open your browser and connect to `localhost:9988/{Token_that_jupyter_printed_ out_after_executing_last_command}`. From there you can open a terminal or use a Jupyter Lab as it was intended.

If you want to use some of your local resources you have to use a `-v` option as follows
   ```shell
    $ docker run -it -v /home/user/some/local/directory:/directory/you_want_to_have/in_docker -p 9988:9988 heavelock/computerprograminsinseismology:experimental
   ```

