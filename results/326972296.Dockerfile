[app/sources/326972296.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:7737a5402572800038d59f3e038280455faf6d1a9340ec98b222bad169ea7677" [label="docker-image://docker.io/znly/upx:latest" shape="ellipse"];
  "sha256:8c1a2f5f411685eae3240971cad1b592e6f87bd0872e3cff0cc98d41ae0409e6" [label="/bin/sh -c apk update" shape="box"];
  "sha256:7782395ae9ec1906accfb850f5ef1205f3e099e015302ea90e4aad0f0eb60056" [label="/bin/sh -c apk add --no-cache go>1.10 git build-base" shape="box"];
  "sha256:b7e3da807e837cc303877e0ceb3c5e5b815c6bba3d1332d02f46a99941ed8fcf" [label="/bin/sh -c mkdir -p ${OUTDIR}/usr/bin/" shape="box"];
  "sha256:d66ae4b0249488e5d222e5d773461533e4e22a367da46f951236ce2a54f2c589" [label="/bin/sh -c go get -u -v -ldflags '-w -s'         github.com/nilslice/protolock/...         && install ${GOPATH}/bin/protolock ${OUTDIR}/usr/bin/" shape="box"];
  "sha256:b5b42a93c42fbd0c72d6e05c1c0b77f1cc0ec573960ef807651901a204053841" [label="copy{src=/out, dest=/out/}" shape="note"];
  "sha256:679b433bf94bae869c95f2e8a5596926f0cec4fdf20b72b725f95b4d96205c1f" [label="/bin/sh -c upx --lzma         /out/usr/bin/protolock" shape="box"];
  "sha256:415411ef0c9036d8f3251f5696739d30b3cdeceeee3a831af8447f926365f2c7" [label="copy{src=/out, dest=/}" shape="note"];
  "sha256:75e069009ba56dedb04265544fdce44ddc8882e83087049b996d8375bba6e855" [label="sha256:75e069009ba56dedb04265544fdce44ddc8882e83087049b996d8375bba6e855" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:8c1a2f5f411685eae3240971cad1b592e6f87bd0872e3cff0cc98d41ae0409e6" [label=""];
  "sha256:8c1a2f5f411685eae3240971cad1b592e6f87bd0872e3cff0cc98d41ae0409e6" -> "sha256:7782395ae9ec1906accfb850f5ef1205f3e099e015302ea90e4aad0f0eb60056" [label=""];
  "sha256:7782395ae9ec1906accfb850f5ef1205f3e099e015302ea90e4aad0f0eb60056" -> "sha256:b7e3da807e837cc303877e0ceb3c5e5b815c6bba3d1332d02f46a99941ed8fcf" [label=""];
  "sha256:b7e3da807e837cc303877e0ceb3c5e5b815c6bba3d1332d02f46a99941ed8fcf" -> "sha256:d66ae4b0249488e5d222e5d773461533e4e22a367da46f951236ce2a54f2c589" [label=""];
  "sha256:7737a5402572800038d59f3e038280455faf6d1a9340ec98b222bad169ea7677" -> "sha256:b5b42a93c42fbd0c72d6e05c1c0b77f1cc0ec573960ef807651901a204053841" [label=""];
  "sha256:d66ae4b0249488e5d222e5d773461533e4e22a367da46f951236ce2a54f2c589" -> "sha256:b5b42a93c42fbd0c72d6e05c1c0b77f1cc0ec573960ef807651901a204053841" [label=""];
  "sha256:b5b42a93c42fbd0c72d6e05c1c0b77f1cc0ec573960ef807651901a204053841" -> "sha256:679b433bf94bae869c95f2e8a5596926f0cec4fdf20b72b725f95b4d96205c1f" [label=""];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:415411ef0c9036d8f3251f5696739d30b3cdeceeee3a831af8447f926365f2c7" [label=""];
  "sha256:679b433bf94bae869c95f2e8a5596926f0cec4fdf20b72b725f95b4d96205c1f" -> "sha256:415411ef0c9036d8f3251f5696739d30b3cdeceeee3a831af8447f926365f2c7" [label=""];
  "sha256:415411ef0c9036d8f3251f5696739d30b3cdeceeee3a831af8447f926365f2c7" -> "sha256:75e069009ba56dedb04265544fdce44ddc8882e83087049b996d8375bba6e855" [label=""];
}

