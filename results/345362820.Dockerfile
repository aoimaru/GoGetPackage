[app/sources/345362820.Dockerfile]
digraph {
  "sha256:ef0add3fcdfde3b3129be2602975ac72030582d2e2f1de70dc4a8f803121d928" [label="docker-image://docker.io/balenalib/orangepi-plus2-debian:stretch-build" shape="ellipse"];
  "sha256:a669862711bb2455e01cb6888ef7360fe7aaab86121d934197d3c9fecdbbc5d4" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0c8de8c94f32cea766c8c7dbe7f128ba6a8089e45284605e666761ed9264dc4d" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-arm.tar.gz\"     && dotnet_sha512='C3D52801C3B65BEE33CDCBDE2206DA54EBCFF918D4AC9277AE8B9975C58F8A81F341E5FB1FFF7489D809118FEFCE1506C2AF657D83D90C1D1BED23FDB4A8736D'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:dc9e73eb02205dcd93a463c4d0b2ee35b45da7b247aa56a8f3b2af27bcbad3ab" [label="/bin/sh -c dotnet help" shape="box"];
  "sha256:24bf5b9a88d7e67d7542dc47b760d5d2a31d76909f9b6b3c8494d48361e17b09" [label="sha256:24bf5b9a88d7e67d7542dc47b760d5d2a31d76909f9b6b3c8494d48361e17b09" shape="plaintext"];
  "sha256:ef0add3fcdfde3b3129be2602975ac72030582d2e2f1de70dc4a8f803121d928" -> "sha256:a669862711bb2455e01cb6888ef7360fe7aaab86121d934197d3c9fecdbbc5d4" [label=""];
  "sha256:a669862711bb2455e01cb6888ef7360fe7aaab86121d934197d3c9fecdbbc5d4" -> "sha256:0c8de8c94f32cea766c8c7dbe7f128ba6a8089e45284605e666761ed9264dc4d" [label=""];
  "sha256:0c8de8c94f32cea766c8c7dbe7f128ba6a8089e45284605e666761ed9264dc4d" -> "sha256:dc9e73eb02205dcd93a463c4d0b2ee35b45da7b247aa56a8f3b2af27bcbad3ab" [label=""];
  "sha256:dc9e73eb02205dcd93a463c4d0b2ee35b45da7b247aa56a8f3b2af27bcbad3ab" -> "sha256:24bf5b9a88d7e67d7542dc47b760d5d2a31d76909f9b6b3c8494d48361e17b09" [label=""];
}

