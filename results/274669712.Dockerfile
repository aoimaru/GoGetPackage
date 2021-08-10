[app/sources/274669712.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:b43c51916b656d45b3ad3cebfb894af56144a2bbf01e3b5adedb7b0f28ef98a8" [label="/bin/sh -c apt-get update  && apt-get install -qq -y --no-install-recommends \t  autoconf \t  ca-certificates \t  ccache \t  cmake \t  cpio \t  file \t  g++-4.8 \t  gcc-4.8 \t  git \t  libasound2-dev \t  libcups2-dev \t  libdwarf-dev \t  libelf-dev \t  libfontconfig1-dev \t  libfreetype6-dev \t  libnuma-dev \t  libx11-dev \t  libxext-dev \t  libxrender-dev \t  libxt-dev \t  libxtst-dev \t  make \t  pkg-config       software-properties-common \t  ssh \t  unzip \t  wget \t  zip  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0c47989daa432a1b1fc2f12f59daeb22be5a0f7c4c4b04e172be53ffa98fc107" [label="/bin/sh -c apt-get update  && apt-get install -qq -y --no-install-recommends \t  less \t  vim  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1f383a11d60fb11d4fb8d440c57f11a36ede836e3436a632636b61e0b4b2b5ca" [label="/bin/sh -c ln -s gcc-4.8 /usr/bin/cc  && ln -s gcc-4.8 /usr/bin/gcc  && ln -s g++-4.8 /usr/bin/c++  && ln -s g++-4.8 /usr/bin/g++" shape="box"];
  "sha256:bddee883754c602a091ac632eccebbf6fd095ed8337ca78469f56599e6e22c17" [label="/bin/sh -c cd /root  && wget https://sourceforge.net/projects/freemarker/files/freemarker/2.3.8/freemarker-2.3.8.tar.gz/download -O freemarker.tar.gz  && tar -xzf freemarker.tar.gz freemarker-2.3.8/lib/freemarker.jar --strip=2  && rm -f freemarker.tar.gz" shape="box"];
  "sha256:072768a8bb7c486875caaff769d9aebbd58c1a1d1a07472c261f7f794fc0c817" [label="/bin/sh -c cd /root  && wget https://api.adoptopenjdk.net/openjdk8-openj9/releases/ppc64le_linux/latest/binary -O bootjdk8.tar.gz  && tar -xzf bootjdk8.tar.gz  && rm -f bootjdk8.tar.gz  && mv $(ls | grep -i jdk) bootjdk8" shape="box"];
  "sha256:f8c009cbf06661534f60c34166ac468ea2e09e8da6be52ae99add2edb32655ae" [label="mkdir{path=/root}" shape="note"];
  "sha256:8d15d972b77fbec5380de95eb3e2a19ad7f2059ca28ab62bb3b8b00a06947402" [label="sha256:8d15d972b77fbec5380de95eb3e2a19ad7f2059ca28ab62bb3b8b00a06947402" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:b43c51916b656d45b3ad3cebfb894af56144a2bbf01e3b5adedb7b0f28ef98a8" [label=""];
  "sha256:b43c51916b656d45b3ad3cebfb894af56144a2bbf01e3b5adedb7b0f28ef98a8" -> "sha256:0c47989daa432a1b1fc2f12f59daeb22be5a0f7c4c4b04e172be53ffa98fc107" [label=""];
  "sha256:0c47989daa432a1b1fc2f12f59daeb22be5a0f7c4c4b04e172be53ffa98fc107" -> "sha256:1f383a11d60fb11d4fb8d440c57f11a36ede836e3436a632636b61e0b4b2b5ca" [label=""];
  "sha256:1f383a11d60fb11d4fb8d440c57f11a36ede836e3436a632636b61e0b4b2b5ca" -> "sha256:bddee883754c602a091ac632eccebbf6fd095ed8337ca78469f56599e6e22c17" [label=""];
  "sha256:bddee883754c602a091ac632eccebbf6fd095ed8337ca78469f56599e6e22c17" -> "sha256:072768a8bb7c486875caaff769d9aebbd58c1a1d1a07472c261f7f794fc0c817" [label=""];
  "sha256:072768a8bb7c486875caaff769d9aebbd58c1a1d1a07472c261f7f794fc0c817" -> "sha256:f8c009cbf06661534f60c34166ac468ea2e09e8da6be52ae99add2edb32655ae" [label=""];
  "sha256:f8c009cbf06661534f60c34166ac468ea2e09e8da6be52ae99add2edb32655ae" -> "sha256:8d15d972b77fbec5380de95eb3e2a19ad7f2059ca28ab62bb3b8b00a06947402" [label=""];
}

