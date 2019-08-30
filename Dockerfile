FROM maven:3.6.1-jdk-8 

LABEL repository="http://github.com/srt32/revert"
LABEL homepage="http://github.com/srt32/revert"
LABEL "com.github.actions.name"="Automatic Revert"
LABEL "com.github.actions.description"="Automatically revert a commit on '/revert' comment"
LABEL "com.github.actions.icon"="git-pull-request"
LABEL "com.github.actions.color"="red"

RUN apt-get update && apt-get install -y \
    jq


ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
