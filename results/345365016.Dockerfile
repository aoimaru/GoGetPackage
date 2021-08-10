[app/sources/345365016.Dockerfile]
digraph {
  "sha256:fece4bde0d909d52b75aac735b2a31b1ea09155946c2964a85de2852fa02c5fc" [label="docker-image://docker.io/balenalib/am571x-evm-debian:stretch-build" shape="ellipse"];
  "sha256:a8ed6f387e571c52b6819604ac0ca66399211a92c5824322b68f0aaefc43c87b" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:25a1cd1bc6c7a75a4162fd0c2fc159b171ca90af9a59e29a1db3c19d34992a39" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-arm.tar.gz\"     && dotnet_sha512='D3A545AE8EE19D6AA19B349CA634FE321A477779E5C74AD6C8BD1657B55C3440142FEB8FB4C46FD41B6697D0B9565BDADD78365B1E36115670037D7FB1041B82'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:ef3fbda0125abfbe2c9387436d40ad1a72d0987691c89f83cdb43896bb0cfded" [label="sha256:ef3fbda0125abfbe2c9387436d40ad1a72d0987691c89f83cdb43896bb0cfded" shape="plaintext"];
  "sha256:fece4bde0d909d52b75aac735b2a31b1ea09155946c2964a85de2852fa02c5fc" -> "sha256:a8ed6f387e571c52b6819604ac0ca66399211a92c5824322b68f0aaefc43c87b" [label=""];
  "sha256:a8ed6f387e571c52b6819604ac0ca66399211a92c5824322b68f0aaefc43c87b" -> "sha256:25a1cd1bc6c7a75a4162fd0c2fc159b171ca90af9a59e29a1db3c19d34992a39" [label=""];
  "sha256:25a1cd1bc6c7a75a4162fd0c2fc159b171ca90af9a59e29a1db3c19d34992a39" -> "sha256:ef3fbda0125abfbe2c9387436d40ad1a72d0987691c89f83cdb43896bb0cfded" [label=""];
}

