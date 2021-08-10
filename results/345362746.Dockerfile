[app/sources/345362746.Dockerfile]
digraph {
  "sha256:e0a78fe8f04c4fdc0dbf2ae989601f61ff58420b4542d0a5629b13490e017f0f" [label="docker-image://docker.io/balenalib/odroid-xu4-debian:stretch-build" shape="ellipse"];
  "sha256:0cad9c41d917fa8138a9c4f51846f67166a3f16f56a7b295383d16b214994637" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:31ee25b3f6f420a7e455a957e52e19564035fc2e062ea4f81fe210c6cd9fe73b" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-arm.tar.gz\"     && dotnet_sha512='D3A545AE8EE19D6AA19B349CA634FE321A477779E5C74AD6C8BD1657B55C3440142FEB8FB4C46FD41B6697D0B9565BDADD78365B1E36115670037D7FB1041B82'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:e045118ba3ae8a3f65ae0d6773c2830d102af23e477e19d9a03def18e708172c" [label="sha256:e045118ba3ae8a3f65ae0d6773c2830d102af23e477e19d9a03def18e708172c" shape="plaintext"];
  "sha256:e0a78fe8f04c4fdc0dbf2ae989601f61ff58420b4542d0a5629b13490e017f0f" -> "sha256:0cad9c41d917fa8138a9c4f51846f67166a3f16f56a7b295383d16b214994637" [label=""];
  "sha256:0cad9c41d917fa8138a9c4f51846f67166a3f16f56a7b295383d16b214994637" -> "sha256:31ee25b3f6f420a7e455a957e52e19564035fc2e062ea4f81fe210c6cd9fe73b" [label=""];
  "sha256:31ee25b3f6f420a7e455a957e52e19564035fc2e062ea4f81fe210c6cd9fe73b" -> "sha256:e045118ba3ae8a3f65ae0d6773c2830d102af23e477e19d9a03def18e708172c" [label=""];
}

