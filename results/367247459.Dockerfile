[app/sources/367247459.Dockerfile]
digraph {
  "sha256:4be2c7e1191ecd948a0a2764e907bd00a14ad9805fb88e703bb30c2d7f1af3f2" [label="docker-image://mcr.microsoft.com/dotnet/core/runtime-deps:2.2-alpine3.9@sha256:32b473c658bed299dac3a7b152d43955accd7ed7738acb24ba46256075c8f8a9" shape="ellipse"];
  "sha256:8c2e762f0d69d887d991291a2c94a42c8821227b90028dc5be872a33ce18186b" [label="/bin/sh -c apk add --no-cache icu-libs" shape="box"];
  "sha256:314275288be0a9e0af642dc497ddd5549627fd0d72f64d0bf66077a5c1130434" [label="/bin/sh -c wget -O dotnet.tar.gz https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-musl-x64.tar.gz     && dotnet_sha512='5e58b1d404ce26036dfc8feea57086df76d47228fb7e023c1ed1db2c0360693780e86b3bd87f5b0a667476c8c3fe0bd6ddb5be3a06dff0cfeaa86ae5d4423c7d'     && echo \"$dotnet_sha512  dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -C /usr/share/dotnet -xzf dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet     && rm dotnet.tar.gz" shape="box"];
  "sha256:55109d46b01802766b2170254fdffcac93078ab66cdd7eb247b708c72397f4be" [label="/bin/sh -c dotnet help" shape="box"];
  "sha256:0bea31eab6c35b8130e32d74516fc83c9c633807b86c817a7387f50297fded62" [label="sha256:0bea31eab6c35b8130e32d74516fc83c9c633807b86c817a7387f50297fded62" shape="plaintext"];
  "sha256:4be2c7e1191ecd948a0a2764e907bd00a14ad9805fb88e703bb30c2d7f1af3f2" -> "sha256:8c2e762f0d69d887d991291a2c94a42c8821227b90028dc5be872a33ce18186b" [label=""];
  "sha256:8c2e762f0d69d887d991291a2c94a42c8821227b90028dc5be872a33ce18186b" -> "sha256:314275288be0a9e0af642dc497ddd5549627fd0d72f64d0bf66077a5c1130434" [label=""];
  "sha256:314275288be0a9e0af642dc497ddd5549627fd0d72f64d0bf66077a5c1130434" -> "sha256:55109d46b01802766b2170254fdffcac93078ab66cdd7eb247b708c72397f4be" [label=""];
  "sha256:55109d46b01802766b2170254fdffcac93078ab66cdd7eb247b708c72397f4be" -> "sha256:0bea31eab6c35b8130e32d74516fc83c9c633807b86c817a7387f50297fded62" [label=""];
}

