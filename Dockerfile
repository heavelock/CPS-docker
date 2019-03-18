FROM continuumio/anaconda3:latest

RUN apt update \
    && apt install -y \
    make \
    gcc \
    gfortran \
    xorg-dev \
    libncurses5-dev \
    gawk \
    gv \
    wget \
    imagemagick \
    vim \
    htop 

RUN apt install -y zsh \
    && chsh -s $(which zsh) \
    && sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

RUN wget -qO-  http://www.eas.slu.edu/eqc/eqc_cps/Download/NP330.Feb-19-2019.tgz \
    | tar -xz -C / \
    && cd /PROGRAMS.330 \
    && /bin/bash ./Setup LINUX64 \
    && /bin/bash ./C  \
    && /bin/bash ./C cal

ENV PATH=${PATH}:/PROGRAMS.330/bin

RUN conda install -c conda-forge -y python==3.7 obspy scipy numpy matplotlib jupyterlab jupyter 

EXPOSE 9988

ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root", "--no-browser", "--port=9988"]

