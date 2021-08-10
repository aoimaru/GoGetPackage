[app/sources/345365363.Dockerfile]
digraph {
  "sha256:207c16dfcd8601136f35c56dea6972f639b90a49840a15096639b400fb7978d6" [label="docker-image://docker.io/balenalib/cl-som-imx8-debian:stretch-run" shape="ellipse"];
  "sha256:7fe95ed5f236c08b8a1b39168a4fc1851c292ea6e2f1ed6a45cb1700e5c4d593" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:05bb44f1091056b926d93282ab90b25c196befd96bb301a5b1e4818223e47f02" [label="/bin/sh -c curl -SL --output dotnet.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-arm64.tar.gz\"     && dotnet_sha512='9D8B5DC4482FCA1F9A41C799F33F6EFCFC7F28594CC28211059FDA54C23309425934D1E90CA3624C92A3B6529AE8B31C6349678DC5ED8D7C1935D94470183E6D'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:e8c84585972bf0ec09895dbfee128374d9ce09da9f20e0da59550d559689fe3c" [label="/bin/sh -c dotnet help" shape="box"];
  "sha256:c8e6297fb2ebf917d55abe61af38085eae8d3253a3d9ac6f8cde5a3ecd46a877" [label="sha256:c8e6297fb2ebf917d55abe61af38085eae8d3253a3d9ac6f8cde5a3ecd46a877" shape="plaintext"];
  "sha256:207c16dfcd8601136f35c56dea6972f639b90a49840a15096639b400fb7978d6" -> "sha256:7fe95ed5f236c08b8a1b39168a4fc1851c292ea6e2f1ed6a45cb1700e5c4d593" [label=""];
  "sha256:7fe95ed5f236c08b8a1b39168a4fc1851c292ea6e2f1ed6a45cb1700e5c4d593" -> "sha256:05bb44f1091056b926d93282ab90b25c196befd96bb301a5b1e4818223e47f02" [label=""];
  "sha256:05bb44f1091056b926d93282ab90b25c196befd96bb301a5b1e4818223e47f02" -> "sha256:e8c84585972bf0ec09895dbfee128374d9ce09da9f20e0da59550d559689fe3c" [label=""];
  "sha256:e8c84585972bf0ec09895dbfee128374d9ce09da9f20e0da59550d559689fe3c" -> "sha256:c8e6297fb2ebf917d55abe61af38085eae8d3253a3d9ac6f8cde5a3ecd46a877" [label=""];
}

