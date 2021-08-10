[app/sources/345365657.Dockerfile]
digraph {
  "sha256:560c3a6fe402b739f9cd4341e69da9c0148c4b0ee33681b3c4dd4f0c088d6791" [label="docker-image://docker.io/balenalib/nanopi-neo-air-debian:stretch-run" shape="ellipse"];
  "sha256:5ac6f9b08751afc67a7eef02e0a6f1b2a7d12e8699612541da570e2263cedcb0" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ee149d2119d613fb1f2b750090f82ec5d8a6c9122fc02f93e7222ee3ae07eb56" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-arm.tar.gz\"     && dotnet_sha512='D3A545AE8EE19D6AA19B349CA634FE321A477779E5C74AD6C8BD1657B55C3440142FEB8FB4C46FD41B6697D0B9565BDADD78365B1E36115670037D7FB1041B82'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:da1ba8a0b9fa6eff56868f73c133c45cd9cc680333b9996c785b3d43209f9fa8" [label="sha256:da1ba8a0b9fa6eff56868f73c133c45cd9cc680333b9996c785b3d43209f9fa8" shape="plaintext"];
  "sha256:560c3a6fe402b739f9cd4341e69da9c0148c4b0ee33681b3c4dd4f0c088d6791" -> "sha256:5ac6f9b08751afc67a7eef02e0a6f1b2a7d12e8699612541da570e2263cedcb0" [label=""];
  "sha256:5ac6f9b08751afc67a7eef02e0a6f1b2a7d12e8699612541da570e2263cedcb0" -> "sha256:ee149d2119d613fb1f2b750090f82ec5d8a6c9122fc02f93e7222ee3ae07eb56" [label=""];
  "sha256:ee149d2119d613fb1f2b750090f82ec5d8a6c9122fc02f93e7222ee3ae07eb56" -> "sha256:da1ba8a0b9fa6eff56868f73c133c45cd9cc680333b9996c785b3d43209f9fa8" [label=""];
}

