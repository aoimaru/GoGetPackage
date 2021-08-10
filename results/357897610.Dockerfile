[app/sources/357897610.Dockerfile]
digraph {
  "sha256:98f7374a4f683a26323a1fadfb8dc37db44dd5c248533c50f0c9eb2f23d93f4d" [label="docker-image://docker.io/library/buildpack-deps:14.04-curl" shape="ellipse"];
  "sha256:9a05e6ed85274811601d6ddf7f84b2721d82065516cc1e8d79c61ae1f9f641a3" [label="/bin/sh -c echo 'APT::Install-Recommends \"false\";' >/etc/apt/apt.conf.d/00recommends  && echo 'APT::Install-Suggests \"false\";' >>/etc/apt/apt.conf.d/00recommends  && echo 'Acquire::http::Proxy \"http://proxy.openvidu.io:3142\";' >/etc/apt/apt.conf.d/01proxy  && echo 'Acquire::HTTP::Proxy::deb.nodesource.com \"DIRECT\";' >>/etc/apt/apt.conf.d/01proxy  && echo 'deb [arch=amd64] http://ubuntu.openvidu.io/6.7.2 trusty kms6' >/etc/apt/sources.list.d/kurento.list  && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 5AFA7A83" shape="box"];
  "sha256:9ae13a7c378aaade793a7b081df1811796f4dd0a9724b5b39d113c26d3244e06" [label="/bin/sh -c apt-get update  && apt-get install -y         build-essential         debhelper         curl         fakeroot         flex         git openssh-client         libcommons-validator-java         python         python-apt         python-debian         python-git         python-requests         python-yaml         subversion         wget                 cmake         pkg-config         openjdk-7-jdk         maven         maven-debian-helper-         jshon                 gnupg         iproute2         zip unzip  && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d5e43cce256101ffa3562059416a372f6e4d8c1e1341fb1f99be19dc0a1ed57f" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_8.x | bash -  && apt-get update  && apt-get install -y         nodejs  && apt-get clean && rm -rf /var/lib/apt/lists/*  && npm -g install bower  && npm cache clean --force" shape="box"];
  "sha256:b88ea1b463db7f778ac12002bd0f78975ef6ab3ba4e210179f5d6fbca163c209" [label="sha256:b88ea1b463db7f778ac12002bd0f78975ef6ab3ba4e210179f5d6fbca163c209" shape="plaintext"];
  "sha256:98f7374a4f683a26323a1fadfb8dc37db44dd5c248533c50f0c9eb2f23d93f4d" -> "sha256:9a05e6ed85274811601d6ddf7f84b2721d82065516cc1e8d79c61ae1f9f641a3" [label=""];
  "sha256:9a05e6ed85274811601d6ddf7f84b2721d82065516cc1e8d79c61ae1f9f641a3" -> "sha256:9ae13a7c378aaade793a7b081df1811796f4dd0a9724b5b39d113c26d3244e06" [label=""];
  "sha256:9ae13a7c378aaade793a7b081df1811796f4dd0a9724b5b39d113c26d3244e06" -> "sha256:d5e43cce256101ffa3562059416a372f6e4d8c1e1341fb1f99be19dc0a1ed57f" [label=""];
  "sha256:d5e43cce256101ffa3562059416a372f6e4d8c1e1341fb1f99be19dc0a1ed57f" -> "sha256:b88ea1b463db7f778ac12002bd0f78975ef6ab3ba4e210179f5d6fbca163c209" [label=""];
}
