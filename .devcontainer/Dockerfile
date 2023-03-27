FROM ubuntu:latest

# install additional components for easier
# Default powerline10k theme, no plugins installed
RUN apt-get update
RUN apt install -y wget
RUN apt install -y git
RUN apt install sudo
RUN apt install make
RUN apt install -y sqlite3
RUN apt install -y python3
RUN apt install -y python3.10-venv
RUN apt install -y python3-pip
RUN apt install -y time
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.5/zsh-in-docker.sh)"
RUN echo "alias workon='source .venv/bin/activate'" >> ~/.zshrc
RUN echo "alias mkvirtualenv='python3 -m venv --prompt . .venv --clear --upgrade-deps && workon'" >> ~/.zshrc
RUN echo "alias python=python3" >> ~/.zshrc
RUN echo "alias pip=pip3" >> ~/.zshrc

