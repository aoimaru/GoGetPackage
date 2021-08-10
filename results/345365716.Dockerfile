[app/sources/345365716.Dockerfile]
digraph {
  "sha256:e2768b2dacfe75e14454897f7d168f2e9249e5cab6be3c27d2d053b1e50ef346" [label="docker-image://docker.io/balenalib/npe-x500-m3-debian:stretch-build" shape="ellipse"];
  "sha256:af17abaaa99ceeafe0f5171a2f8cdcbaa05bfae829b4203295f835005121a1c4" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         libssl1.1         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:bfe4ae13560c060a7ccad9726751742ff4f495bab0c4584c0dc8329d9113d6fa" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-arm.tar.gz\"     && dotnet_sha512='14BB89C0E6DE5479137235B2B79BAA64B63ABD89712B7D9ED239AE0ECBFC226E8CC60287D6BD8159BFF626712BA48F5CA961692DAF018E87575FDBABDCD42C83'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:04fa72c7dfe70ca647a9d5a47b16652da951236808a034a46b344e8f3f4271ed" [label="sha256:04fa72c7dfe70ca647a9d5a47b16652da951236808a034a46b344e8f3f4271ed" shape="plaintext"];
  "sha256:e2768b2dacfe75e14454897f7d168f2e9249e5cab6be3c27d2d053b1e50ef346" -> "sha256:af17abaaa99ceeafe0f5171a2f8cdcbaa05bfae829b4203295f835005121a1c4" [label=""];
  "sha256:af17abaaa99ceeafe0f5171a2f8cdcbaa05bfae829b4203295f835005121a1c4" -> "sha256:bfe4ae13560c060a7ccad9726751742ff4f495bab0c4584c0dc8329d9113d6fa" [label=""];
  "sha256:bfe4ae13560c060a7ccad9726751742ff4f495bab0c4584c0dc8329d9113d6fa" -> "sha256:04fa72c7dfe70ca647a9d5a47b16652da951236808a034a46b344e8f3f4271ed" [label=""];
}

