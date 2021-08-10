[app/sources/345365301.Dockerfile]
digraph {
  "sha256:692d26bcf5f05f89aa628b21dde76421067085fc35dde793e4e4a6d08d77053c" [label="docker-image://docker.io/balenalib/beaglebone-green-debian:stretch-run" shape="ellipse"];
  "sha256:394a2c225b781167f147fc016eb5fc7b8e5db5e7ec9b0c576fe90b8a84dd57c9" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:66b6eb6025f5abd11f0bd978268351fc7de9c20c9587f560b68af8757c637bac" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-arm.tar.gz\"     && dotnet_sha512='D3A545AE8EE19D6AA19B349CA634FE321A477779E5C74AD6C8BD1657B55C3440142FEB8FB4C46FD41B6697D0B9565BDADD78365B1E36115670037D7FB1041B82'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:abd785cef139d3aebb6bb68ed0497ae034d77d12b82a9ce8669dd18e5a9b7500" [label="sha256:abd785cef139d3aebb6bb68ed0497ae034d77d12b82a9ce8669dd18e5a9b7500" shape="plaintext"];
  "sha256:692d26bcf5f05f89aa628b21dde76421067085fc35dde793e4e4a6d08d77053c" -> "sha256:394a2c225b781167f147fc016eb5fc7b8e5db5e7ec9b0c576fe90b8a84dd57c9" [label=""];
  "sha256:394a2c225b781167f147fc016eb5fc7b8e5db5e7ec9b0c576fe90b8a84dd57c9" -> "sha256:66b6eb6025f5abd11f0bd978268351fc7de9c20c9587f560b68af8757c637bac" [label=""];
  "sha256:66b6eb6025f5abd11f0bd978268351fc7de9c20c9587f560b68af8757c637bac" -> "sha256:abd785cef139d3aebb6bb68ed0497ae034d77d12b82a9ce8669dd18e5a9b7500" [label=""];
}

