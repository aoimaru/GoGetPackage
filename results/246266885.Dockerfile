[app/sources/246266885.Dockerfile]
digraph {
  "sha256:2602797ea67f298e18e18d51f2ccfd37239f15d4f16a9cea4e3aae86a4429df7" [label="docker-image://docker.io/library/python:3.7-alpine3.9" shape="ellipse"];
  "sha256:cf2aeb18ffe87176202c1c9b084d7924deb30b04fe80a168965a4e84b3a8586f" [label="local://context" shape="ellipse"];
  "sha256:be3bfa88150fa041aa3129b8fbbc8245e8726be99a4af23063b9735da97403c5" [label="copy{src=/requirements.txt, dest=/tmp/requirements.txt}" shape="note"];
  "sha256:632b972592ee1897a71a8e55b2b2af16c35ccda5705ce591de7ab3fcf3196696" [label="copy{src=/entry_point.sh, dest=/opt/bin/entry_point.sh}" shape="note"];
  "sha256:f898dc795f40631de6758ce64aa799400569845098a911debf5afaac2b8d025e" [label="/bin/sh -c apk update ;    apk add --no-cache ${DEPS} ;    pip install --no-cache-dir -r /tmp/requirements.txt ;    wget -q https://github.com/mozilla/geckodriver/releases/download/v0.24.0/geckodriver-v0.24.0-linux64.tar.gz ;    tar -C /usr/bin/ -xf geckodriver-*.tar.gz ;    apk info -vv | sort ;    pip freeze ;    rm -rf /var/cache/apk/* /tmp/requirements.txt /geckodriver-*.tar.gz" shape="box"];
  "sha256:2d8919a580e91476192458491e6d922568af2b56a17da85c0dc0b1c50cec3e11" [label="sha256:2d8919a580e91476192458491e6d922568af2b56a17da85c0dc0b1c50cec3e11" shape="plaintext"];
  "sha256:2602797ea67f298e18e18d51f2ccfd37239f15d4f16a9cea4e3aae86a4429df7" -> "sha256:be3bfa88150fa041aa3129b8fbbc8245e8726be99a4af23063b9735da97403c5" [label=""];
  "sha256:cf2aeb18ffe87176202c1c9b084d7924deb30b04fe80a168965a4e84b3a8586f" -> "sha256:be3bfa88150fa041aa3129b8fbbc8245e8726be99a4af23063b9735da97403c5" [label=""];
  "sha256:be3bfa88150fa041aa3129b8fbbc8245e8726be99a4af23063b9735da97403c5" -> "sha256:632b972592ee1897a71a8e55b2b2af16c35ccda5705ce591de7ab3fcf3196696" [label=""];
  "sha256:cf2aeb18ffe87176202c1c9b084d7924deb30b04fe80a168965a4e84b3a8586f" -> "sha256:632b972592ee1897a71a8e55b2b2af16c35ccda5705ce591de7ab3fcf3196696" [label=""];
  "sha256:632b972592ee1897a71a8e55b2b2af16c35ccda5705ce591de7ab3fcf3196696" -> "sha256:f898dc795f40631de6758ce64aa799400569845098a911debf5afaac2b8d025e" [label=""];
  "sha256:f898dc795f40631de6758ce64aa799400569845098a911debf5afaac2b8d025e" -> "sha256:2d8919a580e91476192458491e6d922568af2b56a17da85c0dc0b1c50cec3e11" [label=""];
}

