[app/sources/296195925.Dockerfile]
digraph {
  "sha256:aa986872a6db505c6afc2f852dfb09af3b60697c4c09822383fc582a36c31521" [label="docker-image://docker.io/library/openjdk:8-jre-slim" shape="ellipse"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:ca908c80c26ababd643b61cf51d2963b29142192fe5023879733ce8c5704c1a5" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:26ad114884e9e88384e6c43bab4f9bc2d26e83145fa7679ea5e2e0cd5efd9c41" [label="/bin/sh -c apt-get update  > /dev/null &&   apt-get install --assume-yes     ca-certificates     curl > /dev/null" shape="box"];
  "sha256:b3b146a8e483c5f8159da8c439beb440c8aa3711de217a77535a97f139cb8f08" [label="/bin/sh -c curl     --silent     --location     --retry 3     --output \"/tmp/graylog-${GRAYLOG_VERSION}.tgz\"     \"https://packages.graylog2.org/releases/graylog/graylog-${GRAYLOG_VERSION}.tgz\"" shape="box"];
  "sha256:7a4ab9f3d6d6ea9f0d9dadde81deddb7c3cafcce889a6be4f62255f6acc2aa10" [label="/bin/sh -c curl     --silent     --location     --retry 3     --output \"/tmp/graylog-${GRAYLOG_VERSION}.tgz.sha256.txt\"     \"https://packages.graylog2.org/releases/graylog/graylog-${GRAYLOG_VERSION}.tgz.sha256.txt\"" shape="box"];
  "sha256:72c572d68a58a1251d1f765b1c335d86ea3d95dbe564e864607df0c46715e77d" [label="/bin/sh -c sha256sum --check \"graylog-${GRAYLOG_VERSION}.tgz.sha256.txt\"" shape="box"];
  "sha256:7f5363b6dce72426c8a53448625ceba7464b8f8df27ca01a6f5e92747f12b663" [label="/bin/sh -c mkdir /opt/graylog &&   tar --extract --gzip --file \"/tmp/graylog-${GRAYLOG_VERSION}.tgz\" --strip-components=1 --directory /opt/graylog" shape="box"];
  "sha256:a67eab8991bf730d30b4ca030c56980561f538141452cbd7e1c439183259f760" [label="/bin/sh -c install     --directory     --mode=0750     /opt/graylog/data     /opt/graylog/data/journal     /opt/graylog/data/log     /opt/graylog/data/config     /opt/graylog/data/plugin     /opt/graylog/data/data" shape="box"];
  "sha256:0d915356b7f0870ae7e1bd7312cd8ba15d323b8a4383fe1660c0310e4bbd6900" [label="copy{src=/opt/graylog, dest=/usr/share/graylog}" shape="note"];
  "sha256:7291f2a58de6bf99d6f3b975d890d633c88f62f759583b01830f98ed6941fa15" [label="local://context" shape="ellipse"];
  "sha256:e202f3b3a9e42c89a5c085d9ca0ae93b630c146220fc6b1ef29f5849a4fb9739" [label="copy{src=/config, dest=/usr/share/graylog/data/config}" shape="note"];
  "sha256:3464225de0e3e0043b325097fd98e051df4b55a75c2c52d1b475215d80287179" [label="mkdir{path=/usr/share/graylog}" shape="note"];
  "sha256:550706a5e4a6baddf4541841b19bdaf1db04da0412474d90a2d0db06238726cd" [label="/bin/sh -c echo \"export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre\" > /etc/profile.d/graylog.sh &&   echo \"export BUILD_DATE=${BUILD_DATE}\"           >> /etc/profile.d/graylog.sh &&   echo \"export GRAYLOG_VERSION=${GRAYLOG_VERSION}\" >> /etc/profile.d/graylog.sh &&   echo \"export GRAYLOG_SERVER_JAVA_OPTS='-XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -XX:NewRatio=1 -XX:MaxMetaspaceSize=256m -server -XX:+ResizeTLAB -XX:+UseConcMarkSweepGC -XX:+CMSConcurrentMTEnabled -XX:+CMSClassUnloadingEnabled -XX:+UseParNewGC -XX:-OmitStackTraceInFastThrow'\" >> /etc/profile.d/graylog.sh &&   echo \"export GRAYLOG_HOME=${GRAYLOG_HOME}\"       >> /etc/profile.d/graylog.sh &&   echo \"export GRAYLOG_USER=${GRAYLOG_USER}\"       >> /etc/profile.d/graylog.sh &&   echo \"export GRAYLOG_GROUP=${GRAYLOG_GROUP}\"     >> /etc/profile.d/graylog.sh &&   echo \"export GRAYLOG_UID=${GRAYLOG_UID}\"         >> /etc/profile.d/graylog.sh &&   echo \"export GRAYLOG_GID=${GRAYLOG_GID}\"         >> /etc/profile.d/graylog.sh &&   echo \"export PATH=${GRAYLOG_HOME}/bin:${PATH}\"   >> /etc/profile.d/graylog.sh &&   apt-get update  > /dev/null &&   apt-get install --no-install-recommends --assume-yes     curl     libcap2-bin     libglib2.0-0     fontconfig > /dev/null &&   addgroup     --gid \"${GRAYLOG_GID}\"     --quiet     \"${GRAYLOG_GROUP}\" &&   adduser     --disabled-password     --disabled-login     --gecos ''     --home ${GRAYLOG_HOME}     --uid \"${GRAYLOG_UID}\"     --gid \"${GRAYLOG_GID}\"     --quiet     \"${GRAYLOG_USER}\" &&   chown --recursive \"${GRAYLOG_USER}\":\"${GRAYLOG_GROUP}\" ${GRAYLOG_HOME} &&   setcap 'cap_net_bind_service=+ep' \"${JAVA_HOME}/bin/java\" &&   apt-get remove --assume-yes --purge     apt-utils > /dev/null &&   rm -f /etc/apt/sources.list.d/* &&   apt-get clean > /dev/null &&   apt autoremove --assume-yes > /dev/null &&   rm -rf     /tmp/*     /var/cache/debconf/*     /var/lib/apt/lists/*     /var/log/*     /usr/share/X11     /usr/share/doc/* 2> /dev/null" shape="box"];
  "sha256:2fa3e55573506dcd73898f88ed7c575123242015979ab42e7969582066d9c213" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:1935741176863c6ec323056a853380857831448e47e12832fb2fb29fd679d7c1" [label="copy{src=/health_check.sh, dest=/}" shape="note"];
  "sha256:eec2f270814a3b3afaaa1d497efbdc02bf9423d3e71510d0dbe724874400913f" [label="sha256:eec2f270814a3b3afaaa1d497efbdc02bf9423d3e71510d0dbe724874400913f" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:ca908c80c26ababd643b61cf51d2963b29142192fe5023879733ce8c5704c1a5" [label=""];
  "sha256:ca908c80c26ababd643b61cf51d2963b29142192fe5023879733ce8c5704c1a5" -> "sha256:26ad114884e9e88384e6c43bab4f9bc2d26e83145fa7679ea5e2e0cd5efd9c41" [label=""];
  "sha256:26ad114884e9e88384e6c43bab4f9bc2d26e83145fa7679ea5e2e0cd5efd9c41" -> "sha256:b3b146a8e483c5f8159da8c439beb440c8aa3711de217a77535a97f139cb8f08" [label=""];
  "sha256:b3b146a8e483c5f8159da8c439beb440c8aa3711de217a77535a97f139cb8f08" -> "sha256:7a4ab9f3d6d6ea9f0d9dadde81deddb7c3cafcce889a6be4f62255f6acc2aa10" [label=""];
  "sha256:7a4ab9f3d6d6ea9f0d9dadde81deddb7c3cafcce889a6be4f62255f6acc2aa10" -> "sha256:72c572d68a58a1251d1f765b1c335d86ea3d95dbe564e864607df0c46715e77d" [label=""];
  "sha256:72c572d68a58a1251d1f765b1c335d86ea3d95dbe564e864607df0c46715e77d" -> "sha256:7f5363b6dce72426c8a53448625ceba7464b8f8df27ca01a6f5e92747f12b663" [label=""];
  "sha256:7f5363b6dce72426c8a53448625ceba7464b8f8df27ca01a6f5e92747f12b663" -> "sha256:a67eab8991bf730d30b4ca030c56980561f538141452cbd7e1c439183259f760" [label=""];
  "sha256:aa986872a6db505c6afc2f852dfb09af3b60697c4c09822383fc582a36c31521" -> "sha256:0d915356b7f0870ae7e1bd7312cd8ba15d323b8a4383fe1660c0310e4bbd6900" [label=""];
  "sha256:a67eab8991bf730d30b4ca030c56980561f538141452cbd7e1c439183259f760" -> "sha256:0d915356b7f0870ae7e1bd7312cd8ba15d323b8a4383fe1660c0310e4bbd6900" [label=""];
  "sha256:0d915356b7f0870ae7e1bd7312cd8ba15d323b8a4383fe1660c0310e4bbd6900" -> "sha256:e202f3b3a9e42c89a5c085d9ca0ae93b630c146220fc6b1ef29f5849a4fb9739" [label=""];
  "sha256:7291f2a58de6bf99d6f3b975d890d633c88f62f759583b01830f98ed6941fa15" -> "sha256:e202f3b3a9e42c89a5c085d9ca0ae93b630c146220fc6b1ef29f5849a4fb9739" [label=""];
  "sha256:e202f3b3a9e42c89a5c085d9ca0ae93b630c146220fc6b1ef29f5849a4fb9739" -> "sha256:3464225de0e3e0043b325097fd98e051df4b55a75c2c52d1b475215d80287179" [label=""];
  "sha256:3464225de0e3e0043b325097fd98e051df4b55a75c2c52d1b475215d80287179" -> "sha256:550706a5e4a6baddf4541841b19bdaf1db04da0412474d90a2d0db06238726cd" [label=""];
  "sha256:550706a5e4a6baddf4541841b19bdaf1db04da0412474d90a2d0db06238726cd" -> "sha256:2fa3e55573506dcd73898f88ed7c575123242015979ab42e7969582066d9c213" [label=""];
  "sha256:7291f2a58de6bf99d6f3b975d890d633c88f62f759583b01830f98ed6941fa15" -> "sha256:2fa3e55573506dcd73898f88ed7c575123242015979ab42e7969582066d9c213" [label=""];
  "sha256:2fa3e55573506dcd73898f88ed7c575123242015979ab42e7969582066d9c213" -> "sha256:1935741176863c6ec323056a853380857831448e47e12832fb2fb29fd679d7c1" [label=""];
  "sha256:7291f2a58de6bf99d6f3b975d890d633c88f62f759583b01830f98ed6941fa15" -> "sha256:1935741176863c6ec323056a853380857831448e47e12832fb2fb29fd679d7c1" [label=""];
  "sha256:1935741176863c6ec323056a853380857831448e47e12832fb2fb29fd679d7c1" -> "sha256:eec2f270814a3b3afaaa1d497efbdc02bf9423d3e71510d0dbe724874400913f" [label=""];
}
