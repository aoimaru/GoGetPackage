[app/sources/212521856.Dockerfile]
digraph {
  "sha256:f4cd9dd82081b1605f88d2f71655f342b56bb7b9c4dfc148520ec8bb4e455451" [label="docker-image://docker.io/rawmind/alpine-jvm8:1.8.181-1" shape="ellipse"];
  "sha256:d545ab007246b4235f42cd4bb0966121de5d4748e3a0fc97860d6f19a2511424" [label="/bin/sh -c SERVICE_RELEASE=zookeeper-${SERVICE_VERSION} &&     mkdir -p ${SERVICE_HOME}/logs ${SERVICE_HOME}/data &&     cd /tmp &&     apk --update add jq gnupg tar patch &&     eval $(gpg-agent --daemon) &&     curl -sSLO \"https://dist.apache.org/repos/dist/release/zookeeper/${SERVICE_RELEASE}/${SERVICE_RELEASE}.tar.gz\" &&     curl -sSLO https://dist.apache.org/repos/dist/release/zookeeper/${SERVICE_RELEASE}/${SERVICE_RELEASE}.tar.gz.asc &&     curl -sSL  https://dist.apache.org/repos/dist/release/zookeeper/KEYS | gpg -v --import - &&     gpg -v --verify ${SERVICE_RELEASE}.tar.gz.asc &&     tar -zx -C ${SERVICE_HOME} --strip-components=1 --no-same-owner -f ${SERVICE_RELEASE}.tar.gz &&     apk del jq gnupg tar patch &&     rm -rf       /tmp/*       /root/.gnupg       /var/cache/apk/*       ${SERVICE_HOME}/contrib/fatjar       ${SERVICE_HOME}/dist-maven       ${SERVICE_HOME}/docs       ${SERVICE_HOME}/src       ${SERVICE_HOME}/bin/*.cmd &&     addgroup -g ${SERVICE_GID} ${SERVICE_GROUP} &&     adduser -g \"${SERVICE_NAME} user\" -D -h ${SERVICE_HOME} -G ${SERVICE_GROUP} -s /sbin/nologin -u ${SERVICE_UID} ${SERVICE_USER}" shape="box"];
  "sha256:0394f0e185b41d4eef2709a7ae036508142850fb8cca54daea7bde8e9893ce42" [label="local://context" shape="ellipse"];
  "sha256:0cfc3ba8e45ca654e045d3efe302db6b129d41fb98d198d537dc926be85838b6" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:eb26bc314e8c1e34114e24806fd20e7202b33df92b0df6cde6727c7f4da772c3" [label="/bin/sh -c chmod +x ${SERVICE_HOME}/bin/*.sh   && chown -R ${SERVICE_USER}:${SERVICE_GROUP} ${SERVICE_HOME} /opt/monit" shape="box"];
  "sha256:05cbee7f9149c7210fbbfb7cfa68f0465f5c8326689858c023ec9281873535ac" [label="mkdir{path=/opt/zk}" shape="note"];
  "sha256:5a356c246de2511212229efd70da48deb704d1de36dac3cf288f716fb82b6749" [label="sha256:5a356c246de2511212229efd70da48deb704d1de36dac3cf288f716fb82b6749" shape="plaintext"];
  "sha256:f4cd9dd82081b1605f88d2f71655f342b56bb7b9c4dfc148520ec8bb4e455451" -> "sha256:d545ab007246b4235f42cd4bb0966121de5d4748e3a0fc97860d6f19a2511424" [label=""];
  "sha256:d545ab007246b4235f42cd4bb0966121de5d4748e3a0fc97860d6f19a2511424" -> "sha256:0cfc3ba8e45ca654e045d3efe302db6b129d41fb98d198d537dc926be85838b6" [label=""];
  "sha256:0394f0e185b41d4eef2709a7ae036508142850fb8cca54daea7bde8e9893ce42" -> "sha256:0cfc3ba8e45ca654e045d3efe302db6b129d41fb98d198d537dc926be85838b6" [label=""];
  "sha256:0cfc3ba8e45ca654e045d3efe302db6b129d41fb98d198d537dc926be85838b6" -> "sha256:eb26bc314e8c1e34114e24806fd20e7202b33df92b0df6cde6727c7f4da772c3" [label=""];
  "sha256:eb26bc314e8c1e34114e24806fd20e7202b33df92b0df6cde6727c7f4da772c3" -> "sha256:05cbee7f9149c7210fbbfb7cfa68f0465f5c8326689858c023ec9281873535ac" [label=""];
  "sha256:05cbee7f9149c7210fbbfb7cfa68f0465f5c8326689858c023ec9281873535ac" -> "sha256:5a356c246de2511212229efd70da48deb704d1de36dac3cf288f716fb82b6749" [label=""];
}

