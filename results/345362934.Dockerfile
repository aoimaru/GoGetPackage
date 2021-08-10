[app/sources/345362934.Dockerfile]
digraph {
  "sha256:bdc2692fa7edb902760adbe88620072293f9c5137984167e85bc7fc06c89c861" [label="docker-image://docker.io/balenalib/revpi-core-3-debian:stretch-build" shape="ellipse"];
  "sha256:1e958804803c69b790ac60e03b30e3540793ad35583724adcdb40b82898c3302" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl                 libc6         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ff445cbf90ac0aa00f976f257d7524503104663375f31cbe9a41363a578222b0" [label="/bin/sh -c curl -SL --output aspnetcore.tar.gz \"https://dotnetcli.blob.core.windows.net/dotnet/aspnetcore/Runtime/$ASPNETCORE_VERSION/aspnetcore-runtime-$ASPNETCORE_VERSION-linux-arm.tar.gz\"     && aspnetcore_sha512='16AABD3FCD0EADCFBFEA37DB976E05EF8997820F84C00EEF7994BF529BB9FFDD5628E7E12164B7288DEF9CDF27F0243CFF57780FE1333AF66E6452E84EAF52C0'     && echo \"$aspnetcore_sha512  aspnetcore.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf aspnetcore.tar.gz -C /usr/share/dotnet     && rm aspnetcore.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:4eae383ee210e819f2280b4a0d90327b4508d79626449746fc1dcf0728ea748d" [label="sha256:4eae383ee210e819f2280b4a0d90327b4508d79626449746fc1dcf0728ea748d" shape="plaintext"];
  "sha256:bdc2692fa7edb902760adbe88620072293f9c5137984167e85bc7fc06c89c861" -> "sha256:1e958804803c69b790ac60e03b30e3540793ad35583724adcdb40b82898c3302" [label=""];
  "sha256:1e958804803c69b790ac60e03b30e3540793ad35583724adcdb40b82898c3302" -> "sha256:ff445cbf90ac0aa00f976f257d7524503104663375f31cbe9a41363a578222b0" [label=""];
  "sha256:ff445cbf90ac0aa00f976f257d7524503104663375f31cbe9a41363a578222b0" -> "sha256:4eae383ee210e819f2280b4a0d90327b4508d79626449746fc1dcf0728ea748d" [label=""];
}

