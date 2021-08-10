[app/sources/345365480.Dockerfile]
digraph {
  "sha256:6700f79477a0b64af1e497a502aafb48f8d3a9c7d38bad33777cdd734a9b0d3f" [label="docker-image://docker.io/balenalib/imx6ul-var-dart-debian:stretch-build@sha256:06bbd4d3e152a0bf92162d3f0ee11f5e570581ed9ebc5374c1b391bff14ee62e" shape="ellipse"];
  "sha256:7f30798296e674b7c53f793e7a37969da02c35a1715aeb960ef790f1ce820c3e" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ac43b175d94f3e2c155b0a919a49aa571b996d3dd860639b2f87f83802013c1a" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-arm.tar.gz\"     && dotnet_sha512='4EC03929EA9995216ECFD2569BEC204AA69D55CB483267EFB800BE6CD080920B1559B60D2408489AD8FC5F436D3DCFDCD085A5B59F6084AA8AAF2CCC8157A910'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:d644695c43515def7cc83db0f55287a680cec734386ad54119b11eb943e3350c" [label="sha256:d644695c43515def7cc83db0f55287a680cec734386ad54119b11eb943e3350c" shape="plaintext"];
  "sha256:6700f79477a0b64af1e497a502aafb48f8d3a9c7d38bad33777cdd734a9b0d3f" -> "sha256:7f30798296e674b7c53f793e7a37969da02c35a1715aeb960ef790f1ce820c3e" [label=""];
  "sha256:7f30798296e674b7c53f793e7a37969da02c35a1715aeb960ef790f1ce820c3e" -> "sha256:ac43b175d94f3e2c155b0a919a49aa571b996d3dd860639b2f87f83802013c1a" [label=""];
  "sha256:ac43b175d94f3e2c155b0a919a49aa571b996d3dd860639b2f87f83802013c1a" -> "sha256:d644695c43515def7cc83db0f55287a680cec734386ad54119b11eb943e3350c" [label=""];
}

