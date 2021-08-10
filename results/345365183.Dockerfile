[app/sources/345365183.Dockerfile]
digraph {
  "sha256:96b64463bd717a499b031640054fb5ee6769e2be5c2697cc5046b4da3b880984" [label="docker-image://docker.io/balenalib/asus-tinker-board-s-debian:stretch-run" shape="ellipse"];
  "sha256:5f41fab628a7948fb4837892ef2856677a46bea65459ea6418e41a2f9fef2735" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         libssl1.1         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:dbd4abadd08072b94562bedc8635e165fe72f7e71d5a0f27a323b8167bbbc9da" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-arm.tar.gz\"     && dotnet_sha512='5E95F4A32A90364553FE8A5778A6B417162BF39B7E01085B6EC2D6848F76ABC6365B75724DB6FBDE524CCF9E929C152040B4B9068F2F5131D0A4D4C9509B50B6'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:a45b884c48a00ad18c75cb767aa13d483574484633cbcff53afc338fd59195eb" [label="/bin/sh -c dotnet help" shape="box"];
  "sha256:d5dd1b24a4bb20cb2001759d53ec0c644973f45985d203109bf90768a459c90f" [label="sha256:d5dd1b24a4bb20cb2001759d53ec0c644973f45985d203109bf90768a459c90f" shape="plaintext"];
  "sha256:96b64463bd717a499b031640054fb5ee6769e2be5c2697cc5046b4da3b880984" -> "sha256:5f41fab628a7948fb4837892ef2856677a46bea65459ea6418e41a2f9fef2735" [label=""];
  "sha256:5f41fab628a7948fb4837892ef2856677a46bea65459ea6418e41a2f9fef2735" -> "sha256:dbd4abadd08072b94562bedc8635e165fe72f7e71d5a0f27a323b8167bbbc9da" [label=""];
  "sha256:dbd4abadd08072b94562bedc8635e165fe72f7e71d5a0f27a323b8167bbbc9da" -> "sha256:a45b884c48a00ad18c75cb767aa13d483574484633cbcff53afc338fd59195eb" [label=""];
  "sha256:a45b884c48a00ad18c75cb767aa13d483574484633cbcff53afc338fd59195eb" -> "sha256:d5dd1b24a4bb20cb2001759d53ec0c644973f45985d203109bf90768a459c90f" [label=""];
}

