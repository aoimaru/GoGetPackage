[app/sources/406186813.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:05a84d6649c5a046cbeb0fdf3d839efa90bdc1a44a68d0e6a707711239594cac" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         apt-utils         software-properties-common         git         curl         python-pip         wget         cpio         mkisofs         apt-transport-https \topenssh-client         ca-certificates" shape="box"];
  "sha256:720691bc2a58bd5bad3cd3357216f0db2b27407b1a72e11c00267ffffabd377a" [label="/bin/sh -c curl -fsSL https://yum.dockerproject.org/gpg | apt-key add -" shape="box"];
  "sha256:564898d649b6b040fe8cbb0b095cc2ef035d9958a1b201be45e79f3859f77b39" [label="/bin/sh -c add-apt-repository        \"deb https://apt.dockerproject.org/repo/        ubuntu-$(lsb_release -cs)        main\"" shape="box"];
  "sha256:d2fb575735ffef9c5409470c5d9cb0d28120ea5ba03e276d0dac737e64c995ce" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends     docker-engine" shape="box"];
  "sha256:aa77fbe12ba5114515c0ae58d65f9c4c7d6bb21cba6e6dfcf54f00e67ccc57f0" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:6755599711f37aea6b6e7e7d1d908c0fbcae26cdb76b57f86a978076511e8f33" [label="/bin/sh -c pip install setuptools && pip install pyyaml && pip install jinja2" shape="box"];
  "sha256:8a81d68fc1c6015bcf743104778ed95b6fd41189ba1564813fea2b2a1e65e8bb" [label="/bin/sh -c echo \"dockerd > /dev/null 2>&1 &\" | cat >> /etc/bash.bashrc" shape="box"];
  "sha256:a5539bedd835208532bfa579ff99eda5183c4073bbd0b3e20a8c12a238d8ad15" [label="sha256:a5539bedd835208532bfa579ff99eda5183c4073bbd0b3e20a8c12a238d8ad15" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:05a84d6649c5a046cbeb0fdf3d839efa90bdc1a44a68d0e6a707711239594cac" [label=""];
  "sha256:05a84d6649c5a046cbeb0fdf3d839efa90bdc1a44a68d0e6a707711239594cac" -> "sha256:720691bc2a58bd5bad3cd3357216f0db2b27407b1a72e11c00267ffffabd377a" [label=""];
  "sha256:720691bc2a58bd5bad3cd3357216f0db2b27407b1a72e11c00267ffffabd377a" -> "sha256:564898d649b6b040fe8cbb0b095cc2ef035d9958a1b201be45e79f3859f77b39" [label=""];
  "sha256:564898d649b6b040fe8cbb0b095cc2ef035d9958a1b201be45e79f3859f77b39" -> "sha256:d2fb575735ffef9c5409470c5d9cb0d28120ea5ba03e276d0dac737e64c995ce" [label=""];
  "sha256:d2fb575735ffef9c5409470c5d9cb0d28120ea5ba03e276d0dac737e64c995ce" -> "sha256:aa77fbe12ba5114515c0ae58d65f9c4c7d6bb21cba6e6dfcf54f00e67ccc57f0" [label=""];
  "sha256:aa77fbe12ba5114515c0ae58d65f9c4c7d6bb21cba6e6dfcf54f00e67ccc57f0" -> "sha256:6755599711f37aea6b6e7e7d1d908c0fbcae26cdb76b57f86a978076511e8f33" [label=""];
  "sha256:6755599711f37aea6b6e7e7d1d908c0fbcae26cdb76b57f86a978076511e8f33" -> "sha256:8a81d68fc1c6015bcf743104778ed95b6fd41189ba1564813fea2b2a1e65e8bb" [label=""];
  "sha256:8a81d68fc1c6015bcf743104778ed95b6fd41189ba1564813fea2b2a1e65e8bb" -> "sha256:a5539bedd835208532bfa579ff99eda5183c4073bbd0b3e20a8c12a238d8ad15" [label=""];
}

