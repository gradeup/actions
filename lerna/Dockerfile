FROM node:lts-slim

LABEL "name"="sh"
LABEL "maintainer"="Gradeup <engg+actions@gradeup.co>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="Lerna for GitHub Actions"
LABEL "com.github.actions.description"="Runs a lerna command in an Action"
LABEL "com.github.actions.icon"="terminal"
LABEL "com.github.actions.color"="gray-dark"

RUN apt-get -y update && apt-get -y install git python make g++ && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/  share/man/?? /usr/share/man/??_*
RUN npm install -g lerna

COPY LICENSE README.md THIRD_PARTY_NOTICE.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
