[app/sources/193830505.Dockerfile]
digraph {
  "sha256:c5ca23f45cbc632b50c73ab4727b2fb9627e0985802f5b3e1006904dfeac6154" [label="docker-image://docker.io/adoptopenjdk/openjdk8:alpine-jre" shape="ellipse"];
  "sha256:91f33b1317ba46e53a9a57391c38d1d1c9a990f52bc3ef74ddc50eeb9b9676df" [label="/bin/sh -c addgroup -S neo4j && adduser -S -H -h /var/lib/neo4j -G neo4j neo4j" shape="box"];
  "sha256:5996563aea6b86e91ff1eb4cfc3e15cd649d1a0da78253ee62b19824bfc6566f" [label="local://context" shape="ellipse"];
  "sha256:55f211dce4fd9989290b285438025f9bd15f035540f7ebd9baaaa06a0ab361be" [label="copy{src=/local-package/*, dest=/tmp/}" shape="note"];
  "sha256:b33d86ec234089d5d32f0f639da6fee21f3bfa672ad0f992dff711d8a05f1c50" [label="/bin/sh -c apk add --no-cache --quiet     bash     curl     tini     su-exec     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo \"${NEO4J_SHA256}  ${NEO4J_TARBALL}\" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* \"${NEO4J_HOME}\"     && rm ${NEO4J_TARBALL}     && mv \"${NEO4J_HOME}\"/data /data     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && mv \"${NEO4J_HOME}\"/logs /logs     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j \"${NEO4J_HOME}\"     && chmod -R 777 \"${NEO4J_HOME}\"     && ln -s /data \"${NEO4J_HOME}\"/data     && ln -s /logs \"${NEO4J_HOME}\"/logs     && apk del curl" shape="box"];
  "sha256:10d0c23cbc9a687532f667c6823afff54dd90a2af4d229941c324176a008efeb" [label="mkdir{path=/var/lib/neo4j}" shape="note"];
  "sha256:5978af867ce100598042deab32c1721b092dfaf9459ebef0cc332b269a6d03bd" [label="copy{src=/docker-entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:7b426e777da72b94753ba2ac022f215a85e749630cf97593d90e25560c97272a" [label="sha256:7b426e777da72b94753ba2ac022f215a85e749630cf97593d90e25560c97272a" shape="plaintext"];
  "sha256:c5ca23f45cbc632b50c73ab4727b2fb9627e0985802f5b3e1006904dfeac6154" -> "sha256:91f33b1317ba46e53a9a57391c38d1d1c9a990f52bc3ef74ddc50eeb9b9676df" [label=""];
  "sha256:91f33b1317ba46e53a9a57391c38d1d1c9a990f52bc3ef74ddc50eeb9b9676df" -> "sha256:55f211dce4fd9989290b285438025f9bd15f035540f7ebd9baaaa06a0ab361be" [label=""];
  "sha256:5996563aea6b86e91ff1eb4cfc3e15cd649d1a0da78253ee62b19824bfc6566f" -> "sha256:55f211dce4fd9989290b285438025f9bd15f035540f7ebd9baaaa06a0ab361be" [label=""];
  "sha256:55f211dce4fd9989290b285438025f9bd15f035540f7ebd9baaaa06a0ab361be" -> "sha256:b33d86ec234089d5d32f0f639da6fee21f3bfa672ad0f992dff711d8a05f1c50" [label=""];
  "sha256:b33d86ec234089d5d32f0f639da6fee21f3bfa672ad0f992dff711d8a05f1c50" -> "sha256:10d0c23cbc9a687532f667c6823afff54dd90a2af4d229941c324176a008efeb" [label=""];
  "sha256:10d0c23cbc9a687532f667c6823afff54dd90a2af4d229941c324176a008efeb" -> "sha256:5978af867ce100598042deab32c1721b092dfaf9459ebef0cc332b269a6d03bd" [label=""];
  "sha256:5996563aea6b86e91ff1eb4cfc3e15cd649d1a0da78253ee62b19824bfc6566f" -> "sha256:5978af867ce100598042deab32c1721b092dfaf9459ebef0cc332b269a6d03bd" [label=""];
  "sha256:5978af867ce100598042deab32c1721b092dfaf9459ebef0cc332b269a6d03bd" -> "sha256:7b426e777da72b94753ba2ac022f215a85e749630cf97593d90e25560c97272a" [label=""];
}

