[app/sources/345365594.Dockerfile]
digraph {
  "sha256:300b3f87c3612de683acdaa2c0b5d69958430d074795b0d4229acdcc48dd78f9" [label="docker-image://docker.io/balenalib/kitra520-debian:stretch-build" shape="ellipse"];
  "sha256:a2e9317a82c1fc3c2baaf90c70b4aaeb787cc7555fb49df43d4f55edd58244de" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:87ec4eb731de26615c8b42d76501372b23f38ad23a1fdb3e382de74fd38b8ffd" [label="/bin/sh -c curl -SL --output aspnetcore.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/aspnetcore/Runtime/$ASPNETCORE_VERSION/aspnetcore-runtime-$ASPNETCORE_VERSION-linux-arm.tar.gz\"     && aspnetcore_sha512='16AABD3FCD0EADCFBFEA37DB976E05EF8997820F84C00EEF7994BF529BB9FFDD5628E7E12164B7288DEF9CDF27F0243CFF57780FE1333AF66E6452E84EAF52C0'     && echo \"$aspnetcore_sha512  aspnetcore.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf aspnetcore.tar.gz -C /usr/share/dotnet     && rm aspnetcore.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:f7ae308facb88677f0a66e4d825da1d4d2fbcade18ef2e7bee980e0cbc2a3596" [label="sha256:f7ae308facb88677f0a66e4d825da1d4d2fbcade18ef2e7bee980e0cbc2a3596" shape="plaintext"];
  "sha256:300b3f87c3612de683acdaa2c0b5d69958430d074795b0d4229acdcc48dd78f9" -> "sha256:a2e9317a82c1fc3c2baaf90c70b4aaeb787cc7555fb49df43d4f55edd58244de" [label=""];
  "sha256:a2e9317a82c1fc3c2baaf90c70b4aaeb787cc7555fb49df43d4f55edd58244de" -> "sha256:87ec4eb731de26615c8b42d76501372b23f38ad23a1fdb3e382de74fd38b8ffd" [label=""];
  "sha256:87ec4eb731de26615c8b42d76501372b23f38ad23a1fdb3e382de74fd38b8ffd" -> "sha256:f7ae308facb88677f0a66e4d825da1d4d2fbcade18ef2e7bee980e0cbc2a3596" [label=""];
}

