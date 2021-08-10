[app/sources/302771593.Dockerfile]
digraph {
  "sha256:8bd83334a2395a4489cc5bebf407f61855b32f5bf9828bde2fc2877c870a4f38" [label="docker-image://docker.io/microsoft/dotnet:2.1-runtime-deps-alpine3.7" shape="ellipse"];
  "sha256:8b416a65b54c8e0a030939cec28428709f2370012263cc8bef5646e38bca08d3" [label="/bin/sh -c apk add --no-cache icu-libs" shape="box"];
  "sha256:77de88da9faeac4c8be9d9c40f1776a4871d022b31767347a2d12210b1c59a87" [label="/bin/sh -c apk add --no-cache --virtual .build-deps         openssl     && wget -O dotnet.tar.gz https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-musl-x64.tar.gz     && dotnet_sha512='0f9a6fcbad609ef1ff5b398de9a1f1bf59eebc59b28a4c8cfead28f0209bf77601d05d49f5ea1223c860a803fb82cd7e2401b6df290da34e54b36bdd8788ed48'     && echo \"$dotnet_sha512  dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -C /usr/share/dotnet -xzf dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet     && rm dotnet.tar.gz     && apk del .build-deps" shape="box"];
  "sha256:4cdc9fcce52bd27650780c52ea55d923ef2522553315ac7b8a418947545183a4" [label="/bin/sh -c apk add jq" shape="box"];
  "sha256:0cc2fd8cdce07870d302520aac7bba40660d9213ca6c3bf38ddc032e3965152c" [label="/bin/sh -c dotnet help" shape="box"];
  "sha256:283b08cd87769740daa5605a1a24ef20f0e9496d114f9f2b64541b4c3785a755" [label="local://context" shape="ellipse"];
  "sha256:fb7737672839b0e1e4c4559bc8b0a2268254412b3ba2f7f472f8e3915db5db1e" [label="copy{src=/, dest=/azure-libraries-for-net}" shape="note"];
  "sha256:9c2acf5a9b0ec22069c17ad00e6688b62c6a9f33d99d435e259dc95b7831a92d" [label="copy{src=/ci/app, dest=/app}" shape="note"];
  "sha256:e7fc209fd9ba735b39b35a2eef5e6762aa1aa2cc9556b321dbbbcd48b21d94f5" [label="/bin/sh -c cd /azure-libraries-for-net     && dotnet restore Fluent.Tests.sln" shape="box"];
  "sha256:beb7f05b3f72f13bb39437b9a9e648e5098ca50f0b4c47f4e439353d2d0552f0" [label="sha256:beb7f05b3f72f13bb39437b9a9e648e5098ca50f0b4c47f4e439353d2d0552f0" shape="plaintext"];
  "sha256:8bd83334a2395a4489cc5bebf407f61855b32f5bf9828bde2fc2877c870a4f38" -> "sha256:8b416a65b54c8e0a030939cec28428709f2370012263cc8bef5646e38bca08d3" [label=""];
  "sha256:8b416a65b54c8e0a030939cec28428709f2370012263cc8bef5646e38bca08d3" -> "sha256:77de88da9faeac4c8be9d9c40f1776a4871d022b31767347a2d12210b1c59a87" [label=""];
  "sha256:77de88da9faeac4c8be9d9c40f1776a4871d022b31767347a2d12210b1c59a87" -> "sha256:4cdc9fcce52bd27650780c52ea55d923ef2522553315ac7b8a418947545183a4" [label=""];
  "sha256:4cdc9fcce52bd27650780c52ea55d923ef2522553315ac7b8a418947545183a4" -> "sha256:0cc2fd8cdce07870d302520aac7bba40660d9213ca6c3bf38ddc032e3965152c" [label=""];
  "sha256:0cc2fd8cdce07870d302520aac7bba40660d9213ca6c3bf38ddc032e3965152c" -> "sha256:fb7737672839b0e1e4c4559bc8b0a2268254412b3ba2f7f472f8e3915db5db1e" [label=""];
  "sha256:283b08cd87769740daa5605a1a24ef20f0e9496d114f9f2b64541b4c3785a755" -> "sha256:fb7737672839b0e1e4c4559bc8b0a2268254412b3ba2f7f472f8e3915db5db1e" [label=""];
  "sha256:fb7737672839b0e1e4c4559bc8b0a2268254412b3ba2f7f472f8e3915db5db1e" -> "sha256:9c2acf5a9b0ec22069c17ad00e6688b62c6a9f33d99d435e259dc95b7831a92d" [label=""];
  "sha256:283b08cd87769740daa5605a1a24ef20f0e9496d114f9f2b64541b4c3785a755" -> "sha256:9c2acf5a9b0ec22069c17ad00e6688b62c6a9f33d99d435e259dc95b7831a92d" [label=""];
  "sha256:9c2acf5a9b0ec22069c17ad00e6688b62c6a9f33d99d435e259dc95b7831a92d" -> "sha256:e7fc209fd9ba735b39b35a2eef5e6762aa1aa2cc9556b321dbbbcd48b21d94f5" [label=""];
  "sha256:e7fc209fd9ba735b39b35a2eef5e6762aa1aa2cc9556b321dbbbcd48b21d94f5" -> "sha256:beb7f05b3f72f13bb39437b9a9e648e5098ca50f0b4c47f4e439353d2d0552f0" [label=""];
}

