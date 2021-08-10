[app/sources/470534611.Dockerfile]
digraph {
  "sha256:fed2184a60800ca1bd93dcf7ac166be9b08716b025fbdc6df3b78b77ff931305" [label="docker-image://docker.io/openshift/origin:latest" shape="ellipse"];
  "sha256:44042199497de06ece267f4be4a7dbf5aab062c1d8d77dae0394d2cbd265715d" [label="/bin/sh -c INSTALL_PKGS=\"haproxy\" &&     yum install -y $INSTALL_PKGS &&     rpm -V $INSTALL_PKGS &&     yum clean all &&     mkdir -p /var/lib/haproxy/router/{certs,cacerts} &&     mkdir -p /var/lib/haproxy/{conf,run,bin,log} &&     touch /var/lib/haproxy/conf/{{os_http_be,os_edge_http_be,os_tcp_be,os_sni_passthrough,os_reencrypt,os_edge_http_expose,os_edge_http_redirect,cert_config,os_wildcard_domain}.map,haproxy.config} &&     chmod -R 777 /var &&     setcap 'cap_net_bind_service=ep' /usr/sbin/haproxy" shape="box"];
  "sha256:0a0ccb8408c761165cd61ce11891b56d9064bd969fdbdb2cfb3640850f1fa047" [label="local://context" shape="ellipse"];
  "sha256:71354c595e6cd14f6ba4b1ec1c96fbea1530e32e68f27686430c61fbdc756891" [label="copy{src=/, dest=/var/lib/haproxy/}" shape="note"];
  "sha256:4ae0330a43b856e894ad0c1c1636f27c677761bc52fd679f27ffe9f8de7c4795" [label="mkdir{path=/var/lib/haproxy/conf}" shape="note"];
  "sha256:ee681a452945aa49ca85607792fc74ffe67bf0164889d47da682d00dda294486" [label="sha256:ee681a452945aa49ca85607792fc74ffe67bf0164889d47da682d00dda294486" shape="plaintext"];
  "sha256:fed2184a60800ca1bd93dcf7ac166be9b08716b025fbdc6df3b78b77ff931305" -> "sha256:44042199497de06ece267f4be4a7dbf5aab062c1d8d77dae0394d2cbd265715d" [label=""];
  "sha256:44042199497de06ece267f4be4a7dbf5aab062c1d8d77dae0394d2cbd265715d" -> "sha256:71354c595e6cd14f6ba4b1ec1c96fbea1530e32e68f27686430c61fbdc756891" [label=""];
  "sha256:0a0ccb8408c761165cd61ce11891b56d9064bd969fdbdb2cfb3640850f1fa047" -> "sha256:71354c595e6cd14f6ba4b1ec1c96fbea1530e32e68f27686430c61fbdc756891" [label=""];
  "sha256:71354c595e6cd14f6ba4b1ec1c96fbea1530e32e68f27686430c61fbdc756891" -> "sha256:4ae0330a43b856e894ad0c1c1636f27c677761bc52fd679f27ffe9f8de7c4795" [label=""];
  "sha256:4ae0330a43b856e894ad0c1c1636f27c677761bc52fd679f27ffe9f8de7c4795" -> "sha256:ee681a452945aa49ca85607792fc74ffe67bf0164889d47da682d00dda294486" [label=""];
}

