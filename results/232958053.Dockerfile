[app/sources/232958053.Dockerfile]
digraph {
  "sha256:c72bf541c26085c8173946f4cc0105e4cf026c9c30df75ed9f09266df34d7cea" [label="docker-image://docker.io/graviteeio/java:8" shape="ellipse"];
  "sha256:9d0a9d420359cd91e54c11965f296b03b2b9870d625feca6595bdedc07f355fd" [label="/bin/sh -c apk add --update zip unzip netcat-openbsd wget" shape="box"];
  "sha256:05128f7e801c07f243cc84b758923de903ac499aa2ee7b8988a123e71159bcb9" [label="/bin/sh -c wget --no-check-certificate -O /tmp/gravitee-am-gateway-standalone-${GRAVITEEAM_VERSION}.zip https://download.gravitee.io/graviteeio-am/components/gravitee-am-gateway/gravitee-am-gateway-standalone-${GRAVITEEAM_VERSION}.zip     && unzip /tmp/gravitee-am-gateway-standalone-${GRAVITEEAM_VERSION}.zip -d /tmp/     && mv /tmp/gravitee-am-gateway-standalone-${GRAVITEEAM_VERSION} /opt/graviteeio-am-gateway     && rm -rf /tmp/*" shape="box"];
  "sha256:cd734689d696ea31eece8a031a1a6e9d5e3567f2f0079bdfd80ee96da86229a3" [label="/bin/sh -c addgroup -g 1000 gravitee     && adduser -D -u 1000 -G gravitee -h ${GRAVITEEAM_HOME} gravitee     && chown -R gravitee:gravitee ${GRAVITEEAM_HOME}" shape="box"];
  "sha256:d3d271b9a8b20fd81c6cc180bdf706d106e80d3b40c79fddb02a01c64ec27ad9" [label="mkdir{path=/opt/graviteeio-am-gateway}" shape="note"];
  "sha256:246927f31e7071729082a23cf5991b45959a97fc44d462b7ec5e85c292f4a67f" [label="sha256:246927f31e7071729082a23cf5991b45959a97fc44d462b7ec5e85c292f4a67f" shape="plaintext"];
  "sha256:c72bf541c26085c8173946f4cc0105e4cf026c9c30df75ed9f09266df34d7cea" -> "sha256:9d0a9d420359cd91e54c11965f296b03b2b9870d625feca6595bdedc07f355fd" [label=""];
  "sha256:9d0a9d420359cd91e54c11965f296b03b2b9870d625feca6595bdedc07f355fd" -> "sha256:05128f7e801c07f243cc84b758923de903ac499aa2ee7b8988a123e71159bcb9" [label=""];
  "sha256:05128f7e801c07f243cc84b758923de903ac499aa2ee7b8988a123e71159bcb9" -> "sha256:cd734689d696ea31eece8a031a1a6e9d5e3567f2f0079bdfd80ee96da86229a3" [label=""];
  "sha256:cd734689d696ea31eece8a031a1a6e9d5e3567f2f0079bdfd80ee96da86229a3" -> "sha256:d3d271b9a8b20fd81c6cc180bdf706d106e80d3b40c79fddb02a01c64ec27ad9" [label=""];
  "sha256:d3d271b9a8b20fd81c6cc180bdf706d106e80d3b40c79fddb02a01c64ec27ad9" -> "sha256:246927f31e7071729082a23cf5991b45959a97fc44d462b7ec5e85c292f4a67f" [label=""];
}

