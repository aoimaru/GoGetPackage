[app/sources/252799660.Dockerfile]
digraph {
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" [label="docker-image://docker.io/library/alpine:3.3" shape="ellipse"];
  "sha256:b8aaf9925f1266c9beb72f2db530cca315d38cd343fa0f783f108ac66de7db08" [label="/bin/sh -c apk upgrade --update" shape="box"];
  "sha256:ee2c1df4fdef3106415fdb690e6cbaf9e381d0995ee19cc81ba7ecb99c034c65" [label="/bin/sh -c apk add git python py-imaging" shape="box"];
  "sha256:6fc33a7c17e1296192d8068e4045eed3bb76064a5c0dcd2fdcbed6aae45e97c9" [label="local://context" shape="ellipse"];
  "sha256:7fb6fec1e2ea777341b77777f60ab9f13d02ffc0e888424d09db4d04a37acf4d" [label="copy{src=/start-plexconnect.sh, dest=/opt/start.sh}" shape="note"];
  "sha256:8a181eae1b28d787001d92fdae77d5a6bee326a3316906c71a7883df2f34643f" [label="/bin/sh -c git clone https://github.com/iBaa/PlexConnect.git /opt/PlexConnect" shape="box"];
  "sha256:e0dcb544d2d0d2e0fff19bb0a8ef0e6293039d349b6123570cdb2780e715d9b1" [label="/bin/sh -c ln -sf /dev/stdout /opt/PlexConnect/PlexConnect.log" shape="box"];
  "sha256:ebb2c0c99afa8e542aed26ffd1e7cfebeefbb46e49bdd69ac5b7d5fbae899b42" [label="/bin/sh -c rm -rf /var/cache/apk/*" shape="box"];
  "sha256:f7332002eda428c2e1eaeb3c258efa528229b5c8f117dbb30907d5efa624c032" [label="sha256:f7332002eda428c2e1eaeb3c258efa528229b5c8f117dbb30907d5efa624c032" shape="plaintext"];
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" -> "sha256:b8aaf9925f1266c9beb72f2db530cca315d38cd343fa0f783f108ac66de7db08" [label=""];
  "sha256:b8aaf9925f1266c9beb72f2db530cca315d38cd343fa0f783f108ac66de7db08" -> "sha256:ee2c1df4fdef3106415fdb690e6cbaf9e381d0995ee19cc81ba7ecb99c034c65" [label=""];
  "sha256:ee2c1df4fdef3106415fdb690e6cbaf9e381d0995ee19cc81ba7ecb99c034c65" -> "sha256:7fb6fec1e2ea777341b77777f60ab9f13d02ffc0e888424d09db4d04a37acf4d" [label=""];
  "sha256:6fc33a7c17e1296192d8068e4045eed3bb76064a5c0dcd2fdcbed6aae45e97c9" -> "sha256:7fb6fec1e2ea777341b77777f60ab9f13d02ffc0e888424d09db4d04a37acf4d" [label=""];
  "sha256:7fb6fec1e2ea777341b77777f60ab9f13d02ffc0e888424d09db4d04a37acf4d" -> "sha256:8a181eae1b28d787001d92fdae77d5a6bee326a3316906c71a7883df2f34643f" [label=""];
  "sha256:8a181eae1b28d787001d92fdae77d5a6bee326a3316906c71a7883df2f34643f" -> "sha256:e0dcb544d2d0d2e0fff19bb0a8ef0e6293039d349b6123570cdb2780e715d9b1" [label=""];
  "sha256:e0dcb544d2d0d2e0fff19bb0a8ef0e6293039d349b6123570cdb2780e715d9b1" -> "sha256:ebb2c0c99afa8e542aed26ffd1e7cfebeefbb46e49bdd69ac5b7d5fbae899b42" [label=""];
  "sha256:ebb2c0c99afa8e542aed26ffd1e7cfebeefbb46e49bdd69ac5b7d5fbae899b42" -> "sha256:f7332002eda428c2e1eaeb3c258efa528229b5c8f117dbb30907d5efa624c032" [label=""];
}

