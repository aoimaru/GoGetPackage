[app/sources/345365277.Dockerfile]
digraph {
  "sha256:5e9b57d1704f70c2e382576cdf3ab2b85b03936f3f8c277c70c91958add2d4bd" [label="docker-image://docker.io/balenalib/beaglebone-green-wifi-debian:stretch-run" shape="ellipse"];
  "sha256:48d32531abdf091a0fabfc770a323c87e05472b2f14f06b370bec750fb077fbf" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:dd46f5c9ec87732da82ec1d4351e8abc852b4dca62b16c7f516f5e4561f51cdc" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-arm.tar.gz\"     && dotnet_sha512='4EC03929EA9995216ECFD2569BEC204AA69D55CB483267EFB800BE6CD080920B1559B60D2408489AD8FC5F436D3DCFDCD085A5B59F6084AA8AAF2CCC8157A910'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:42f422037474b24f545cb633bc560652f7a902ca91150d828e56fdd14741f1e1" [label="sha256:42f422037474b24f545cb633bc560652f7a902ca91150d828e56fdd14741f1e1" shape="plaintext"];
  "sha256:5e9b57d1704f70c2e382576cdf3ab2b85b03936f3f8c277c70c91958add2d4bd" -> "sha256:48d32531abdf091a0fabfc770a323c87e05472b2f14f06b370bec750fb077fbf" [label=""];
  "sha256:48d32531abdf091a0fabfc770a323c87e05472b2f14f06b370bec750fb077fbf" -> "sha256:dd46f5c9ec87732da82ec1d4351e8abc852b4dca62b16c7f516f5e4561f51cdc" [label=""];
  "sha256:dd46f5c9ec87732da82ec1d4351e8abc852b4dca62b16c7f516f5e4561f51cdc" -> "sha256:42f422037474b24f545cb633bc560652f7a902ca91150d828e56fdd14741f1e1" [label=""];
}

