[app/sources/345363072.Dockerfile]
digraph {
  "sha256:7327de65fa8a1f5da3bd753228651ddfcccd8234cc8d5ce91a44ae058b4ce115" [label="docker-image://docker.io/balenalib/zc702-zynq7-debian:stretch-build" shape="ellipse"];
  "sha256:abaf82fedc8ac4bab30dd4233ddd0ea0af7cebb6bd3a4ecea2348e7bdce15ccb" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5717055080cbb4102c9a0a4b70d74551460352689b500599329c8ea154168ac3" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-arm.tar.gz\"     && dotnet_sha512='D3A545AE8EE19D6AA19B349CA634FE321A477779E5C74AD6C8BD1657B55C3440142FEB8FB4C46FD41B6697D0B9565BDADD78365B1E36115670037D7FB1041B82'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:0929dec9bebb87ad6edd8f694bfd6349377f2fa2ad57b525038a43fe3f9910e6" [label="sha256:0929dec9bebb87ad6edd8f694bfd6349377f2fa2ad57b525038a43fe3f9910e6" shape="plaintext"];
  "sha256:7327de65fa8a1f5da3bd753228651ddfcccd8234cc8d5ce91a44ae058b4ce115" -> "sha256:abaf82fedc8ac4bab30dd4233ddd0ea0af7cebb6bd3a4ecea2348e7bdce15ccb" [label=""];
  "sha256:abaf82fedc8ac4bab30dd4233ddd0ea0af7cebb6bd3a4ecea2348e7bdce15ccb" -> "sha256:5717055080cbb4102c9a0a4b70d74551460352689b500599329c8ea154168ac3" [label=""];
  "sha256:5717055080cbb4102c9a0a4b70d74551460352689b500599329c8ea154168ac3" -> "sha256:0929dec9bebb87ad6edd8f694bfd6349377f2fa2ad57b525038a43fe3f9910e6" [label=""];
}

