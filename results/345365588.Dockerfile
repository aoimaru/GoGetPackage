[app/sources/345365588.Dockerfile]
digraph {
  "sha256:300b3f87c3612de683acdaa2c0b5d69958430d074795b0d4229acdcc48dd78f9" [label="docker-image://docker.io/balenalib/kitra520-debian:stretch-build" shape="ellipse"];
  "sha256:a2e9317a82c1fc3c2baaf90c70b4aaeb787cc7555fb49df43d4f55edd58244de" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ff675d201e3cf8df5aee3bf99c36831ae81a672d269f7e982d36a30b13db2123" [label="/bin/sh -c curl -SL --output aspnetcore.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/aspnetcore/Runtime/$ASPNETCORE_VERSION/aspnetcore-runtime-$ASPNETCORE_VERSION-linux-arm.tar.gz\"     && aspnetcore_sha512='5F4B016947E5706B6ED7A5BB9F767F1F966CAC2267815C3F4E16E1623888B6731122D3779F46556038E6951E72C48B0888A9385C103D2FF6147EFDFF0D148064'     && echo \"$aspnetcore_sha512  aspnetcore.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf aspnetcore.tar.gz -C /usr/share/dotnet     && rm aspnetcore.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:30b680e757c9e69356b00c880ee97266c2f68a9ef4f34faa91e545319cd931a8" [label="sha256:30b680e757c9e69356b00c880ee97266c2f68a9ef4f34faa91e545319cd931a8" shape="plaintext"];
  "sha256:300b3f87c3612de683acdaa2c0b5d69958430d074795b0d4229acdcc48dd78f9" -> "sha256:a2e9317a82c1fc3c2baaf90c70b4aaeb787cc7555fb49df43d4f55edd58244de" [label=""];
  "sha256:a2e9317a82c1fc3c2baaf90c70b4aaeb787cc7555fb49df43d4f55edd58244de" -> "sha256:ff675d201e3cf8df5aee3bf99c36831ae81a672d269f7e982d36a30b13db2123" [label=""];
  "sha256:ff675d201e3cf8df5aee3bf99c36831ae81a672d269f7e982d36a30b13db2123" -> "sha256:30b680e757c9e69356b00c880ee97266c2f68a9ef4f34faa91e545319cd931a8" [label=""];
}

