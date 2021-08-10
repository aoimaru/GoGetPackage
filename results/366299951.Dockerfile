[app/sources/366299951.Dockerfile]
digraph {
  "sha256:8c8bc941a4870a88a9882e5c10e39585f49c049120f327a9e6fe680e6b548649" [label="docker-image://docker.io/library/haproxy:1.5" shape="ellipse"];
  "sha256:b402b44f90d17c1589fdbf3ce0a120cc640cff0ec7c193f34fca5ddec3ac5879" [label="local://context" shape="ellipse"];
  "sha256:b29212be0728de70336fc1361efcfcc6653f91896252642c23d4a0e6b9a74f84" [label="copy{src=/haproxy.cfg, dest=/usr/local/etc/haproxy/haproxy.cfg}" shape="note"];
  "sha256:72abe65be0a64600bfb259a92da02c0b4c4068cae3265f2c431301918c33ce6c" [label="sha256:72abe65be0a64600bfb259a92da02c0b4c4068cae3265f2c431301918c33ce6c" shape="plaintext"];
  "sha256:8c8bc941a4870a88a9882e5c10e39585f49c049120f327a9e6fe680e6b548649" -> "sha256:b29212be0728de70336fc1361efcfcc6653f91896252642c23d4a0e6b9a74f84" [label=""];
  "sha256:b402b44f90d17c1589fdbf3ce0a120cc640cff0ec7c193f34fca5ddec3ac5879" -> "sha256:b29212be0728de70336fc1361efcfcc6653f91896252642c23d4a0e6b9a74f84" [label=""];
  "sha256:b29212be0728de70336fc1361efcfcc6653f91896252642c23d4a0e6b9a74f84" -> "sha256:72abe65be0a64600bfb259a92da02c0b4c4068cae3265f2c431301918c33ce6c" [label=""];
}

