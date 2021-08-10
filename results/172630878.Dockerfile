[app/sources/172630878.Dockerfile]
digraph {
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" [label="docker-image://docker.io/library/debian:wheezy" shape="ellipse"];
  "sha256:82a77f02a47c4e87dff8f4cf853e35a1b0187bfa18455dbd84679995e7295881" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:393f1a1116e12d4e7d0d366c4a0204563ac3becbe5cb16a2a7a4f9784d3436a8" [label="/bin/sh -c apt-get update      --quiet     && apt-get        install          --yes          --no-install-recommends          --no-install-suggests        autoconf        automake        build-essential        libtool        nasm        subversion        wget     && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5f6e6c99b64c1644380888245d3adf3cea347e74edae8408ffaa0f3a3efed749" [label="/bin/sh -c wget http://lcamtuf.coredump.cx/soft/afl.tgz       --no-verbose       && mkdir afl-src       && tar -xzf afl.tgz -C afl-src --strip-components=1       && cd afl-src       && sed -i 's/^\\/\\/ #define USE_64BIT/#define USE_64BIT/gI' config.h       && make       && make install       && rm -rf /tmp/afl.tgz                 /tmp/afl-src" shape="box"];
  "sha256:889070735822c4189dea17342aed5350a4ec5689967ca7bd5d7b4e874b1679df" [label="/bin/sh -c svn -q co       svn://svn.code.sf.net/p/libjpeg-turbo/code/branches/1.3.x       libjpeg-turbo   && cd libjpeg-turbo   && autoreconf -fiv   && CC=/usr/local/bin/afl-gcc ./configure   && make -j`getconf _NPROCESSORS_ONLN`   && make install   && rm -rf /tmp/libjpeg-turbo" shape="box"];
  "sha256:995e269ec9ff10a1dc954d2f07628336b06eed4f6768a722749ae181585971fc" [label="mkdir{path=/data}" shape="note"];
  "sha256:aff7e6d8f2a07a3653d1105965310dc8e16edefe73479ae8e3f2c76bf36ecebb" [label="sha256:aff7e6d8f2a07a3653d1105965310dc8e16edefe73479ae8e3f2c76bf36ecebb" shape="plaintext"];
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" -> "sha256:82a77f02a47c4e87dff8f4cf853e35a1b0187bfa18455dbd84679995e7295881" [label=""];
  "sha256:82a77f02a47c4e87dff8f4cf853e35a1b0187bfa18455dbd84679995e7295881" -> "sha256:393f1a1116e12d4e7d0d366c4a0204563ac3becbe5cb16a2a7a4f9784d3436a8" [label=""];
  "sha256:393f1a1116e12d4e7d0d366c4a0204563ac3becbe5cb16a2a7a4f9784d3436a8" -> "sha256:5f6e6c99b64c1644380888245d3adf3cea347e74edae8408ffaa0f3a3efed749" [label=""];
  "sha256:5f6e6c99b64c1644380888245d3adf3cea347e74edae8408ffaa0f3a3efed749" -> "sha256:889070735822c4189dea17342aed5350a4ec5689967ca7bd5d7b4e874b1679df" [label=""];
  "sha256:889070735822c4189dea17342aed5350a4ec5689967ca7bd5d7b4e874b1679df" -> "sha256:995e269ec9ff10a1dc954d2f07628336b06eed4f6768a722749ae181585971fc" [label=""];
  "sha256:995e269ec9ff10a1dc954d2f07628336b06eed4f6768a722749ae181585971fc" -> "sha256:aff7e6d8f2a07a3653d1105965310dc8e16edefe73479ae8e3f2c76bf36ecebb" [label=""];
}

