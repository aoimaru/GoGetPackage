[app/sources/213421013.Dockerfile]
digraph {
  "sha256:9ffb8ca2fa3ffbcdb55f4ccf6c946791aaffb463bd907855614c1f7e000f7edf" [label="docker-image://docker.io/library/haproxy:latest" shape="ellipse"];
  "sha256:037eac0fa05d7d287f85dfa571626ae8b0f34438aad04554a9615b52e9437435" [label="/bin/sh -c mkdir -p /etc/haproxy/errors" shape="box"];
  "sha256:f21718ffd15e3d83ebdffb21f274325e7bc6c6ee47b26ab04ce05d370fb0c440" [label="/bin/sh -c touch /etc/haproxy/errors/400.http" shape="box"];
  "sha256:fabffda97ae33481185b613ecc94e95ddf8bebbd01d89499e206d4abf68dfe41" [label="/bin/sh -c touch /etc/haproxy/errors/403.http" shape="box"];
  "sha256:d1219f287a46ad5c17503001c5be3de9d0cee9bafe467ad7ee4006f830f524c1" [label="/bin/sh -c touch /etc/haproxy/errors/408.http" shape="box"];
  "sha256:27054bf4c888a0e82886b06fc88f6e1507582248e4266aac9914a50c94fe557e" [label="/bin/sh -c touch /etc/haproxy/errors/500.http" shape="box"];
  "sha256:64249a74472329061247ac996d989cf442307f3c1f5d5050e145d193d6b2efd3" [label="/bin/sh -c touch /etc/haproxy/errors/502.http" shape="box"];
  "sha256:7ce668dad002ff9be5dbecd1b4c636c445d9d4155585fe6fcc4951a9b5ef8cc8" [label="/bin/sh -c touch /etc/haproxy/errors/503.http" shape="box"];
  "sha256:2cc4d1c726bcac822e1c60608e6c0fdbab430d66e04c38caafe84acc886145eb" [label="/bin/sh -c touch /etc/haproxy/errors/504.http" shape="box"];
  "sha256:d754e0f076e363349995696f896eb0e71a73cb294dade5480f03cc50364cf72d" [label="/bin/sh -c chmod -R 777 /etc/haproxy/errors" shape="box"];
  "sha256:aaf63881e51d1593f6b28f555a5d4c4ec4dd5dee76788cb069181d1460aa0bd4" [label="/bin/sh -c mkdir -p /run/haproxy" shape="box"];
  "sha256:892922e0f09ad8b682f35b6d10b5707acde57f84d48259f2f9360adaa802e597" [label="/bin/sh -c apt-get update && apt-get install -y socat tcpdump strace --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e67671410be5a04d0347a91dff2a3981bd18569e6aaf1fb78ab61a1f53f9fceb" [label="local://context" shape="ellipse"];
  "sha256:b78bd879383fe979c40376f0e0f3647779792762af74e4403ee65e23e7b1ad43" [label="copy{src=/haproxy.cfg, dest=/usr/local/etc/haproxy/haproxy.cfg}" shape="note"];
  "sha256:d11463565c402673a0b4a7f3aea6f5be30cc03ac8064a56a12888a3e9677d648" [label="sha256:d11463565c402673a0b4a7f3aea6f5be30cc03ac8064a56a12888a3e9677d648" shape="plaintext"];
  "sha256:9ffb8ca2fa3ffbcdb55f4ccf6c946791aaffb463bd907855614c1f7e000f7edf" -> "sha256:037eac0fa05d7d287f85dfa571626ae8b0f34438aad04554a9615b52e9437435" [label=""];
  "sha256:037eac0fa05d7d287f85dfa571626ae8b0f34438aad04554a9615b52e9437435" -> "sha256:f21718ffd15e3d83ebdffb21f274325e7bc6c6ee47b26ab04ce05d370fb0c440" [label=""];
  "sha256:f21718ffd15e3d83ebdffb21f274325e7bc6c6ee47b26ab04ce05d370fb0c440" -> "sha256:fabffda97ae33481185b613ecc94e95ddf8bebbd01d89499e206d4abf68dfe41" [label=""];
  "sha256:fabffda97ae33481185b613ecc94e95ddf8bebbd01d89499e206d4abf68dfe41" -> "sha256:d1219f287a46ad5c17503001c5be3de9d0cee9bafe467ad7ee4006f830f524c1" [label=""];
  "sha256:d1219f287a46ad5c17503001c5be3de9d0cee9bafe467ad7ee4006f830f524c1" -> "sha256:27054bf4c888a0e82886b06fc88f6e1507582248e4266aac9914a50c94fe557e" [label=""];
  "sha256:27054bf4c888a0e82886b06fc88f6e1507582248e4266aac9914a50c94fe557e" -> "sha256:64249a74472329061247ac996d989cf442307f3c1f5d5050e145d193d6b2efd3" [label=""];
  "sha256:64249a74472329061247ac996d989cf442307f3c1f5d5050e145d193d6b2efd3" -> "sha256:7ce668dad002ff9be5dbecd1b4c636c445d9d4155585fe6fcc4951a9b5ef8cc8" [label=""];
  "sha256:7ce668dad002ff9be5dbecd1b4c636c445d9d4155585fe6fcc4951a9b5ef8cc8" -> "sha256:2cc4d1c726bcac822e1c60608e6c0fdbab430d66e04c38caafe84acc886145eb" [label=""];
  "sha256:2cc4d1c726bcac822e1c60608e6c0fdbab430d66e04c38caafe84acc886145eb" -> "sha256:d754e0f076e363349995696f896eb0e71a73cb294dade5480f03cc50364cf72d" [label=""];
  "sha256:d754e0f076e363349995696f896eb0e71a73cb294dade5480f03cc50364cf72d" -> "sha256:aaf63881e51d1593f6b28f555a5d4c4ec4dd5dee76788cb069181d1460aa0bd4" [label=""];
  "sha256:aaf63881e51d1593f6b28f555a5d4c4ec4dd5dee76788cb069181d1460aa0bd4" -> "sha256:892922e0f09ad8b682f35b6d10b5707acde57f84d48259f2f9360adaa802e597" [label=""];
  "sha256:892922e0f09ad8b682f35b6d10b5707acde57f84d48259f2f9360adaa802e597" -> "sha256:b78bd879383fe979c40376f0e0f3647779792762af74e4403ee65e23e7b1ad43" [label=""];
  "sha256:e67671410be5a04d0347a91dff2a3981bd18569e6aaf1fb78ab61a1f53f9fceb" -> "sha256:b78bd879383fe979c40376f0e0f3647779792762af74e4403ee65e23e7b1ad43" [label=""];
  "sha256:b78bd879383fe979c40376f0e0f3647779792762af74e4403ee65e23e7b1ad43" -> "sha256:d11463565c402673a0b4a7f3aea6f5be30cc03ac8064a56a12888a3e9677d648" [label=""];
}

