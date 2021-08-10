[app/sources/345362869.Dockerfile]
digraph {
  "sha256:a8243003fa09eeb42001952f74e97b6a3157664fea85abefc653fa69219347bd" [label="docker-image://docker.io/balenalib/qemux86-64-debian:stretch-run" shape="ellipse"];
  "sha256:60d3582d6e1d945e6b8911936bc958f7cf66e2728bfa5804d77f2fd0a0730cab" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ad26878e8d6c5a34ca24ebe459d260bbd2cde738d3c76f2ba2df9917bbe49aee" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-x64.tar.gz\"     && dotnet_sha512='7CACC139737A7B05D5ADCEA0125E0D3ED7342E1D81D94D0445DBBCB64D6DB2E9C840311966AC091AD0E4E4C737EDEE09AA0533252EC75510C9285008632ADF03'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:2400751e1eaef37a68f38386ca74febb7903d42cc2d1c01a2d48a9b6455226b6" [label="sha256:2400751e1eaef37a68f38386ca74febb7903d42cc2d1c01a2d48a9b6455226b6" shape="plaintext"];
  "sha256:a8243003fa09eeb42001952f74e97b6a3157664fea85abefc653fa69219347bd" -> "sha256:60d3582d6e1d945e6b8911936bc958f7cf66e2728bfa5804d77f2fd0a0730cab" [label=""];
  "sha256:60d3582d6e1d945e6b8911936bc958f7cf66e2728bfa5804d77f2fd0a0730cab" -> "sha256:ad26878e8d6c5a34ca24ebe459d260bbd2cde738d3c76f2ba2df9917bbe49aee" [label=""];
  "sha256:ad26878e8d6c5a34ca24ebe459d260bbd2cde738d3c76f2ba2df9917bbe49aee" -> "sha256:2400751e1eaef37a68f38386ca74febb7903d42cc2d1c01a2d48a9b6455226b6" [label=""];
}

