[app/sources/345362928.Dockerfile]
digraph {
  "sha256:bdc2692fa7edb902760adbe88620072293f9c5137984167e85bc7fc06c89c861" [label="docker-image://docker.io/balenalib/revpi-core-3-debian:stretch-build" shape="ellipse"];
  "sha256:1e958804803c69b790ac60e03b30e3540793ad35583724adcdb40b82898c3302" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4ec57627ec748def449a952fb2d7e03bbff44dc9972cab60ae5550c5cd7aed17" [label="/bin/sh -c curl -SL --output aspnetcore.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/aspnetcore/Runtime/$ASPNETCORE_VERSION/aspnetcore-runtime-$ASPNETCORE_VERSION-linux-arm.tar.gz\"     && aspnetcore_sha512='5F4B016947E5706B6ED7A5BB9F767F1F966CAC2267815C3F4E16E1623888B6731122D3779F46556038E6951E72C48B0888A9385C103D2FF6147EFDFF0D148064'     && echo \"$aspnetcore_sha512  aspnetcore.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf aspnetcore.tar.gz -C /usr/share/dotnet     && rm aspnetcore.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:d675cbffcbe15da7347c23a3b3549e30c81ac926df8a366f278f2c095ed87b2a" [label="sha256:d675cbffcbe15da7347c23a3b3549e30c81ac926df8a366f278f2c095ed87b2a" shape="plaintext"];
  "sha256:bdc2692fa7edb902760adbe88620072293f9c5137984167e85bc7fc06c89c861" -> "sha256:1e958804803c69b790ac60e03b30e3540793ad35583724adcdb40b82898c3302" [label=""];
  "sha256:1e958804803c69b790ac60e03b30e3540793ad35583724adcdb40b82898c3302" -> "sha256:4ec57627ec748def449a952fb2d7e03bbff44dc9972cab60ae5550c5cd7aed17" [label=""];
  "sha256:4ec57627ec748def449a952fb2d7e03bbff44dc9972cab60ae5550c5cd7aed17" -> "sha256:d675cbffcbe15da7347c23a3b3549e30c81ac926df8a366f278f2c095ed87b2a" [label=""];
}

