[app/sources/345362961.Dockerfile]
digraph {
  "sha256:2f1ff5ee56a3031a9fff36eceedf8523d82d2731ccee9373192e50631867adb3" [label="docker-image://docker.io/balenalib/srd3-tx2-debian:stretch-run" shape="ellipse"];
  "sha256:ee069845c460c8d90d984a5860f539d051283e193956f0343bdb0e7f10457459" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:dbe595be817a4604052519048ce0c1a09fa13549d05abd3258ac20da43840090" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-arm64.tar.gz\"     && dotnet_sha512='1C1562108F54822EE3D073D537306438F95EDCDEF02C18335B0D041D50887C15AFC81EB757ACEEC7A3F9D04A9DEAB0017391690637645FEF5A0B46A2DDC17D93'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:2b9a6bfb2a60c1b39420e521d7c5e4c6974ada27d87b850dfb516720436132f2" [label="sha256:2b9a6bfb2a60c1b39420e521d7c5e4c6974ada27d87b850dfb516720436132f2" shape="plaintext"];
  "sha256:2f1ff5ee56a3031a9fff36eceedf8523d82d2731ccee9373192e50631867adb3" -> "sha256:ee069845c460c8d90d984a5860f539d051283e193956f0343bdb0e7f10457459" [label=""];
  "sha256:ee069845c460c8d90d984a5860f539d051283e193956f0343bdb0e7f10457459" -> "sha256:dbe595be817a4604052519048ce0c1a09fa13549d05abd3258ac20da43840090" [label=""];
  "sha256:dbe595be817a4604052519048ce0c1a09fa13549d05abd3258ac20da43840090" -> "sha256:2b9a6bfb2a60c1b39420e521d7c5e4c6974ada27d87b850dfb516720436132f2" [label=""];
}

