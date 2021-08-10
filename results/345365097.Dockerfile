[app/sources/345365097.Dockerfile]
digraph {
  "sha256:ce2d4db26dd56eab8ff72f41e8fc8d859cd86be8b8c55b55c5e4723fbd861bbf" [label="docker-image://docker.io/balenalib/artik10-debian:stretch-run" shape="ellipse"];
  "sha256:7e12dfe6485b19a2f57bd9be2064f4f45a8df0f62c3fa71aa198ed104a44fe75" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         libssl1.1         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7dddc28ad5704310642854649e8d60afa63e1542c1a706200b7ffc7e8064884d" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-arm.tar.gz\"     && dotnet_sha512='5E95F4A32A90364553FE8A5778A6B417162BF39B7E01085B6EC2D6848F76ABC6365B75724DB6FBDE524CCF9E929C152040B4B9068F2F5131D0A4D4C9509B50B6'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:ac56bdbb1af3edf6b7243d674f45d56e77319a90efbf3f123b9872585da7b99d" [label="/bin/sh -c dotnet help" shape="box"];
  "sha256:69d0d21947bdeccd076f6a6e2adb9be127d4e410c7e2fcf5aa674bd2ef5314a2" [label="sha256:69d0d21947bdeccd076f6a6e2adb9be127d4e410c7e2fcf5aa674bd2ef5314a2" shape="plaintext"];
  "sha256:ce2d4db26dd56eab8ff72f41e8fc8d859cd86be8b8c55b55c5e4723fbd861bbf" -> "sha256:7e12dfe6485b19a2f57bd9be2064f4f45a8df0f62c3fa71aa198ed104a44fe75" [label=""];
  "sha256:7e12dfe6485b19a2f57bd9be2064f4f45a8df0f62c3fa71aa198ed104a44fe75" -> "sha256:7dddc28ad5704310642854649e8d60afa63e1542c1a706200b7ffc7e8064884d" [label=""];
  "sha256:7dddc28ad5704310642854649e8d60afa63e1542c1a706200b7ffc7e8064884d" -> "sha256:ac56bdbb1af3edf6b7243d674f45d56e77319a90efbf3f123b9872585da7b99d" [label=""];
  "sha256:ac56bdbb1af3edf6b7243d674f45d56e77319a90efbf3f123b9872585da7b99d" -> "sha256:69d0d21947bdeccd076f6a6e2adb9be127d4e410c7e2fcf5aa674bd2ef5314a2" [label=""];
}

