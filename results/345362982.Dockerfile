[app/sources/345362982.Dockerfile]
digraph {
  "sha256:26fdb87aabe7df5bb6c0c450519fc444250f3b69275cf261f59bffe307fb4bf2" [label="docker-image://docker.io/balenalib/surface-pro-6-debian:stretch-build" shape="ellipse"];
  "sha256:0249bd263644144612306f110c2d7b5574a825b6e2e27fe01c9bb651e86b51b2" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f9f5e91a04f3cc721556ba318b7c87b6551bace7e49e54168b4968cb729afaef" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-x64.tar.gz\"     && dotnet_sha512='7CACC139737A7B05D5ADCEA0125E0D3ED7342E1D81D94D0445DBBCB64D6DB2E9C840311966AC091AD0E4E4C737EDEE09AA0533252EC75510C9285008632ADF03'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:c0fa0ec8938b8dcc6ecb33b896e72228a03a701faf310c6124fe10ca459aad29" [label="sha256:c0fa0ec8938b8dcc6ecb33b896e72228a03a701faf310c6124fe10ca459aad29" shape="plaintext"];
  "sha256:26fdb87aabe7df5bb6c0c450519fc444250f3b69275cf261f59bffe307fb4bf2" -> "sha256:0249bd263644144612306f110c2d7b5574a825b6e2e27fe01c9bb651e86b51b2" [label=""];
  "sha256:0249bd263644144612306f110c2d7b5574a825b6e2e27fe01c9bb651e86b51b2" -> "sha256:f9f5e91a04f3cc721556ba318b7c87b6551bace7e49e54168b4968cb729afaef" [label=""];
  "sha256:f9f5e91a04f3cc721556ba318b7c87b6551bace7e49e54168b4968cb729afaef" -> "sha256:c0fa0ec8938b8dcc6ecb33b896e72228a03a701faf310c6124fe10ca459aad29" [label=""];
}

