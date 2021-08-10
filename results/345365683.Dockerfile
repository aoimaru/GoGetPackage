[app/sources/345365683.Dockerfile]
digraph {
  "sha256:d19589432eb2a6fe78c45339c684f027e3924f1893a4c30488d7a5a7654a86bf" [label="docker-image://docker.io/balenalib/nitrogen6x-debian:stretch-run" shape="ellipse"];
  "sha256:2540488025ad28e0ca44aabea6ec942b86fe2f8a5a98c72445f0596358271ca5" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         libssl1.1         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:fd95c0e7014a91eb0b4bff65ce66d65005ca987a207b257f3fba29ec291de6de" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-arm.tar.gz\"     && dotnet_sha512='5E95F4A32A90364553FE8A5778A6B417162BF39B7E01085B6EC2D6848F76ABC6365B75724DB6FBDE524CCF9E929C152040B4B9068F2F5131D0A4D4C9509B50B6'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:2046cffc4d0ceaa0b5172720c2f80b072079aabb7ae1a756068e8b24e8c3871f" [label="/bin/sh -c dotnet help" shape="box"];
  "sha256:94065fb78fdd35a8307cc7c7c261cb6deadc0120702d33f9779639e743e5b98c" [label="sha256:94065fb78fdd35a8307cc7c7c261cb6deadc0120702d33f9779639e743e5b98c" shape="plaintext"];
  "sha256:d19589432eb2a6fe78c45339c684f027e3924f1893a4c30488d7a5a7654a86bf" -> "sha256:2540488025ad28e0ca44aabea6ec942b86fe2f8a5a98c72445f0596358271ca5" [label=""];
  "sha256:2540488025ad28e0ca44aabea6ec942b86fe2f8a5a98c72445f0596358271ca5" -> "sha256:fd95c0e7014a91eb0b4bff65ce66d65005ca987a207b257f3fba29ec291de6de" [label=""];
  "sha256:fd95c0e7014a91eb0b4bff65ce66d65005ca987a207b257f3fba29ec291de6de" -> "sha256:2046cffc4d0ceaa0b5172720c2f80b072079aabb7ae1a756068e8b24e8c3871f" [label=""];
  "sha256:2046cffc4d0ceaa0b5172720c2f80b072079aabb7ae1a756068e8b24e8c3871f" -> "sha256:94065fb78fdd35a8307cc7c7c261cb6deadc0120702d33f9779639e743e5b98c" [label=""];
}

