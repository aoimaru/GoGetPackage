[app/sources/317629756.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:af42960b26592d2bbe13da3c75e56d5cc57d6d1247af619572d43a48a950c3f8" [label="/bin/sh -c apt-get -y update ;     apt-get install -y build-essential wget vim;     cd /root/;     wget https://github.com/anonymous2018sub/anonymous2018sub.github.io/raw/master/CVE-2004-2167/latex2rtf-1.9.15.tar.gz;     wget https://raw.githubusercontent.com/anonymous2018sub/anonymous2018sub.github.io/master/CVE-2004-2167/latex2rtf.c;     tar -xvf latex2rtf-1.9.15.tar.gz; cd latex2rtf-1.9.15/; make; make install;     cd ..; gcc -o exploit latex2rtf.c; ./exploit > poc.tex;     rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:33722908c1258589f57c5fde7bec1e5e18c2a135e5d506a019aaa82e42bcf015" [label="sha256:33722908c1258589f57c5fde7bec1e5e18c2a135e5d506a019aaa82e42bcf015" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:af42960b26592d2bbe13da3c75e56d5cc57d6d1247af619572d43a48a950c3f8" [label=""];
  "sha256:af42960b26592d2bbe13da3c75e56d5cc57d6d1247af619572d43a48a950c3f8" -> "sha256:33722908c1258589f57c5fde7bec1e5e18c2a135e5d506a019aaa82e42bcf015" [label=""];
}

