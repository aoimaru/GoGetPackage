[app/sources/297468557.Dockerfile]
digraph {
  "sha256:4a46789e0169512f0b6c600c50ac58b00c58474b539667b967a8f67d2ade62c6" [label="docker-image://docker.io/library/golang:1.7.5-alpine" shape="ellipse"];
  "sha256:14073e9315ada11aa3b166a55e794afdeef21dd4b37085bb1f2c120eec761bd5" [label="/bin/sh -c apk add --no-cache -U --virtual .build-deps     curl   && curl -fL \"https://github.com/Masterminds/glide/releases/download/v$GLIDE_VERSION/glide-v$GLIDE_VERSION-linux-amd64.zip\" -o glide.zip   && unzip glide.zip   && mv ./linux-amd64/glide /usr/local/bin/glide   && rm -fr ./linux-amd64   && rm ./glide.zip   && apk del .build-deps     && apk add --no-cache -U --virtual .glide-deps     git" shape="box"];
  "sha256:1e252ba300f3a9130ddbca8b72945d9546133f4655f37c2126f23e418561ffc3" [label="/bin/sh -c go get -u github.com/golang/lint/golint" shape="box"];
  "sha256:76c72a1da170106011423ae634aca80f8ef7059625866e07abb8a59a90a98ace" [label="/bin/sh -c apk add --no-cache -U     bash     build-base     coreutils     make" shape="box"];
  "sha256:3915a96b1104e81aa9ae35e24fbca154725403044eebb198636e3e8b54c61d92" [label="mkdir{path=/go/src/github.com/creasty/rid}" shape="note"];
  "sha256:d0782dea1ea64cb99634c5fb241c4e9071ce6c33577373632296578554b41308" [label="/bin/sh -c ln -sf $APP_DIR /app" shape="box"];
  "sha256:143ee73b41b3532cc957bbac5b0aa733f088a1d5e64d0468640843f4ac3fd2df" [label="sha256:143ee73b41b3532cc957bbac5b0aa733f088a1d5e64d0468640843f4ac3fd2df" shape="plaintext"];
  "sha256:4a46789e0169512f0b6c600c50ac58b00c58474b539667b967a8f67d2ade62c6" -> "sha256:14073e9315ada11aa3b166a55e794afdeef21dd4b37085bb1f2c120eec761bd5" [label=""];
  "sha256:14073e9315ada11aa3b166a55e794afdeef21dd4b37085bb1f2c120eec761bd5" -> "sha256:1e252ba300f3a9130ddbca8b72945d9546133f4655f37c2126f23e418561ffc3" [label=""];
  "sha256:1e252ba300f3a9130ddbca8b72945d9546133f4655f37c2126f23e418561ffc3" -> "sha256:76c72a1da170106011423ae634aca80f8ef7059625866e07abb8a59a90a98ace" [label=""];
  "sha256:76c72a1da170106011423ae634aca80f8ef7059625866e07abb8a59a90a98ace" -> "sha256:3915a96b1104e81aa9ae35e24fbca154725403044eebb198636e3e8b54c61d92" [label=""];
  "sha256:3915a96b1104e81aa9ae35e24fbca154725403044eebb198636e3e8b54c61d92" -> "sha256:d0782dea1ea64cb99634c5fb241c4e9071ce6c33577373632296578554b41308" [label=""];
  "sha256:d0782dea1ea64cb99634c5fb241c4e9071ce6c33577373632296578554b41308" -> "sha256:143ee73b41b3532cc957bbac5b0aa733f088a1d5e64d0468640843f4ac3fd2df" [label=""];
}

