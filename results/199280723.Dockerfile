[app/sources/199280723.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:c2f1a9ec10e980917099048eb8f13155ce954210bf9d3d89223f312d164eae31" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates                 libc6         libcurl3         libgcc1         libgssapi-krb5-2         libicu57         liblttng-ust0         libssl1.0.2         libstdc++6         libunwind8         libuuid1         zlib1g     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d892d0026c9b21d38dd11c87e7a6bfb3654e82f50f3c94bab21008eafa41ed69" [label="sha256:d892d0026c9b21d38dd11c87e7a6bfb3654e82f50f3c94bab21008eafa41ed69" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:c2f1a9ec10e980917099048eb8f13155ce954210bf9d3d89223f312d164eae31" [label=""];
  "sha256:c2f1a9ec10e980917099048eb8f13155ce954210bf9d3d89223f312d164eae31" -> "sha256:d892d0026c9b21d38dd11c87e7a6bfb3654e82f50f3c94bab21008eafa41ed69" [label=""];
}

