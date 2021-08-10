[app/sources/345362817.Dockerfile]
digraph {
  "sha256:e49c5d4cdcc84dbc855f8fea00dc3e808c0581b820a5f9c34a17f40591c04d8f" [label="docker-image://docker.io/balenalib/orangepi-plus2-debian:stretch-run" shape="ellipse"];
  "sha256:683d5788f0756f3d5b321f666eaff893c8b57bf10972cd5115b6cf2cf6664d1f" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8384189a6ef1118ab56834964a87ef9062bc22b0da2aab98c881fa4d61e38482" [label="/bin/sh -c curl -SL --output aspnetcore.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/aspnetcore/Runtime/$ASPNETCORE_VERSION/aspnetcore-runtime-$ASPNETCORE_VERSION-linux-arm.tar.gz\"     && aspnetcore_sha512='16AABD3FCD0EADCFBFEA37DB976E05EF8997820F84C00EEF7994BF529BB9FFDD5628E7E12164B7288DEF9CDF27F0243CFF57780FE1333AF66E6452E84EAF52C0'     && echo \"$aspnetcore_sha512  aspnetcore.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf aspnetcore.tar.gz -C /usr/share/dotnet     && rm aspnetcore.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:c5361a44d4e09cd4efdbe14d4e9936970f584718a4b8c013523071d19a3b9052" [label="sha256:c5361a44d4e09cd4efdbe14d4e9936970f584718a4b8c013523071d19a3b9052" shape="plaintext"];
  "sha256:e49c5d4cdcc84dbc855f8fea00dc3e808c0581b820a5f9c34a17f40591c04d8f" -> "sha256:683d5788f0756f3d5b321f666eaff893c8b57bf10972cd5115b6cf2cf6664d1f" [label=""];
  "sha256:683d5788f0756f3d5b321f666eaff893c8b57bf10972cd5115b6cf2cf6664d1f" -> "sha256:8384189a6ef1118ab56834964a87ef9062bc22b0da2aab98c881fa4d61e38482" [label=""];
  "sha256:8384189a6ef1118ab56834964a87ef9062bc22b0da2aab98c881fa4d61e38482" -> "sha256:c5361a44d4e09cd4efdbe14d4e9936970f584718a4b8c013523071d19a3b9052" [label=""];
}

