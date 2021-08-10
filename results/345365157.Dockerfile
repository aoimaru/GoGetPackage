[app/sources/345365157.Dockerfile]
digraph {
  "sha256:0e48eaf7048d600e9780a4e066b68ce59bf10683332cad1d4613daecdc3a4577" [label="docker-image://docker.io/balenalib/artik710-debian:stretch-run@sha256:efebe0bd2330bfea1e171acadde7a5fd30a35dce6442e8738f9dfd7ac7595552" shape="ellipse"];
  "sha256:a45ac5d664dd5c82ca8e16573f0f054582f3070cc84017f8c0a3e34709ecdef0" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:375419e37c6b011157ce464bcac01d01e01ed71356d26491188ca61d39d35c0e" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-arm64.tar.gz\"     && dotnet_sha512='3D0DEABC092865BD3583312FE14211BD94275F569EAE9D32F447B29D55D31B4B61FADA36ECFB88CB7E9B185C1F3D67A1F270DBFD3D691ACE249DEF3797926F06'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:1e9f0ae07ce0b050969775c40eb93bf0a2d16b00e223301bc22e5d78dd3e9b37" [label="sha256:1e9f0ae07ce0b050969775c40eb93bf0a2d16b00e223301bc22e5d78dd3e9b37" shape="plaintext"];
  "sha256:0e48eaf7048d600e9780a4e066b68ce59bf10683332cad1d4613daecdc3a4577" -> "sha256:a45ac5d664dd5c82ca8e16573f0f054582f3070cc84017f8c0a3e34709ecdef0" [label=""];
  "sha256:a45ac5d664dd5c82ca8e16573f0f054582f3070cc84017f8c0a3e34709ecdef0" -> "sha256:375419e37c6b011157ce464bcac01d01e01ed71356d26491188ca61d39d35c0e" [label=""];
  "sha256:375419e37c6b011157ce464bcac01d01e01ed71356d26491188ca61d39d35c0e" -> "sha256:1e9f0ae07ce0b050969775c40eb93bf0a2d16b00e223301bc22e5d78dd3e9b37" [label=""];
}

