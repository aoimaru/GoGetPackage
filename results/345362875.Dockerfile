[app/sources/345362875.Dockerfile]
digraph {
  "sha256:a8243003fa09eeb42001952f74e97b6a3157664fea85abefc653fa69219347bd" [label="docker-image://docker.io/balenalib/qemux86-64-debian:stretch-run" shape="ellipse"];
  "sha256:fe4e04c0fd0e286b681d7a9358028233d4befec32961545e6cd12b879d4b4532" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         libssl1.1         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:39988c9d22c7657c1de51deab56e01c10cdd3bd95f07e82172815262a744b895" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-x64.tar.gz\"     && dotnet_sha512='BCE60AB112BC9F47FE968EDFD96EC7254020ACB5D4F9263F91E1D66BC2B8B953F9B945D172619A2707B032F117C11E77423E43864E6CE31E0B1174A51CB55B8E'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:952804d320f9fa668ace5ac783836ddf17e333b9fd49c8ba91213e81782aae7c" [label="sha256:952804d320f9fa668ace5ac783836ddf17e333b9fd49c8ba91213e81782aae7c" shape="plaintext"];
  "sha256:a8243003fa09eeb42001952f74e97b6a3157664fea85abefc653fa69219347bd" -> "sha256:fe4e04c0fd0e286b681d7a9358028233d4befec32961545e6cd12b879d4b4532" [label=""];
  "sha256:fe4e04c0fd0e286b681d7a9358028233d4befec32961545e6cd12b879d4b4532" -> "sha256:39988c9d22c7657c1de51deab56e01c10cdd3bd95f07e82172815262a744b895" [label=""];
  "sha256:39988c9d22c7657c1de51deab56e01c10cdd3bd95f07e82172815262a744b895" -> "sha256:952804d320f9fa668ace5ac783836ddf17e333b9fd49c8ba91213e81782aae7c" [label=""];
}

