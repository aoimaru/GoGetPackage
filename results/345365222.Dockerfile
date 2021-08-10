[app/sources/345365222.Dockerfile]
digraph {
  "sha256:7fbe07fd642a1c615afbf9edeae384142be1d5e335cd86bdebbeb14925a45639" [label="docker-image://docker.io/balenalib/beagleboard-xm-debian:stretch-build" shape="ellipse"];
  "sha256:7338d4cad7bddefd77733b9d77575af13e13d7dc528644bae3f229ef24df4c9e" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f55c9db6f711226b13162635e7061a3703104a3b01ef644bd607b29ece7c3d09" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-arm.tar.gz\"     && dotnet_sha512='4EC03929EA9995216ECFD2569BEC204AA69D55CB483267EFB800BE6CD080920B1559B60D2408489AD8FC5F436D3DCFDCD085A5B59F6084AA8AAF2CCC8157A910'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:6e2ce2550439948e3959c6e8f1e4e6ca3532503070dc4f01dab890a10abf1206" [label="sha256:6e2ce2550439948e3959c6e8f1e4e6ca3532503070dc4f01dab890a10abf1206" shape="plaintext"];
  "sha256:7fbe07fd642a1c615afbf9edeae384142be1d5e335cd86bdebbeb14925a45639" -> "sha256:7338d4cad7bddefd77733b9d77575af13e13d7dc528644bae3f229ef24df4c9e" [label=""];
  "sha256:7338d4cad7bddefd77733b9d77575af13e13d7dc528644bae3f229ef24df4c9e" -> "sha256:f55c9db6f711226b13162635e7061a3703104a3b01ef644bd607b29ece7c3d09" [label=""];
  "sha256:f55c9db6f711226b13162635e7061a3703104a3b01ef644bd607b29ece7c3d09" -> "sha256:6e2ce2550439948e3959c6e8f1e4e6ca3532503070dc4f01dab890a10abf1206" [label=""];
}

