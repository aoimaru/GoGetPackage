[app/sources/345362896.Dockerfile]
digraph {
  "sha256:da3624eb15ccdab3fe2bc3d006af9f159829c951dd04cc6dd423af8163156ee3" [label="docker-image://docker.io/balenalib/raspberrypi3-64-debian:stretch-build" shape="ellipse"];
  "sha256:a89125d7bc7830150378bd997326e52219a078282d8ecd684d2f6654008364ae" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4bb93179f755b59de40903ab44fec78591346ce7f58034efa38db4a3eb56f119" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-arm64.tar.gz\"     && dotnet_sha512='1C1562108F54822EE3D073D537306438F95EDCDEF02C18335B0D041D50887C15AFC81EB757ACEEC7A3F9D04A9DEAB0017391690637645FEF5A0B46A2DDC17D93'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:31810dcb388ebef82612372e84b9497264b648a05f866b5978cc7596e1c539aa" [label="sha256:31810dcb388ebef82612372e84b9497264b648a05f866b5978cc7596e1c539aa" shape="plaintext"];
  "sha256:da3624eb15ccdab3fe2bc3d006af9f159829c951dd04cc6dd423af8163156ee3" -> "sha256:a89125d7bc7830150378bd997326e52219a078282d8ecd684d2f6654008364ae" [label=""];
  "sha256:a89125d7bc7830150378bd997326e52219a078282d8ecd684d2f6654008364ae" -> "sha256:4bb93179f755b59de40903ab44fec78591346ce7f58034efa38db4a3eb56f119" [label=""];
  "sha256:4bb93179f755b59de40903ab44fec78591346ce7f58034efa38db4a3eb56f119" -> "sha256:31810dcb388ebef82612372e84b9497264b648a05f866b5978cc7596e1c539aa" [label=""];
}

