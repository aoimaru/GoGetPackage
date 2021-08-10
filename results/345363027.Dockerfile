[app/sources/345363027.Dockerfile]
digraph {
  "sha256:322bc06ef28067b3257d668a337eefe606c5fe8b0c1a057868fdcead64f6c4fd" [label="docker-image://docker.io/balenalib/up-board-debian:stretch-run" shape="ellipse"];
  "sha256:7fd0942da5830ecfcd68bfdff7f7b39fa0e553d061fdf2df9534598a161cec0d" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         libssl1.1         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:44e27a3cf0bd2f8586afa07ded2b37595eae2429ed490de9ac49fb25d3eaf39c" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz\"     && dotnet_sha512='207AF1F3161CBD0864902370475FCAD5B500BF2B7199B06445E7C338053BC7CB0157EE1B4D00A37A351EAE6E209417EE4A15EEACEE086AAC0AC1BE7A62F3AD0B'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:80b68c92829c4a067b1dc3cc66bff42fe45ebf84883f4231873b6777fa13d43a" [label="/bin/sh -c dotnet help" shape="box"];
  "sha256:ad37e6cdd8e799a1d41f349c9789310d1348ea9f1b6591fd5a7c7a3a250b22a4" [label="sha256:ad37e6cdd8e799a1d41f349c9789310d1348ea9f1b6591fd5a7c7a3a250b22a4" shape="plaintext"];
  "sha256:322bc06ef28067b3257d668a337eefe606c5fe8b0c1a057868fdcead64f6c4fd" -> "sha256:7fd0942da5830ecfcd68bfdff7f7b39fa0e553d061fdf2df9534598a161cec0d" [label=""];
  "sha256:7fd0942da5830ecfcd68bfdff7f7b39fa0e553d061fdf2df9534598a161cec0d" -> "sha256:44e27a3cf0bd2f8586afa07ded2b37595eae2429ed490de9ac49fb25d3eaf39c" [label=""];
  "sha256:44e27a3cf0bd2f8586afa07ded2b37595eae2429ed490de9ac49fb25d3eaf39c" -> "sha256:80b68c92829c4a067b1dc3cc66bff42fe45ebf84883f4231873b6777fa13d43a" [label=""];
  "sha256:80b68c92829c4a067b1dc3cc66bff42fe45ebf84883f4231873b6777fa13d43a" -> "sha256:ad37e6cdd8e799a1d41f349c9789310d1348ea9f1b6591fd5a7c7a3a250b22a4" [label=""];
}

