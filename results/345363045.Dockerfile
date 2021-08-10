[app/sources/345363045.Dockerfile]
digraph {
  "sha256:5412cb7017ec3b94086fe7f78d589f65adb6273437db6f556e0385a87989098c" [label="docker-image://docker.io/balenalib/var-som-mx6-debian:stretch-run" shape="ellipse"];
  "sha256:32ccf73cba20a35f3c1a7b863e60ad9a639ae6a6352f2fe87be3fb7d824f9222" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         libssl1.1         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:99733abb72e907e4ea2b8a13e21aabdcc29ce9b1eb90d7e05f66157a68cdbdf7" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-arm.tar.gz\"     && dotnet_sha512='5E95F4A32A90364553FE8A5778A6B417162BF39B7E01085B6EC2D6848F76ABC6365B75724DB6FBDE524CCF9E929C152040B4B9068F2F5131D0A4D4C9509B50B6'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:8dcfea4a59b0434cae8618732a2519abc971f534acfffc6f89394b464d5080c8" [label="/bin/sh -c dotnet help" shape="box"];
  "sha256:b507f5539d29f8a86441e15ff771fd504c857319b11c6e8e9917ad40dc386b1c" [label="sha256:b507f5539d29f8a86441e15ff771fd504c857319b11c6e8e9917ad40dc386b1c" shape="plaintext"];
  "sha256:5412cb7017ec3b94086fe7f78d589f65adb6273437db6f556e0385a87989098c" -> "sha256:32ccf73cba20a35f3c1a7b863e60ad9a639ae6a6352f2fe87be3fb7d824f9222" [label=""];
  "sha256:32ccf73cba20a35f3c1a7b863e60ad9a639ae6a6352f2fe87be3fb7d824f9222" -> "sha256:99733abb72e907e4ea2b8a13e21aabdcc29ce9b1eb90d7e05f66157a68cdbdf7" [label=""];
  "sha256:99733abb72e907e4ea2b8a13e21aabdcc29ce9b1eb90d7e05f66157a68cdbdf7" -> "sha256:8dcfea4a59b0434cae8618732a2519abc971f534acfffc6f89394b464d5080c8" [label=""];
  "sha256:8dcfea4a59b0434cae8618732a2519abc971f534acfffc6f89394b464d5080c8" -> "sha256:b507f5539d29f8a86441e15ff771fd504c857319b11c6e8e9917ad40dc386b1c" [label=""];
}

