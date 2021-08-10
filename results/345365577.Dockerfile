[app/sources/345365577.Dockerfile]
digraph {
  "sha256:09e67f4c19f2b4fe7a7bf74d0614cb967b8d7508bcc50abfebc3eb0eb71337ad" [label="docker-image://docker.io/balenalib/jetson-tx2-debian:stretch-run" shape="ellipse"];
  "sha256:0ad152309e36aa0aac7009897ec5f17738933caee636c6e8a359acb373e6c67d" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2fc76f1f05fb5896d950c0939eb6fa515ac4d6e9962f8a14ea8ea2f923a43ed0" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-arm64.tar.gz\"     && dotnet_sha512='9D8B5DC4482FCA1F9A41C799F33F6EFCFC7F28594CC28211059FDA54C23309425934D1E90CA3624C92A3B6529AE8B31C6349678DC5ED8D7C1935D94470183E6D'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:43a091398a64c862670ccc0008d8f68855117d6ab52ab281f43a05d0e697972a" [label="/bin/sh -c dotnet help" shape="box"];
  "sha256:47675361092489b2d439daa61b5e9fe72e2e55aed2ffe5912c3193d98878eefc" [label="sha256:47675361092489b2d439daa61b5e9fe72e2e55aed2ffe5912c3193d98878eefc" shape="plaintext"];
  "sha256:09e67f4c19f2b4fe7a7bf74d0614cb967b8d7508bcc50abfebc3eb0eb71337ad" -> "sha256:0ad152309e36aa0aac7009897ec5f17738933caee636c6e8a359acb373e6c67d" [label=""];
  "sha256:0ad152309e36aa0aac7009897ec5f17738933caee636c6e8a359acb373e6c67d" -> "sha256:2fc76f1f05fb5896d950c0939eb6fa515ac4d6e9962f8a14ea8ea2f923a43ed0" [label=""];
  "sha256:2fc76f1f05fb5896d950c0939eb6fa515ac4d6e9962f8a14ea8ea2f923a43ed0" -> "sha256:43a091398a64c862670ccc0008d8f68855117d6ab52ab281f43a05d0e697972a" [label=""];
  "sha256:43a091398a64c862670ccc0008d8f68855117d6ab52ab281f43a05d0e697972a" -> "sha256:47675361092489b2d439daa61b5e9fe72e2e55aed2ffe5912c3193d98878eefc" [label=""];
}

