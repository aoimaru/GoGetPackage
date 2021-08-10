[app/sources/345362842.Dockerfile]
digraph {
  "sha256:bd6ccde2c2ad50ec15a3c8f71d7f3f99cd3b96f9446c7a23d9b56d5f1dc26d77" [label="docker-image://docker.io/balenalib/parallella-debian:stretch-build" shape="ellipse"];
  "sha256:db488aae829bd4ecdca397f40574164f236c1600bce35ecbe5abecd54df94f01" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d5c183649c9365471eae658a89b0c1b291a6855aa8fce2d38356b7748bcecef9" [label="/bin/sh -c curl -SL --output aspnetcore.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/aspnetcore/Runtime/$ASPNETCORE_VERSION/aspnetcore-runtime-$ASPNETCORE_VERSION-linux-arm.tar.gz\"     && aspnetcore_sha512='5F4B016947E5706B6ED7A5BB9F767F1F966CAC2267815C3F4E16E1623888B6731122D3779F46556038E6951E72C48B0888A9385C103D2FF6147EFDFF0D148064'     && echo \"$aspnetcore_sha512  aspnetcore.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf aspnetcore.tar.gz -C /usr/share/dotnet     && rm aspnetcore.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:d6e6094950100d8ba2f09c7554304cb09f0d68ba5c20229734a11e65d139af70" [label="sha256:d6e6094950100d8ba2f09c7554304cb09f0d68ba5c20229734a11e65d139af70" shape="plaintext"];
  "sha256:bd6ccde2c2ad50ec15a3c8f71d7f3f99cd3b96f9446c7a23d9b56d5f1dc26d77" -> "sha256:db488aae829bd4ecdca397f40574164f236c1600bce35ecbe5abecd54df94f01" [label=""];
  "sha256:db488aae829bd4ecdca397f40574164f236c1600bce35ecbe5abecd54df94f01" -> "sha256:d5c183649c9365471eae658a89b0c1b291a6855aa8fce2d38356b7748bcecef9" [label=""];
  "sha256:d5c183649c9365471eae658a89b0c1b291a6855aa8fce2d38356b7748bcecef9" -> "sha256:d6e6094950100d8ba2f09c7554304cb09f0d68ba5c20229734a11e65d139af70" [label=""];
}

