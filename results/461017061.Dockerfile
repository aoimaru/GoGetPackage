[app/sources/461017061.Dockerfile]
digraph {
  "sha256:446d41895526d7d89dd4713317621101e94c623c0fa16bf6ce5dd9d16bbfa419" [label="docker-image://docker.io/library/ubuntu:14.04.5" shape="ellipse"];
  "sha256:e9a175b8fe23d069f3097007ec0a9a05e32ff502cc2720f32dedd79729eb4151" [label="/bin/sh -c set -ex     && echo 'Acquire::CompressionTypes::Order:: \"gz\";' > /etc/apt/apt.conf.d/99use-gzip-compression     && apt-get update     && apt install -y apt-transport-https     && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF     && echo \"deb https://download.mono-project.com/repo/ubuntu stable-trusty main\" | tee /etc/apt/sources.list.d/mono-official-stable.list     && apt-get update     && apt-get install software-properties-common -y --no-install-recommends     && apt-add-repository ppa:git-core/ppa     && apt-get update     && apt-get install git=1:2.* -y --no-install-recommends     && git version     && apt-get install -y --no-install-recommends openssh-client=1:6.6*     && mkdir ~/.ssh     && touch ~/.ssh/known_hosts     && ssh-keyscan -t rsa,dsa -H github.com >> ~/.ssh/known_hosts     && ssh-keyscan -t rsa,dsa -H bitbucket.org >> ~/.ssh/known_hosts     && chmod 600 ~/.ssh/known_hosts     && apt-get install -y --no-install-recommends        wget=1.15-* python=2.7.* python2.7-dev=2.7.* fakeroot=1.20-* ca-certificates        tar=1.27.* gzip=1.6-* zip=3.0-* autoconf=2.69-* automake=1:1.14.*        bzip2=1.0.* file=1:5.14-* g++=4:4.8.* gcc=4:4.8.* imagemagick=8:6.7.*        libbz2-dev=1.0.* libc6-dev=2.19-* libcurl4-openssl-dev=7.35.* libdb-dev=1:5.3.*        libevent-dev=2.0.* libffi-dev=3.1~* libgeoip-dev=1.6.* libglib2.0-dev=2.40.*        libjpeg-dev=8c-* libkrb5-dev=1.12+* liblzma-dev=5.1.*        libmagickcore-dev=8:6.7.* libmagickwand-dev=8:6.7.* libmysqlclient-dev=5.5.*        libncurses5-dev=5.9+* libpng12-dev=1.2.* libpq-dev=9.3.* libreadline-dev=6.3-*        libsqlite3-dev=3.8.* libssl-dev=1.0.* libtool=2.4.* libwebp-dev=0.4.*        libxml2-dev=2.9.* libxslt1-dev=1.1.* libyaml-dev=0.1.* make=3.81-*        patch=2.7.* xz-utils=5.1.* zlib1g-dev=1:1.2.* unzip=6.0-* curl=7.35.*        e2fsprogs=1.42.* iptables=1.4.* xfsprogs=3.1.* xz-utils=5.1.*        mono-devel less=458-* groff=1.22.* liberror-perl=0.17-*        asciidoc=8.6.* build-essential=11.* bzr=2.6.* cvs=2:1.12.* cvsps=2.1-* docbook-xml=4.5-* docbook-xsl=1.78.* dpkg-dev=1.17.*        libdbd-sqlite3-perl=1.40-* libdbi-perl=1.630-* libdpkg-perl=1.17.* libhttp-date-perl=6.02-*        libio-pty-perl=1:1.08-* libserf-1-1=1.3.* libsvn-perl=1.8.* libsvn1=1.8.* libtcl8.6=8.6.* libtimedate-perl=2.3000-*        libunistring0=0.9.* libxml2-utils=2.9.* libyaml-perl=0.84-* python-bzrlib=2.6.* python-configobj=4.7.*        sgml-base=1.26+* sgml-data=2.0.* subversion=1.8.* tcl=8.6.* tcl8.6=8.6.* xml-core=0.13+* xmlto=0.0.* xsltproc=1.1.*     && rm -rf /var/lib/apt/lists/*     && apt-get clean" shape="box"];
  "sha256:28e1112f07d9074af8e4dea0aec080bd8baba3d707d1c0491ab8eb62f4a51463" [label="/bin/sh -c set -ex     && wget \"https://github.com/GitTools/GitVersion/releases/download/v${GITVERSION_VERSION}/GitVersion_${GITVERSION_VERSION}.zip\" -O /tmp/GitVersion_${GITVERSION_VERSION}.zip     && mkdir -p /usr/local/GitVersion_${GITVERSION_VERSION}     && unzip /tmp/GitVersion_${GITVERSION_VERSION}.zip -d /usr/local/GitVersion_${GITVERSION_VERSION}     && rm /tmp/GitVersion_${GITVERSION_VERSION}.zip     && echo \"mono /usr/local/GitVersion_${GITVERSION_VERSION}/GitVersion.exe \\$@\" >> /usr/local/bin/gitversion     && chmod +x /usr/local/bin/gitversion" shape="box"];
  "sha256:c8b1f08270fe0101d7264add700eb7560e3b579d9ff1a41016cb3dc5778e6464" [label="/bin/sh -c set -ex     && curl -fSL \"https://${DOCKER_BUCKET}/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz\" -o docker.tgz     && echo \"${DOCKER_SHA256} *docker.tgz\" | sha256sum -c -     && tar --extract --file docker.tgz --strip-components 1  --directory /usr/local/bin/     && rm docker.tgz     && docker -v     && addgroup dockremap     && useradd -g dockremap dockremap     && echo 'dockremap:165536:65536' >> /etc/subuid     && echo 'dockremap:165536:65536' >> /etc/subgid     && wget \"https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind\" -O /usr/local/bin/dind     && curl -L https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-Linux-x86_64 > /usr/local/bin/docker-compose     && chmod +x /usr/local/bin/dind /usr/local/bin/docker-compose     && docker-compose version" shape="box"];
  "sha256:efa51e590618a1ca74ef55b541264aad29fa5789d7750805745484018565ae79" [label="/bin/sh -c set -ex     && wget \"https://bootstrap.pypa.io/2.6/get-pip.py\" -O /tmp/get-pip.py     && python /tmp/get-pip.py     && pip install awscli==1.*     && rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:92f928f233850dc243a80391118ead5667e1a5526e24e8885b5c2eea2f8e20fb" [label="local://context" shape="ellipse"];
  "sha256:13bd2223e25104561afa85fc268a283a96b5f9c115928bc113ead83ccb41f008" [label="copy{src=/dockerd-entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:496610a15bffa7293c12d7b785b20550255a336835363788b7f78cfd79621b35" [label="/bin/sh -c set -ex     && apt-get update     && apt-get install -y --no-install-recommends         libc6=2.19-*         libcurl3=7.35.*         libgcc1=1:4.9.*         libgssapi-krb5-2=1.12*         libicu52=52.1-*         liblttng-ust0=2.4.*         libssl1.0.0=1.0.*         libunwind8=1.1-*         libuuid1=2.20.*         zlib1g=1:1.2.*         software-properties-common=0.92.*     && add-apt-repository ppa:ubuntu-toolchain-r/test -y     && apt-get update     && apt-get install -y libstdc++6=8*    && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e47b287b43f153ae3b7da3cb8ae2da77e2e901a4778a4797795796df3870891f" [label="/bin/sh -c set -ex     && curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz     && echo \"$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:1d211041bb3340d934579a1bd884099d6b4e0fcaa7a042c0a0b776647bf28060" [label="/bin/sh -c set -ex     && mkdir warmup     && cd warmup     && dotnet new     && cd ..     && rm -rf warmup     && rm -rf /tmp/NuGetScratch" shape="box"];
  "sha256:38d618577367557d427000223c63f51225d67b2f03f71eaa7012107b1b07885f" [label="/bin/sh -c set -ex     && curl -SL $POWERSHELL_DOWNLOAD_URL --output powershell.tar.gz     && echo \"$POWERSHELL_DOWNLOAD_SHA powershell.tar.gz\" | sha256sum -c -     && mkdir -p /opt/microsoft/powershell/$POWERSHELL_VERSION     && tar zxf powershell.tar.gz -C /opt/microsoft/powershell/$POWERSHELL_VERSION     && rm powershell.tar.gz     && ln -s /opt/microsoft/powershell/$POWERSHELL_VERSION/pwsh /usr/bin/pwsh" shape="box"];
  "sha256:34eabae187dd198ad175c3b3511180c4052512d40eb524b230270438d71564aa" [label="sha256:34eabae187dd198ad175c3b3511180c4052512d40eb524b230270438d71564aa" shape="plaintext"];
  "sha256:446d41895526d7d89dd4713317621101e94c623c0fa16bf6ce5dd9d16bbfa419" -> "sha256:e9a175b8fe23d069f3097007ec0a9a05e32ff502cc2720f32dedd79729eb4151" [label=""];
  "sha256:e9a175b8fe23d069f3097007ec0a9a05e32ff502cc2720f32dedd79729eb4151" -> "sha256:28e1112f07d9074af8e4dea0aec080bd8baba3d707d1c0491ab8eb62f4a51463" [label=""];
  "sha256:28e1112f07d9074af8e4dea0aec080bd8baba3d707d1c0491ab8eb62f4a51463" -> "sha256:c8b1f08270fe0101d7264add700eb7560e3b579d9ff1a41016cb3dc5778e6464" [label=""];
  "sha256:c8b1f08270fe0101d7264add700eb7560e3b579d9ff1a41016cb3dc5778e6464" -> "sha256:efa51e590618a1ca74ef55b541264aad29fa5789d7750805745484018565ae79" [label=""];
  "sha256:efa51e590618a1ca74ef55b541264aad29fa5789d7750805745484018565ae79" -> "sha256:13bd2223e25104561afa85fc268a283a96b5f9c115928bc113ead83ccb41f008" [label=""];
  "sha256:92f928f233850dc243a80391118ead5667e1a5526e24e8885b5c2eea2f8e20fb" -> "sha256:13bd2223e25104561afa85fc268a283a96b5f9c115928bc113ead83ccb41f008" [label=""];
  "sha256:13bd2223e25104561afa85fc268a283a96b5f9c115928bc113ead83ccb41f008" -> "sha256:496610a15bffa7293c12d7b785b20550255a336835363788b7f78cfd79621b35" [label=""];
  "sha256:496610a15bffa7293c12d7b785b20550255a336835363788b7f78cfd79621b35" -> "sha256:e47b287b43f153ae3b7da3cb8ae2da77e2e901a4778a4797795796df3870891f" [label=""];
  "sha256:e47b287b43f153ae3b7da3cb8ae2da77e2e901a4778a4797795796df3870891f" -> "sha256:1d211041bb3340d934579a1bd884099d6b4e0fcaa7a042c0a0b776647bf28060" [label=""];
  "sha256:1d211041bb3340d934579a1bd884099d6b4e0fcaa7a042c0a0b776647bf28060" -> "sha256:38d618577367557d427000223c63f51225d67b2f03f71eaa7012107b1b07885f" [label=""];
  "sha256:38d618577367557d427000223c63f51225d67b2f03f71eaa7012107b1b07885f" -> "sha256:34eabae187dd198ad175c3b3511180c4052512d40eb524b230270438d71564aa" [label=""];
}
