[app/sources/345365348.Dockerfile]
digraph {
  "sha256:27315f8651f80d251ad220f4fbbb6bb16f359a28dcf5f887605329a58d79dc75" [label="docker-image://docker.io/balenalib/ccon-01-debian:stretch-build" shape="ellipse"];
  "sha256:bbc2a778feda66635eed3100bc969bfe402894b13645541b88225ce9de34e5fc" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c84f737eaaa569f85317091fc86a118d15f75836035c4f4c1254529aada97221" [label="/bin/sh -c curl -SL --output aspnetcore.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/aspnetcore/Runtime/$ASPNETCORE_VERSION/aspnetcore-runtime-$ASPNETCORE_VERSION-linux-arm.tar.gz\"     && aspnetcore_sha512='16AABD3FCD0EADCFBFEA37DB976E05EF8997820F84C00EEF7994BF529BB9FFDD5628E7E12164B7288DEF9CDF27F0243CFF57780FE1333AF66E6452E84EAF52C0'     && echo \"$aspnetcore_sha512  aspnetcore.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf aspnetcore.tar.gz -C /usr/share/dotnet     && rm aspnetcore.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:9c9a80f884b39abcc6f28ad26b2bcf022b9bc39b9922327cb22b6dd813077d37" [label="sha256:9c9a80f884b39abcc6f28ad26b2bcf022b9bc39b9922327cb22b6dd813077d37" shape="plaintext"];
  "sha256:27315f8651f80d251ad220f4fbbb6bb16f359a28dcf5f887605329a58d79dc75" -> "sha256:bbc2a778feda66635eed3100bc969bfe402894b13645541b88225ce9de34e5fc" [label=""];
  "sha256:bbc2a778feda66635eed3100bc969bfe402894b13645541b88225ce9de34e5fc" -> "sha256:c84f737eaaa569f85317091fc86a118d15f75836035c4f4c1254529aada97221" [label=""];
  "sha256:c84f737eaaa569f85317091fc86a118d15f75836035c4f4c1254529aada97221" -> "sha256:9c9a80f884b39abcc6f28ad26b2bcf022b9bc39b9922327cb22b6dd813077d37" [label=""];
}

