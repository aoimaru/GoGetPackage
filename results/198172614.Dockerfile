[app/sources/198172614.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:de9ad387fd0a443dcd028a359a65f3d0e483087110c0934255c08c35ad9e8de2" [label="local://context" shape="ellipse"];
  "sha256:19fec78f125db6317f627adbdb46091360e7dbeebf828bc30dc0fe74bf8b1643" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:f59b453f8bdce67ada7ee4e2924cc3c8dce0c966a78791269a943a440134f9d1" [label="/bin/sh -c apk update && apk upgrade &&     apk add ca-certificates supervisor rsyslog &&     chmod +x /my_* &&     mkdir /etc/my_runonce /etc/my_runalways /etc/container_environment /etc/workaround-docker-2267 /var/log/supervisor &&     touch /var/log/startup.log && chmod 666 /var/log/startup.log &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:a78d9c6f9d84216d7172cc10e1a30b02c50c2a36769e2ef216ed0f7b201af800" [label="sha256:a78d9c6f9d84216d7172cc10e1a30b02c50c2a36769e2ef216ed0f7b201af800" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:19fec78f125db6317f627adbdb46091360e7dbeebf828bc30dc0fe74bf8b1643" [label=""];
  "sha256:de9ad387fd0a443dcd028a359a65f3d0e483087110c0934255c08c35ad9e8de2" -> "sha256:19fec78f125db6317f627adbdb46091360e7dbeebf828bc30dc0fe74bf8b1643" [label=""];
  "sha256:19fec78f125db6317f627adbdb46091360e7dbeebf828bc30dc0fe74bf8b1643" -> "sha256:f59b453f8bdce67ada7ee4e2924cc3c8dce0c966a78791269a943a440134f9d1" [label=""];
  "sha256:f59b453f8bdce67ada7ee4e2924cc3c8dce0c966a78791269a943a440134f9d1" -> "sha256:a78d9c6f9d84216d7172cc10e1a30b02c50c2a36769e2ef216ed0f7b201af800" [label=""];
}

