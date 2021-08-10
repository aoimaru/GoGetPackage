[app/sources/345365288.Dockerfile]
digraph {
  "sha256:c50d6bb93227773a2c78ca80e58e15c40fedabf3d106902e447ccd2581c9d974" [label="docker-image://docker.io/balenalib/beaglebone-green-wifi-debian:stretch-build" shape="ellipse"];
  "sha256:cd4cc4b62648f1ce6b828890dee04a5aaeb99b42c36e57617e0cd6e6ce4085dd" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         libssl1.1         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5f22e912b4330f46be39dcf9b50e76ff3b18bdcf5adce462a642c3510fdb5f1c" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-arm.tar.gz\"     && dotnet_sha512='14BB89C0E6DE5479137235B2B79BAA64B63ABD89712B7D9ED239AE0ECBFC226E8CC60287D6BD8159BFF626712BA48F5CA961692DAF018E87575FDBABDCD42C83'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:a9823d968764bd99164b0451d6c58d0fc71c414cafc9099c215246ce45c67136" [label="sha256:a9823d968764bd99164b0451d6c58d0fc71c414cafc9099c215246ce45c67136" shape="plaintext"];
  "sha256:c50d6bb93227773a2c78ca80e58e15c40fedabf3d106902e447ccd2581c9d974" -> "sha256:cd4cc4b62648f1ce6b828890dee04a5aaeb99b42c36e57617e0cd6e6ce4085dd" [label=""];
  "sha256:cd4cc4b62648f1ce6b828890dee04a5aaeb99b42c36e57617e0cd6e6ce4085dd" -> "sha256:5f22e912b4330f46be39dcf9b50e76ff3b18bdcf5adce462a642c3510fdb5f1c" [label=""];
  "sha256:5f22e912b4330f46be39dcf9b50e76ff3b18bdcf5adce462a642c3510fdb5f1c" -> "sha256:a9823d968764bd99164b0451d6c58d0fc71c414cafc9099c215246ce45c67136" [label=""];
}

