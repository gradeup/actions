FROM node:8-slim

LABEL "name"="sh"
LABEL "maintainer"="Gradeup <engg+actions@gradeup.co>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="XO for GitHub Actions"
LABEL "com.github.actions.description"="Runs one or more xo commands in an Action"
LABEL "com.github.actions.icon"="terminal"
LABEL "com.github.actions.color"="gray-dark"

RUN npm install -g xo

COPY LICENSE README.md THIRD_PARTY_NOTICE.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
