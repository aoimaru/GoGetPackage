[app/sources/345365515.Dockerfile]
digraph {
  "sha256:732b78a8f27963b5ed6a60d70e3561b8c009eede0d67e68f1a16f815b3de2296" [label="docker-image://docker.io/balenalib/imx8m-var-dart-debian:stretch-run" shape="ellipse"];
  "sha256:b398380e05ee27c6cab601ac00e351a2e763b9da0ce98de7c2389edf3819055e" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f2d1c5148cb7afb805228be5256ed8f182b2d2e38f3185b82ac1f8e67ad5328b" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-arm64.tar.gz\"     && dotnet_sha512='1C1562108F54822EE3D073D537306438F95EDCDEF02C18335B0D041D50887C15AFC81EB757ACEEC7A3F9D04A9DEAB0017391690637645FEF5A0B46A2DDC17D93'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:92fe363028ef01bdc90a7ec056b2077335e59897ead935c283294a1174131900" [label="sha256:92fe363028ef01bdc90a7ec056b2077335e59897ead935c283294a1174131900" shape="plaintext"];
  "sha256:732b78a8f27963b5ed6a60d70e3561b8c009eede0d67e68f1a16f815b3de2296" -> "sha256:b398380e05ee27c6cab601ac00e351a2e763b9da0ce98de7c2389edf3819055e" [label=""];
  "sha256:b398380e05ee27c6cab601ac00e351a2e763b9da0ce98de7c2389edf3819055e" -> "sha256:f2d1c5148cb7afb805228be5256ed8f182b2d2e38f3185b82ac1f8e67ad5328b" [label=""];
  "sha256:f2d1c5148cb7afb805228be5256ed8f182b2d2e38f3185b82ac1f8e67ad5328b" -> "sha256:92fe363028ef01bdc90a7ec056b2077335e59897ead935c283294a1174131900" [label=""];
}

