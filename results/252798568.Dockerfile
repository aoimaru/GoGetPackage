[app/sources/252798568.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:672c5aea22b912bcdd6d0409a44d9c4c13eb914e36702de3ba9d498d9ae18c77" [label="/bin/sh -c apk add --no-cache openvpn" shape="box"];
  "sha256:7f74ea26d756ee3258a628cc7b9243858cab13657bcdc4bf96be4c7263cbe649" [label="local://context" shape="ellipse"];
  "sha256:2d380e9f2ac4e68aa0a8bc66e01d63d65a92e48d13daf2ce55a28c62f8ab710f" [label="copy{src=/pia, dest=/pia}" shape="note"];
  "sha256:ecaa454dd3c1e2d3991a850686e615f087c6c7ecd78a802736e3e04c5b809bbe" [label="mkdir{path=/pia}" shape="note"];
  "sha256:b4e226cb346c877d462e746270ffbd55d779bcb2fb662be90ad3ca67b15b567d" [label="copy{src=/openvpn.sh, dest=/usr/local/bin/openvpn.sh}" shape="note"];
  "sha256:dbe7225f152d549fa56b3e5493bdab2c0ec21713d54d3951c31b2b3205357f08" [label="sha256:dbe7225f152d549fa56b3e5493bdab2c0ec21713d54d3951c31b2b3205357f08" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:672c5aea22b912bcdd6d0409a44d9c4c13eb914e36702de3ba9d498d9ae18c77" [label=""];
  "sha256:672c5aea22b912bcdd6d0409a44d9c4c13eb914e36702de3ba9d498d9ae18c77" -> "sha256:2d380e9f2ac4e68aa0a8bc66e01d63d65a92e48d13daf2ce55a28c62f8ab710f" [label=""];
  "sha256:7f74ea26d756ee3258a628cc7b9243858cab13657bcdc4bf96be4c7263cbe649" -> "sha256:2d380e9f2ac4e68aa0a8bc66e01d63d65a92e48d13daf2ce55a28c62f8ab710f" [label=""];
  "sha256:2d380e9f2ac4e68aa0a8bc66e01d63d65a92e48d13daf2ce55a28c62f8ab710f" -> "sha256:ecaa454dd3c1e2d3991a850686e615f087c6c7ecd78a802736e3e04c5b809bbe" [label=""];
  "sha256:ecaa454dd3c1e2d3991a850686e615f087c6c7ecd78a802736e3e04c5b809bbe" -> "sha256:b4e226cb346c877d462e746270ffbd55d779bcb2fb662be90ad3ca67b15b567d" [label=""];
  "sha256:7f74ea26d756ee3258a628cc7b9243858cab13657bcdc4bf96be4c7263cbe649" -> "sha256:b4e226cb346c877d462e746270ffbd55d779bcb2fb662be90ad3ca67b15b567d" [label=""];
  "sha256:b4e226cb346c877d462e746270ffbd55d779bcb2fb662be90ad3ca67b15b567d" -> "sha256:dbe7225f152d549fa56b3e5493bdab2c0ec21713d54d3951c31b2b3205357f08" [label=""];
}

