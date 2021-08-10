[app/sources/345365240.Dockerfile]
digraph {
  "sha256:547640712498b598c8952d01b11e535579cca6460f27881474ab895b4321d8c9" [label="docker-image://docker.io/balenalib/beaglebone-black-debian:stretch-build" shape="ellipse"];
  "sha256:05ce0cb2c97f97141274a10b8ea6a5626e768d4e6b8d887a2f790d6053a5466b" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2e4146530215ce143c58c93fdd22fa183fc99e90148b5aa9d24e2a5a46b913da" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-arm.tar.gz\"     && dotnet_sha512='4EC03929EA9995216ECFD2569BEC204AA69D55CB483267EFB800BE6CD080920B1559B60D2408489AD8FC5F436D3DCFDCD085A5B59F6084AA8AAF2CCC8157A910'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:4aa2d5cd892d3a964c1c25b3db4c3754172d392dc8ca45aa5a892ea39e6fcc92" [label="sha256:4aa2d5cd892d3a964c1c25b3db4c3754172d392dc8ca45aa5a892ea39e6fcc92" shape="plaintext"];
  "sha256:547640712498b598c8952d01b11e535579cca6460f27881474ab895b4321d8c9" -> "sha256:05ce0cb2c97f97141274a10b8ea6a5626e768d4e6b8d887a2f790d6053a5466b" [label=""];
  "sha256:05ce0cb2c97f97141274a10b8ea6a5626e768d4e6b8d887a2f790d6053a5466b" -> "sha256:2e4146530215ce143c58c93fdd22fa183fc99e90148b5aa9d24e2a5a46b913da" [label=""];
  "sha256:2e4146530215ce143c58c93fdd22fa183fc99e90148b5aa9d24e2a5a46b913da" -> "sha256:4aa2d5cd892d3a964c1c25b3db4c3754172d392dc8ca45aa5a892ea39e6fcc92" [label=""];
}

