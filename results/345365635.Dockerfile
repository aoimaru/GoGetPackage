[app/sources/345365635.Dockerfile]
digraph {
  "sha256:a92d80682ed5c7f62020f83d939c415a28164d4e756a8f1f5006817fc4cfca8f" [label="docker-image://docker.io/balenalib/nanopc-t4-debian:stretch-run" shape="ellipse"];
  "sha256:7d8fd2397e8695c397740c12b720779a0b4148d8c2d721ee81cce9a6c3998919" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:febd31d460df9eeb9279276d5037aba1e283e10565619589dd3f97b331b1c552" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-arm64.tar.gz\"     && dotnet_sha512='1C1562108F54822EE3D073D537306438F95EDCDEF02C18335B0D041D50887C15AFC81EB757ACEEC7A3F9D04A9DEAB0017391690637645FEF5A0B46A2DDC17D93'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:90e48f7c3bdffcde94ef6974c0486cecbb418e07e88ec6d407d2a1309de50c11" [label="sha256:90e48f7c3bdffcde94ef6974c0486cecbb418e07e88ec6d407d2a1309de50c11" shape="plaintext"];
  "sha256:a92d80682ed5c7f62020f83d939c415a28164d4e756a8f1f5006817fc4cfca8f" -> "sha256:7d8fd2397e8695c397740c12b720779a0b4148d8c2d721ee81cce9a6c3998919" [label=""];
  "sha256:7d8fd2397e8695c397740c12b720779a0b4148d8c2d721ee81cce9a6c3998919" -> "sha256:febd31d460df9eeb9279276d5037aba1e283e10565619589dd3f97b331b1c552" [label=""];
  "sha256:febd31d460df9eeb9279276d5037aba1e283e10565619589dd3f97b331b1c552" -> "sha256:90e48f7c3bdffcde94ef6974c0486cecbb418e07e88ec6d407d2a1309de50c11" [label=""];
}

