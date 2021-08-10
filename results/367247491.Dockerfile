[app/sources/367247491.Dockerfile]
digraph {
  "sha256:8da19ee390adb63a5be7bef4fd92c56ab60910a98e351dfe020ba382c8c16208" [label="docker-image://docker.io/library/ubuntu:disco" shape="ellipse"];
  "sha256:e57e93809f7eb22308c5ae84fc7af5b8972c6be0a6782fbbc577d6967437a1fc" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates                 libc6         libgcc1         libgssapi-krb5-2         libicu63         libssl1.1         libstdc++6         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d35cf84e9e7f41fed1193018b487d1e911ecb9215997fae61e552f8cc960623d" [label="sha256:d35cf84e9e7f41fed1193018b487d1e911ecb9215997fae61e552f8cc960623d" shape="plaintext"];
  "sha256:8da19ee390adb63a5be7bef4fd92c56ab60910a98e351dfe020ba382c8c16208" -> "sha256:e57e93809f7eb22308c5ae84fc7af5b8972c6be0a6782fbbc577d6967437a1fc" [label=""];
  "sha256:e57e93809f7eb22308c5ae84fc7af5b8972c6be0a6782fbbc577d6967437a1fc" -> "sha256:d35cf84e9e7f41fed1193018b487d1e911ecb9215997fae61e552f8cc960623d" [label=""];
}

