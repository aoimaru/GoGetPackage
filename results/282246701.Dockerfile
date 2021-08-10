[app/sources/282246701.Dockerfile]
digraph {
  "sha256:867b8da051331563402c593711902b4bf48fe39e9a35477c17005e3ab54fb6c5" [label="docker-image://docker.io/slpcat/jdk:alpine" shape="ellipse"];
  "sha256:6e88eab2ffc4381aac6f38b18e0acdaea6538f9b70610618ab46046b8aa07fe6" [label="/bin/sh -c apk add --no-cache bash snappy 'su-exec>=0.2'" shape="box"];
  "sha256:4b9b39f6885c6dc19f4fc2d4d6e2ffb3e10e0fa30fdc656bdd08eb689b066c9f" [label="/bin/sh -c addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink" shape="box"];
  "sha256:25921dd8741cad3a199ad096344c98519525b9608cf5556f8de62e8e5907c8fa" [label="mkdir{path=/opt/flink}" shape="note"];
  "sha256:74349c6962bd064e325c4377e9f2129c029effb63cd7680d19576841b281d549" [label="local://context" shape="ellipse"];
  "sha256:6a9dd552279a83f2f6a158c267b37507acace0b3f1f0cc06851a5e6055d61c09" [label="copy{src=/KEYS, dest=/KEYS}" shape="note"];
  "sha256:3e8df143880c1c5fa6279ed5d48713b64fb3cabcac9e8590f1ffc0cc9fa142d5" [label="/bin/sh -c set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz \"$FLINK_TGZ_URL\";   wget -nv -O flink.tgz.asc \"$FLINK_ASC_URL\";     export GNUPGHOME=\"$(mktemp -d)\";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf \"$GNUPGHOME\" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;" shape="box"];
  "sha256:23b3e7ab2cda6e63d72abd9d58a813b3624f31c8cc764b5a6df0d7209a954862" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:230cb2413d9260df1420a216cadc914cecb3bf513ff2bacf48cd60a865e08420" [label="sha256:230cb2413d9260df1420a216cadc914cecb3bf513ff2bacf48cd60a865e08420" shape="plaintext"];
  "sha256:867b8da051331563402c593711902b4bf48fe39e9a35477c17005e3ab54fb6c5" -> "sha256:6e88eab2ffc4381aac6f38b18e0acdaea6538f9b70610618ab46046b8aa07fe6" [label=""];
  "sha256:6e88eab2ffc4381aac6f38b18e0acdaea6538f9b70610618ab46046b8aa07fe6" -> "sha256:4b9b39f6885c6dc19f4fc2d4d6e2ffb3e10e0fa30fdc656bdd08eb689b066c9f" [label=""];
  "sha256:4b9b39f6885c6dc19f4fc2d4d6e2ffb3e10e0fa30fdc656bdd08eb689b066c9f" -> "sha256:25921dd8741cad3a199ad096344c98519525b9608cf5556f8de62e8e5907c8fa" [label=""];
  "sha256:25921dd8741cad3a199ad096344c98519525b9608cf5556f8de62e8e5907c8fa" -> "sha256:6a9dd552279a83f2f6a158c267b37507acace0b3f1f0cc06851a5e6055d61c09" [label=""];
  "sha256:74349c6962bd064e325c4377e9f2129c029effb63cd7680d19576841b281d549" -> "sha256:6a9dd552279a83f2f6a158c267b37507acace0b3f1f0cc06851a5e6055d61c09" [label=""];
  "sha256:6a9dd552279a83f2f6a158c267b37507acace0b3f1f0cc06851a5e6055d61c09" -> "sha256:3e8df143880c1c5fa6279ed5d48713b64fb3cabcac9e8590f1ffc0cc9fa142d5" [label=""];
  "sha256:3e8df143880c1c5fa6279ed5d48713b64fb3cabcac9e8590f1ffc0cc9fa142d5" -> "sha256:23b3e7ab2cda6e63d72abd9d58a813b3624f31c8cc764b5a6df0d7209a954862" [label=""];
  "sha256:74349c6962bd064e325c4377e9f2129c029effb63cd7680d19576841b281d549" -> "sha256:23b3e7ab2cda6e63d72abd9d58a813b3624f31c8cc764b5a6df0d7209a954862" [label=""];
  "sha256:23b3e7ab2cda6e63d72abd9d58a813b3624f31c8cc764b5a6df0d7209a954862" -> "sha256:230cb2413d9260df1420a216cadc914cecb3bf513ff2bacf48cd60a865e08420" [label=""];
}

