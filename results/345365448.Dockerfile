[app/sources/345365448.Dockerfile]
digraph {
  "sha256:ef8ce7cd3e8b6bc9d77b5c8ac24108da0b52473fd757d779aae179cd03d64ce4" [label="docker-image://docker.io/balenalib/generic-armv7ahf-debian:stretch-build" shape="ellipse"];
  "sha256:b6a5bff781aaa10b463eb5a3655ad27127fe429ea3aa69a56911bf44f81499e3" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d6d49860991b4418f43c5e552574f4644ee70050e820f1cef580447147d0f5c7" [label="/bin/sh -c curl -SL --output aspnetcore.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/aspnetcore/Runtime/$ASPNETCORE_VERSION/aspnetcore-runtime-$ASPNETCORE_VERSION-linux-arm.tar.gz\"     && aspnetcore_sha512='16AABD3FCD0EADCFBFEA37DB976E05EF8997820F84C00EEF7994BF529BB9FFDD5628E7E12164B7288DEF9CDF27F0243CFF57780FE1333AF66E6452E84EAF52C0'     && echo \"$aspnetcore_sha512  aspnetcore.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf aspnetcore.tar.gz -C /usr/share/dotnet     && rm aspnetcore.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:6dcce03cd33ea35555095ad346bd6cfcccc006bb1cd82baf6bf3e0df58b12c11" [label="sha256:6dcce03cd33ea35555095ad346bd6cfcccc006bb1cd82baf6bf3e0df58b12c11" shape="plaintext"];
  "sha256:ef8ce7cd3e8b6bc9d77b5c8ac24108da0b52473fd757d779aae179cd03d64ce4" -> "sha256:b6a5bff781aaa10b463eb5a3655ad27127fe429ea3aa69a56911bf44f81499e3" [label=""];
  "sha256:b6a5bff781aaa10b463eb5a3655ad27127fe429ea3aa69a56911bf44f81499e3" -> "sha256:d6d49860991b4418f43c5e552574f4644ee70050e820f1cef580447147d0f5c7" [label=""];
  "sha256:d6d49860991b4418f43c5e552574f4644ee70050e820f1cef580447147d0f5c7" -> "sha256:6dcce03cd33ea35555095ad346bd6cfcccc006bb1cd82baf6bf3e0df58b12c11" [label=""];
}

