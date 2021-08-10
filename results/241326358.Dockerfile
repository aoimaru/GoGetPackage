[app/sources/241326358.Dockerfile]
digraph {
  "sha256:6a3a9e93101b0cedb2eecfaa5f94431112c3a90bbb1c6bf029b30bbd81083d3c" [label="docker-image://docker.io/library/haproxy:1.8.13-alpine" shape="ellipse"];
  "sha256:c62b5216d6f838e644644063708d2477110fe1fd3a2d1082dc05bd53e0c51d53" [label="local://context" shape="ellipse"];
  "sha256:153ff5db6441752b857a72ab2d847676f06ffe9c9061f42fc0830f4726748a98" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:08f2e102d546ff5686d61b388639c399f9f1cdb6f9074ad54cf8e3e297a229b3" [label="/bin/sh -c chmod +x /entrypoint.sh" shape="box"];
  "sha256:424341239ccad46983a9f12a46fe23e4d14f1caadb3af0c8f032dbe4be9bd658" [label="sha256:424341239ccad46983a9f12a46fe23e4d14f1caadb3af0c8f032dbe4be9bd658" shape="plaintext"];
  "sha256:6a3a9e93101b0cedb2eecfaa5f94431112c3a90bbb1c6bf029b30bbd81083d3c" -> "sha256:153ff5db6441752b857a72ab2d847676f06ffe9c9061f42fc0830f4726748a98" [label=""];
  "sha256:c62b5216d6f838e644644063708d2477110fe1fd3a2d1082dc05bd53e0c51d53" -> "sha256:153ff5db6441752b857a72ab2d847676f06ffe9c9061f42fc0830f4726748a98" [label=""];
  "sha256:153ff5db6441752b857a72ab2d847676f06ffe9c9061f42fc0830f4726748a98" -> "sha256:08f2e102d546ff5686d61b388639c399f9f1cdb6f9074ad54cf8e3e297a229b3" [label=""];
  "sha256:08f2e102d546ff5686d61b388639c399f9f1cdb6f9074ad54cf8e3e297a229b3" -> "sha256:424341239ccad46983a9f12a46fe23e4d14f1caadb3af0c8f032dbe4be9bd658" [label=""];
}

