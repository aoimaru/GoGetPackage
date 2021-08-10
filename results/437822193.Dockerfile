[app/sources/437822193.Dockerfile]
digraph {
  "sha256:a2ee2b563f72d08a80b1057cce0fd71ae31a2514b78648a1c446c823bc6dc736" [label="docker-image://docker.io/library/debian:stable" shape="ellipse"];
  "sha256:e35d632698016e97be0a9a3e52360cc86c4a837213afb4f348518e0d7c26a56f" [label="/bin/sh -c apt-get update -qq -o Acquire::Languages=none     && env DEBIAN_FRONTEND=noninteractive apt-get install         -yqq --no-install-recommends -o Dpkg::Options::=--force-unsafe-io         build-essential debhelper devscripts equivs lsb-release libparse-debianchangelog-perl         python python-setuptools python-pip python-dev         python-sphinx python-mock dh-exec dh-python python-sphinx-rtd-theme     && apt-get clean && rm -rf \"/var/lib/apt/lists\"/*" shape="box"];
  "sha256:33db00fb6d3ff4d735822edf8262cc4f6898dad1dbf883d3cd1fe2742cd451e7" [label="mkdir{path=/dpkg-build}" shape="note"];
  "sha256:43591e3701c9ef2eaa5e9559ef63e582a584b5937f2383e44883b48fdeb2b0db" [label="local://context" shape="ellipse"];
  "sha256:c87debea606dd23265ee473958aaa5d8d79026e948b724a96b875355c149150f" [label="copy{src=/, dest=/dpkg-build/}" shape="note"];
  "sha256:607315fd48af169e72467ae0fb029178ffd4df51f9de023c140c4f545b61d258" [label="/bin/sh -c sed -i -re \"1s/..unstable/~$(lsb_release -cs)) $(lsb_release -cs)/\" debian/changelog     && dpkg-buildpackage -us -uc -b && mkdir -p /dpkg && cp -pl /dh-virtualenv[-_]* /dpkg     && dpkg-deb -I /dpkg/dh-virtualenv_*.deb" shape="box"];
  "sha256:1662b70629a19c4307635274407ec58d98c1cd3c53633af7eacb9d6fcf879ab9" [label="sha256:1662b70629a19c4307635274407ec58d98c1cd3c53633af7eacb9d6fcf879ab9" shape="plaintext"];
  "sha256:a2ee2b563f72d08a80b1057cce0fd71ae31a2514b78648a1c446c823bc6dc736" -> "sha256:e35d632698016e97be0a9a3e52360cc86c4a837213afb4f348518e0d7c26a56f" [label=""];
  "sha256:e35d632698016e97be0a9a3e52360cc86c4a837213afb4f348518e0d7c26a56f" -> "sha256:33db00fb6d3ff4d735822edf8262cc4f6898dad1dbf883d3cd1fe2742cd451e7" [label=""];
  "sha256:33db00fb6d3ff4d735822edf8262cc4f6898dad1dbf883d3cd1fe2742cd451e7" -> "sha256:c87debea606dd23265ee473958aaa5d8d79026e948b724a96b875355c149150f" [label=""];
  "sha256:43591e3701c9ef2eaa5e9559ef63e582a584b5937f2383e44883b48fdeb2b0db" -> "sha256:c87debea606dd23265ee473958aaa5d8d79026e948b724a96b875355c149150f" [label=""];
  "sha256:c87debea606dd23265ee473958aaa5d8d79026e948b724a96b875355c149150f" -> "sha256:607315fd48af169e72467ae0fb029178ffd4df51f9de023c140c4f545b61d258" [label=""];
  "sha256:607315fd48af169e72467ae0fb029178ffd4df51f9de023c140c4f545b61d258" -> "sha256:1662b70629a19c4307635274407ec58d98c1cd3c53633af7eacb9d6fcf879ab9" [label=""];
}

