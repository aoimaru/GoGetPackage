[app/sources/345365068.Dockerfile]
digraph {
  "sha256:653883623d934b03626b742595b6fd3f83c1eb7955e53f9e8106d4a0a46f0d18" [label="docker-image://docker.io/balenalib/armv7hf-debian:stretch-build" shape="ellipse"];
  "sha256:eb401b0df8c64586eaa1283782149f28577b1dad7ff60eedbdb47b1f91d45afc" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:abeff04d232224f6c5052d6f3bf1780850d9f79833a814a30e331c1501740b3c" [label="/bin/sh -c curl -SL --output aspnetcore.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/aspnetcore/Runtime/$ASPNETCORE_VERSION/aspnetcore-runtime-$ASPNETCORE_VERSION-linux-arm.tar.gz\"     && aspnetcore_sha512='16AABD3FCD0EADCFBFEA37DB976E05EF8997820F84C00EEF7994BF529BB9FFDD5628E7E12164B7288DEF9CDF27F0243CFF57780FE1333AF66E6452E84EAF52C0'     && echo \"$aspnetcore_sha512  aspnetcore.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf aspnetcore.tar.gz -C /usr/share/dotnet     && rm aspnetcore.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:664939cef3ea0cda3f4a18524a367bc58ff25b0210142fe510f7379f33eb2766" [label="sha256:664939cef3ea0cda3f4a18524a367bc58ff25b0210142fe510f7379f33eb2766" shape="plaintext"];
  "sha256:653883623d934b03626b742595b6fd3f83c1eb7955e53f9e8106d4a0a46f0d18" -> "sha256:eb401b0df8c64586eaa1283782149f28577b1dad7ff60eedbdb47b1f91d45afc" [label=""];
  "sha256:eb401b0df8c64586eaa1283782149f28577b1dad7ff60eedbdb47b1f91d45afc" -> "sha256:abeff04d232224f6c5052d6f3bf1780850d9f79833a814a30e331c1501740b3c" [label=""];
  "sha256:abeff04d232224f6c5052d6f3bf1780850d9f79833a814a30e331c1501740b3c" -> "sha256:664939cef3ea0cda3f4a18524a367bc58ff25b0210142fe510f7379f33eb2766" [label=""];
}

