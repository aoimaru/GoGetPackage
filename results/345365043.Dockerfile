[app/sources/345365043.Dockerfile]
digraph {
  "sha256:d3d5ac8b7991c1d481d7fa1a7bf9bc0bf9866f259fb61f805a1af262009f7dbb" [label="docker-image://docker.io/balenalib/amd64-debian:stretch-run" shape="ellipse"];
  "sha256:b25d8fb4fe0d8fc694bc4cce764de5eade62d891167b149de71dfa62846bfd10" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         libssl1.1         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ba97131150245f2de71d16720ac9eb25ac0ec5ead1405fe00db10da85e7d3ee8" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz\"     && dotnet_sha512='207AF1F3161CBD0864902370475FCAD5B500BF2B7199B06445E7C338053BC7CB0157EE1B4D00A37A351EAE6E209417EE4A15EEACEE086AAC0AC1BE7A62F3AD0B'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:c8d7f82156a12c78bced803ed8cd5c3828dd54019671d8794ae1152ea9a7cabd" [label="/bin/sh -c dotnet help" shape="box"];
  "sha256:0a15684c795aadbe1ef09c2c30c5aaabe1cb9d66bf00449aa08aa50ebd0157e1" [label="sha256:0a15684c795aadbe1ef09c2c30c5aaabe1cb9d66bf00449aa08aa50ebd0157e1" shape="plaintext"];
  "sha256:d3d5ac8b7991c1d481d7fa1a7bf9bc0bf9866f259fb61f805a1af262009f7dbb" -> "sha256:b25d8fb4fe0d8fc694bc4cce764de5eade62d891167b149de71dfa62846bfd10" [label=""];
  "sha256:b25d8fb4fe0d8fc694bc4cce764de5eade62d891167b149de71dfa62846bfd10" -> "sha256:ba97131150245f2de71d16720ac9eb25ac0ec5ead1405fe00db10da85e7d3ee8" [label=""];
  "sha256:ba97131150245f2de71d16720ac9eb25ac0ec5ead1405fe00db10da85e7d3ee8" -> "sha256:c8d7f82156a12c78bced803ed8cd5c3828dd54019671d8794ae1152ea9a7cabd" [label=""];
  "sha256:c8d7f82156a12c78bced803ed8cd5c3828dd54019671d8794ae1152ea9a7cabd" -> "sha256:0a15684c795aadbe1ef09c2c30c5aaabe1cb9d66bf00449aa08aa50ebd0157e1" [label=""];
}

