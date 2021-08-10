[app/sources/323018831.Dockerfile]
digraph {
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" [label="docker-image://docker.io/library/node:8-alpine" shape="ellipse"];
  "sha256:1935b0862d74a54bb434139ad621808f2e6a2af30045593dd261f659a9c56218" [label="/bin/sh -c apk update && apk upgrade &&     apk add --no-cache bash git python g++ gcc libgcc libstdc++ linux-headers make" shape="box"];
  "sha256:905afe945f4f53f448b4cda4fd9917c8d915b2ecf5203b134867efe24ada0333" [label="/bin/sh -c npm install --quiet node-gyp -g" shape="box"];
  "sha256:469025984c24759de19f88f3c507ef84f48734d72c916d120d47b07dd64bd2e2" [label="mkdir{path=/opt/app}" shape="note"];
  "sha256:926d868033ab41ee1a2253951f23c5b4d7f22114c80054f3333122e5a8bcc879" [label="local://context" shape="ellipse"];
  "sha256:ab2094b09b09d9ec835b83a2bd50b043ff8f45291439dca5adb5694dba9b2ff6" [label="copy{src=/package.json, dest=/opt/app/}" shape="note"];
  "sha256:40933d3c365d42076dec973c0ecaa96f9b1d65b4565b1995ed3fd49a67b2a0b8" [label="/bin/sh -c npm i -g npm@^6.1.0 && npm install" shape="box"];
  "sha256:aaddac03075784c5a8b3fb58c475f128232b30060a860fbadee1f6b8e7b26a51" [label="copy{src=/, dest=/opt/app/}" shape="note"];
  "sha256:1189f3623238e2ae1b3649a82649b537fa486f168fd18c5a03ca5376589e4655" [label="sha256:1189f3623238e2ae1b3649a82649b537fa486f168fd18c5a03ca5376589e4655" shape="plaintext"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" -> "sha256:1935b0862d74a54bb434139ad621808f2e6a2af30045593dd261f659a9c56218" [label=""];
  "sha256:1935b0862d74a54bb434139ad621808f2e6a2af30045593dd261f659a9c56218" -> "sha256:905afe945f4f53f448b4cda4fd9917c8d915b2ecf5203b134867efe24ada0333" [label=""];
  "sha256:905afe945f4f53f448b4cda4fd9917c8d915b2ecf5203b134867efe24ada0333" -> "sha256:469025984c24759de19f88f3c507ef84f48734d72c916d120d47b07dd64bd2e2" [label=""];
  "sha256:469025984c24759de19f88f3c507ef84f48734d72c916d120d47b07dd64bd2e2" -> "sha256:ab2094b09b09d9ec835b83a2bd50b043ff8f45291439dca5adb5694dba9b2ff6" [label=""];
  "sha256:926d868033ab41ee1a2253951f23c5b4d7f22114c80054f3333122e5a8bcc879" -> "sha256:ab2094b09b09d9ec835b83a2bd50b043ff8f45291439dca5adb5694dba9b2ff6" [label=""];
  "sha256:ab2094b09b09d9ec835b83a2bd50b043ff8f45291439dca5adb5694dba9b2ff6" -> "sha256:40933d3c365d42076dec973c0ecaa96f9b1d65b4565b1995ed3fd49a67b2a0b8" [label=""];
  "sha256:40933d3c365d42076dec973c0ecaa96f9b1d65b4565b1995ed3fd49a67b2a0b8" -> "sha256:aaddac03075784c5a8b3fb58c475f128232b30060a860fbadee1f6b8e7b26a51" [label=""];
  "sha256:926d868033ab41ee1a2253951f23c5b4d7f22114c80054f3333122e5a8bcc879" -> "sha256:aaddac03075784c5a8b3fb58c475f128232b30060a860fbadee1f6b8e7b26a51" [label=""];
  "sha256:aaddac03075784c5a8b3fb58c475f128232b30060a860fbadee1f6b8e7b26a51" -> "sha256:1189f3623238e2ae1b3649a82649b537fa486f168fd18c5a03ca5376589e4655" [label=""];
}

