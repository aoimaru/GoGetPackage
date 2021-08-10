[app/sources/345365463.Dockerfile]
digraph {
  "sha256:7638ae449ffe3bac8174004019e26480cd210cb1824a4a63e12f17bc84c3ca37" [label="docker-image://docker.io/balenalib/hummingboard-debian:stretch-run" shape="ellipse"];
  "sha256:3e7e579376e7c893d6de772676abb84fdd8b6520a1f0e1d88fda4c7d9ac41bb9" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:309205a609346612d2ca870f1dd28477d06a967a63c268234acb2fbf73d3cef5" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-arm.tar.gz\"     && dotnet_sha512='4EC03929EA9995216ECFD2569BEC204AA69D55CB483267EFB800BE6CD080920B1559B60D2408489AD8FC5F436D3DCFDCD085A5B59F6084AA8AAF2CCC8157A910'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:61c77fe6b6aa43b7d4c9ff27527c79835880eec308bdf7d24449f4e5e3fd0b7a" [label="sha256:61c77fe6b6aa43b7d4c9ff27527c79835880eec308bdf7d24449f4e5e3fd0b7a" shape="plaintext"];
  "sha256:7638ae449ffe3bac8174004019e26480cd210cb1824a4a63e12f17bc84c3ca37" -> "sha256:3e7e579376e7c893d6de772676abb84fdd8b6520a1f0e1d88fda4c7d9ac41bb9" [label=""];
  "sha256:3e7e579376e7c893d6de772676abb84fdd8b6520a1f0e1d88fda4c7d9ac41bb9" -> "sha256:309205a609346612d2ca870f1dd28477d06a967a63c268234acb2fbf73d3cef5" [label=""];
  "sha256:309205a609346612d2ca870f1dd28477d06a967a63c268234acb2fbf73d3cef5" -> "sha256:61c77fe6b6aa43b7d4c9ff27527c79835880eec308bdf7d24449f4e5e3fd0b7a" [label=""];
}

