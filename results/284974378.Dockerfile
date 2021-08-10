[app/sources/284974378.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:defe7bde95140f59a5831a0ac05efcc3de752315f92a5ccf73323aa1fd9d06a4" [label="/bin/sh -c apk --update --no-cache add bash nfs-utils &&                                                       rm -v /etc/idmapd.conf /etc/exports" shape="box"];
  "sha256:5df6bbb4ed0ed289fabdba606b855485ffef9c10f7f82fdce03055b84379e08c" [label="/bin/sh -c mkdir -p /var/lib/nfs/rpc_pipefs                                                     &&     mkdir -p /var/lib/nfs/v4recovery                                                     &&     echo \"rpc_pipefs  /var/lib/nfs/rpc_pipefs  rpc_pipefs  defaults  0  0\" >> /etc/fstab &&     echo \"nfsd        /proc/fs/nfsd            nfsd        defaults  0  0\" >> /etc/fstab" shape="box"];
  "sha256:a9829e6449602414c74407191765fe32e41248d535733cee1cbb734e9ee9b375" [label="local://context" shape="ellipse"];
  "sha256:32dd853603ad8fcbc718f8be67a531a9971ed867eb1c6c6eed183482cb19d6bb" [label="copy{src=/entrypoint.sh, dest=/usr/local/bin}" shape="note"];
  "sha256:e1b8f9b5d982909a9a4c141e502679d7562a4980560e8f0c6b90e9b31b0bd9fd" [label="sha256:e1b8f9b5d982909a9a4c141e502679d7562a4980560e8f0c6b90e9b31b0bd9fd" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:defe7bde95140f59a5831a0ac05efcc3de752315f92a5ccf73323aa1fd9d06a4" [label=""];
  "sha256:defe7bde95140f59a5831a0ac05efcc3de752315f92a5ccf73323aa1fd9d06a4" -> "sha256:5df6bbb4ed0ed289fabdba606b855485ffef9c10f7f82fdce03055b84379e08c" [label=""];
  "sha256:5df6bbb4ed0ed289fabdba606b855485ffef9c10f7f82fdce03055b84379e08c" -> "sha256:32dd853603ad8fcbc718f8be67a531a9971ed867eb1c6c6eed183482cb19d6bb" [label=""];
  "sha256:a9829e6449602414c74407191765fe32e41248d535733cee1cbb734e9ee9b375" -> "sha256:32dd853603ad8fcbc718f8be67a531a9971ed867eb1c6c6eed183482cb19d6bb" [label=""];
  "sha256:32dd853603ad8fcbc718f8be67a531a9971ed867eb1c6c6eed183482cb19d6bb" -> "sha256:e1b8f9b5d982909a9a4c141e502679d7562a4980560e8f0c6b90e9b31b0bd9fd" [label=""];
}

