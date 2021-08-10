[app/sources/345365602.Dockerfile]
digraph {
  "sha256:300b3f87c3612de683acdaa2c0b5d69958430d074795b0d4229acdcc48dd78f9" [label="docker-image://docker.io/balenalib/kitra520-debian:stretch-build" shape="ellipse"];
  "sha256:a485cc829ffc71882d17f959b494d6a076262beb7630734baf2c54031f003ab1" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         libssl1.1         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5193f3d49db4ece14acd2285924c129890122c61e0f9047a61f2ae39704dd2a4" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-arm.tar.gz\"     && dotnet_sha512='14BB89C0E6DE5479137235B2B79BAA64B63ABD89712B7D9ED239AE0ECBFC226E8CC60287D6BD8159BFF626712BA48F5CA961692DAF018E87575FDBABDCD42C83'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:7db3e0d0a5b212afe0f5e62f8f04b4b2df520b828b23ad663f89857bef61fd17" [label="sha256:7db3e0d0a5b212afe0f5e62f8f04b4b2df520b828b23ad663f89857bef61fd17" shape="plaintext"];
  "sha256:300b3f87c3612de683acdaa2c0b5d69958430d074795b0d4229acdcc48dd78f9" -> "sha256:a485cc829ffc71882d17f959b494d6a076262beb7630734baf2c54031f003ab1" [label=""];
  "sha256:a485cc829ffc71882d17f959b494d6a076262beb7630734baf2c54031f003ab1" -> "sha256:5193f3d49db4ece14acd2285924c129890122c61e0f9047a61f2ae39704dd2a4" [label=""];
  "sha256:5193f3d49db4ece14acd2285924c129890122c61e0f9047a61f2ae39704dd2a4" -> "sha256:7db3e0d0a5b212afe0f5e62f8f04b4b2df520b828b23ad663f89857bef61fd17" [label=""];
}

