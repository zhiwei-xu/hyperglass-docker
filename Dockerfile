FROM python:3.8-bullseye

USER root

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - \
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt update && apt install -y nodejs yarn \
    && pip3 install hyperglass

RUN pip3 uninstall asyncssh -y \
    && pip3 install -Iv asyncssh==2.8.1

CMD ["hyperglass", "start", "--build"]
