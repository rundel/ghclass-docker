FROM rocker/r-ver:latest

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
 && apt-get install -y libcurl4-openssl-dev zlib1g-dev libssl-dev \
                       libssh2-1-dev git \
 && install2.r remotes styler \
 && installGithub.r rundel/ghclass \
 && rm -rf /tmp/* \
 && apt-get remove --purge -y $BUILDDEPS \
 && apt-get autoremove -y \
 && apt-get autoclean -y \
 && rm -rf /var/lib/apt/lists/*

CMD ["R"]
