[app/sources/345362956.Dockerfile]
digraph {
  "sha256:31f35be0cdac9492ba46c6fc1e2d707a9e7ef4d8e6ea5de2a57fcd1b3787bea0" [label="docker-image://docker.io/balenalib/spacely-tx2-debian:stretch-build" shape="ellipse"];
  "sha256:9f020960d55c64ee1d5804a4f6314be4e93404f42e70be6b67a46faf93b4929b" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         libssl1.1         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5f82e7e31eae222fe5e74ba7643bcbe369b1835eefc4966266d0d8f747f4d7d9" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-arm64.tar.gz\"     && dotnet_sha512='05115F8B1948C919A2880FCD402B7867C12F4F7130213FA060ED684E38EBDE512DA0BD85345E48A14FCD05BF976447275C2AEC6C47309474CCC66B79E60251E6'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:c24555d1f601214311309a413ded9f44eff97fa3d69e0aecb78b78a135b0d0b7" [label="sha256:c24555d1f601214311309a413ded9f44eff97fa3d69e0aecb78b78a135b0d0b7" shape="plaintext"];
  "sha256:31f35be0cdac9492ba46c6fc1e2d707a9e7ef4d8e6ea5de2a57fcd1b3787bea0" -> "sha256:9f020960d55c64ee1d5804a4f6314be4e93404f42e70be6b67a46faf93b4929b" [label=""];
  "sha256:9f020960d55c64ee1d5804a4f6314be4e93404f42e70be6b67a46faf93b4929b" -> "sha256:5f82e7e31eae222fe5e74ba7643bcbe369b1835eefc4966266d0d8f747f4d7d9" [label=""];
  "sha256:5f82e7e31eae222fe5e74ba7643bcbe369b1835eefc4966266d0d8f747f4d7d9" -> "sha256:c24555d1f601214311309a413ded9f44eff97fa3d69e0aecb78b78a135b0d0b7" [label=""];
}

