[app/sources/345362771.Dockerfile]
digraph {
  "sha256:4612443dd69d64ffbb4863b0fbd5984fd3af112561001b3e77433179e50b3681" [label="docker-image://docker.io/balenalib/orange-pi-lite-debian:stretch-run" shape="ellipse"];
  "sha256:7e85596b41b96788d8367f0e0f85a11a26729befd90d57a1f7b953c0d5f376e5" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         libssl1.1         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:20f81b50622f061c435e2517adb8d47307be6887963818b5bd9fce66493218fa" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-arm.tar.gz\"     && dotnet_sha512='14BB89C0E6DE5479137235B2B79BAA64B63ABD89712B7D9ED239AE0ECBFC226E8CC60287D6BD8159BFF626712BA48F5CA961692DAF018E87575FDBABDCD42C83'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:23fdcaf367af1e5f5af6783c18abe7078bc5abe9ad74527a14201b1ea2af47c6" [label="sha256:23fdcaf367af1e5f5af6783c18abe7078bc5abe9ad74527a14201b1ea2af47c6" shape="plaintext"];
  "sha256:4612443dd69d64ffbb4863b0fbd5984fd3af112561001b3e77433179e50b3681" -> "sha256:7e85596b41b96788d8367f0e0f85a11a26729befd90d57a1f7b953c0d5f376e5" [label=""];
  "sha256:7e85596b41b96788d8367f0e0f85a11a26729befd90d57a1f7b953c0d5f376e5" -> "sha256:20f81b50622f061c435e2517adb8d47307be6887963818b5bd9fce66493218fa" [label=""];
  "sha256:20f81b50622f061c435e2517adb8d47307be6887963818b5bd9fce66493218fa" -> "sha256:23fdcaf367af1e5f5af6783c18abe7078bc5abe9ad74527a14201b1ea2af47c6" [label=""];
}

