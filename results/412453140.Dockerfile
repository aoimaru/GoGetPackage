[app/sources/412453140.Dockerfile]
digraph {
  "sha256:36142714efa42dd82b85f9ae6da5d7d7ea758547bd0c79b73667ef5573814717" [label="docker-image://docker.io/library/ubuntu:precise@sha256:18305429afa14ea462f810146ba44d4363ae76e4c8dfc38288cf73aa07485005" shape="ellipse"];
  "sha256:a5241ce5e262240c0433c8f421cc2e5487faa6c89cb1b8ca6cc5ebeaec720820" [label="/bin/sh -c useradd docker \t&& mkdir /home/docker \t&& chown docker:docker /home/docker \t&& addgroup docker staff" shape="box"];
  "sha256:77cca5d5fd5c09d908366c80b8e0bff6af3199431949b68fdc150819cd11f26b" [label="/bin/sh -c apt-get update \t&& apt-get install -y --no-install-recommends \t\tpython-software-properties                 ed \t\tless \t\tlocales \t\tvim-tiny \t\twget \t\tca-certificates         && add-apt-repository -y \"ppa:marutter/rrutter\" \t&& add-apt-repository -y \"ppa:marutter/c2d4u\"         && apt-get update" shape="box"];
  "sha256:869b7df132af8137d3c2b5e8cb65c6eac41445361c73d1641e119be7fe050002" [label="/bin/sh -c echo \"en_US.UTF-8 UTF-8\" >> /etc/locale.gen \t&& locale-gen en_US.utf8 \t&& /usr/sbin/update-locale LANG=en_US.UTF-8" shape="box"];
  "sha256:1675bf4801c59d29502a19e271181c1f6f4c1fe50ab5c0277521d3207613ab3a" [label="/bin/sh -c apt-get install -y --no-install-recommends                 r-cran-littler \t\tr-base \t\tr-base-dev \t\tr-recommended                 r-cran-stringr         && echo 'options(repos = c(CRAN = \"https://cran.rstudio.com/\"), download.file.method = \"wget\")' >> /etc/R/Rprofile.site \t&& ln -s /usr/lib/R/site-library/littler/examples/install.r /usr/local/bin/install.r \t&& ln -s /usr/lib/R/site-library/littler/examples/install2.r /usr/local/bin/install2.r \t&& ln -s /usr/lib/R/site-library/littler/examples/installGithub.r /usr/local/bin/installGithub.r \t&& ln -s /usr/lib/R/site-library/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r \t&& install.r docopt \t&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds" shape="box"];
  "sha256:4c059019816301fe1eec09e0ab6d85d877685e03dcacb0cd5e4234ec9151373f" [label="sha256:4c059019816301fe1eec09e0ab6d85d877685e03dcacb0cd5e4234ec9151373f" shape="plaintext"];
  "sha256:36142714efa42dd82b85f9ae6da5d7d7ea758547bd0c79b73667ef5573814717" -> "sha256:a5241ce5e262240c0433c8f421cc2e5487faa6c89cb1b8ca6cc5ebeaec720820" [label=""];
  "sha256:a5241ce5e262240c0433c8f421cc2e5487faa6c89cb1b8ca6cc5ebeaec720820" -> "sha256:77cca5d5fd5c09d908366c80b8e0bff6af3199431949b68fdc150819cd11f26b" [label=""];
  "sha256:77cca5d5fd5c09d908366c80b8e0bff6af3199431949b68fdc150819cd11f26b" -> "sha256:869b7df132af8137d3c2b5e8cb65c6eac41445361c73d1641e119be7fe050002" [label=""];
  "sha256:869b7df132af8137d3c2b5e8cb65c6eac41445361c73d1641e119be7fe050002" -> "sha256:1675bf4801c59d29502a19e271181c1f6f4c1fe50ab5c0277521d3207613ab3a" [label=""];
  "sha256:1675bf4801c59d29502a19e271181c1f6f4c1fe50ab5c0277521d3207613ab3a" -> "sha256:4c059019816301fe1eec09e0ab6d85d877685e03dcacb0cd5e4234ec9151373f" [label=""];
}

