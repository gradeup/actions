FROM node:8-slim

LABEL "name"="sh"
LABEL "maintainer"="Gradeup <engg+actions@gradeup.co>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="JS Linter for GitHub Actions"
LABEL "com.github.actions.description"="Runs linter for js in an Action"
LABEL "com.github.actions.icon"="terminal"
LABEL "com.github.actions.color"="gray-dark"

RUN apt-get -y update && apt-get -y install jq && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN cd /tmp && wget https://github.com/niksrc/pr-files/releases/download/v1.0.4/pr-files_1.0.4_Linux_x86_64.tar.gz && tar xzvf pr-files_1.0.4_Linux_x86_64.tar.gz && chmod +x pr-files && mv pr-files /usr/local/bin/. && rm *.tar.gz && cd -
COPY LICENSE README.md THIRD_PARTY_NOTICE.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
