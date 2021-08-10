[app/sources/189195786.Dockerfile]
digraph {
  "sha256:0ef8f3075c2d985b746e9a1fdaf609e02cffdedcaf40c69b8fcece592c85095d" [label="docker-image://docker.io/bigm/base-deb:latest" shape="ellipse"];
  "sha256:5c3c9e576ab6f7e66b0e94b71ca76c85464599d367b0339faa04339472339533" [label="/bin/sh -c /xt/tools/_apt_install nfs-kernel-server netbase" shape="box"];
  "sha256:1f5420dd6f5762cdc1ce8ae0f901c868d8d7dd23be165ac728513bd79522923a" [label="/bin/sh -c mkdir -p $NFS_EXPORT_FOLDER" shape="box"];
  "sha256:0ee0b442855cdf24a1281229ae4e8d981c99e2892be8a387c2ddd99753bfab75" [label="local://context" shape="ellipse"];
  "sha256:9655dd309ccdde6d2698c1da561c69e3cdde1480f88abe15a668f3615041c454" [label="copy{src=/supervisor/*, dest=/etc/supervisord.d/}" shape="note"];
  "sha256:17b3b3e4a087873c2b885a381081ed3e37610b0a4e8baecb98eae86055eb24fc" [label="copy{src=/startup/*, dest=/prj/startup/}" shape="note"];
  "sha256:bd76803f373180a6bd06c29225efa486907a0009e3296eb6d82aeac8ebd77ed8" [label="copy{src=/nfs-run.sh, dest=/usr/local/bin/nfs-run}" shape="note"];
  "sha256:b624463e93d946b807ece3dbb2a91831333ebaa10b423bad6d75d675d8309838" [label="/bin/sh -c sed -i 's/^RPCMOUNTDOPTS=.*/RPCMOUNTDOPTS=\"--manage-gids --port 2233\"/' /etc/default/nfs-kernel-server" shape="box"];
  "sha256:131426cf07c18d88c1a7951070152b95ce9adb8f7aa1a282127239e86bc2b24d" [label="sha256:131426cf07c18d88c1a7951070152b95ce9adb8f7aa1a282127239e86bc2b24d" shape="plaintext"];
  "sha256:0ef8f3075c2d985b746e9a1fdaf609e02cffdedcaf40c69b8fcece592c85095d" -> "sha256:5c3c9e576ab6f7e66b0e94b71ca76c85464599d367b0339faa04339472339533" [label=""];
  "sha256:5c3c9e576ab6f7e66b0e94b71ca76c85464599d367b0339faa04339472339533" -> "sha256:1f5420dd6f5762cdc1ce8ae0f901c868d8d7dd23be165ac728513bd79522923a" [label=""];
  "sha256:1f5420dd6f5762cdc1ce8ae0f901c868d8d7dd23be165ac728513bd79522923a" -> "sha256:9655dd309ccdde6d2698c1da561c69e3cdde1480f88abe15a668f3615041c454" [label=""];
  "sha256:0ee0b442855cdf24a1281229ae4e8d981c99e2892be8a387c2ddd99753bfab75" -> "sha256:9655dd309ccdde6d2698c1da561c69e3cdde1480f88abe15a668f3615041c454" [label=""];
  "sha256:9655dd309ccdde6d2698c1da561c69e3cdde1480f88abe15a668f3615041c454" -> "sha256:17b3b3e4a087873c2b885a381081ed3e37610b0a4e8baecb98eae86055eb24fc" [label=""];
  "sha256:0ee0b442855cdf24a1281229ae4e8d981c99e2892be8a387c2ddd99753bfab75" -> "sha256:17b3b3e4a087873c2b885a381081ed3e37610b0a4e8baecb98eae86055eb24fc" [label=""];
  "sha256:17b3b3e4a087873c2b885a381081ed3e37610b0a4e8baecb98eae86055eb24fc" -> "sha256:bd76803f373180a6bd06c29225efa486907a0009e3296eb6d82aeac8ebd77ed8" [label=""];
  "sha256:0ee0b442855cdf24a1281229ae4e8d981c99e2892be8a387c2ddd99753bfab75" -> "sha256:bd76803f373180a6bd06c29225efa486907a0009e3296eb6d82aeac8ebd77ed8" [label=""];
  "sha256:bd76803f373180a6bd06c29225efa486907a0009e3296eb6d82aeac8ebd77ed8" -> "sha256:b624463e93d946b807ece3dbb2a91831333ebaa10b423bad6d75d675d8309838" [label=""];
  "sha256:b624463e93d946b807ece3dbb2a91831333ebaa10b423bad6d75d675d8309838" -> "sha256:131426cf07c18d88c1a7951070152b95ce9adb8f7aa1a282127239e86bc2b24d" [label=""];
}

