[app/sources/367247427.Dockerfile]
digraph {
  "sha256:1624e0b53c79f59245351df4bb7d126133137eb20a829edf862ae9ea4c0718da" [label="docker-image://mcr.microsoft.com/dotnet/core/runtime-deps:2.1-stretch-slim-arm32v7@sha256:c5c36c009ba46016ba9af3ab906160f3df5094f0a3436c1a031956a03dce811f" shape="ellipse"];
  "sha256:b3cfae0201f62126f896ff6becb9cae020c0d6cdc82968d3b24b40e145f97960" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         curl     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:86981744e07c5fcd7b57a393d81bd3028a528730f5ebbfda0457b7fc924111cc" [label="/bin/sh -c curl -SL --output dotnet.tar.gz https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-arm.tar.gz     && dotnet_sha512='4ec03929ea9995216ecfd2569bec204aa69d55cb483267efb800be6cd080920b1559b60d2408489ad8fc5f436d3dcfdcd085a5b59f6084aa8aaf2ccc8157a910'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:6ff4b6499aa79311b8f922fd93d8a04c2797927cffdb2c411db3a4d24a327e60" [label="sha256:6ff4b6499aa79311b8f922fd93d8a04c2797927cffdb2c411db3a4d24a327e60" shape="plaintext"];
  "sha256:1624e0b53c79f59245351df4bb7d126133137eb20a829edf862ae9ea4c0718da" -> "sha256:b3cfae0201f62126f896ff6becb9cae020c0d6cdc82968d3b24b40e145f97960" [label=""];
  "sha256:b3cfae0201f62126f896ff6becb9cae020c0d6cdc82968d3b24b40e145f97960" -> "sha256:86981744e07c5fcd7b57a393d81bd3028a528730f5ebbfda0457b7fc924111cc" [label=""];
  "sha256:86981744e07c5fcd7b57a393d81bd3028a528730f5ebbfda0457b7fc924111cc" -> "sha256:6ff4b6499aa79311b8f922fd93d8a04c2797927cffdb2c411db3a4d24a327e60" [label=""];
}

