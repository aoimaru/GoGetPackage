[app/sources/327130400.Dockerfile]
digraph {
  "sha256:6f8532b90ab344aecf1346fb7621e511dd07e7c511787250786d7814016a5241" [label="docker-image://docker.io/library/centos:7.4.1708" shape="ellipse"];
  "sha256:2236c206edf56af4ee8fbc810482775817f1203474a1ddf08d65328d4ffee32e" [label="/bin/sh -c yum install -y ca-certificates file tzdata nfs-utils xfsprogs e4fsprogs" shape="box"];
  "sha256:fea826fad77d97ba99ffe7e0a0cc3b5d547c210ad7e5ad599e51dd1691e16547" [label="local://context" shape="ellipse"];
  "sha256:07c6915ede84e387942e4b80f8388eacc73309437e643a5241f044bbd21dd81f" [label="copy{src=/plugin.csi.alibabacloud.com, dest=/bin/plugin.csi.alibabacloud.com}" shape="note"];
  "sha256:e24d8d0c50db2bb93d2e0330dca8428038e0c903a7e2b4e3f6f53e69551c3e6a" [label="/bin/sh -c chmod +x /bin/plugin.csi.alibabacloud.com" shape="box"];
  "sha256:8568f173f8ecb882a87cea6f571db358ca4f5b498abd11c5096e74c2c46f2892" [label="sha256:8568f173f8ecb882a87cea6f571db358ca4f5b498abd11c5096e74c2c46f2892" shape="plaintext"];
  "sha256:6f8532b90ab344aecf1346fb7621e511dd07e7c511787250786d7814016a5241" -> "sha256:2236c206edf56af4ee8fbc810482775817f1203474a1ddf08d65328d4ffee32e" [label=""];
  "sha256:2236c206edf56af4ee8fbc810482775817f1203474a1ddf08d65328d4ffee32e" -> "sha256:07c6915ede84e387942e4b80f8388eacc73309437e643a5241f044bbd21dd81f" [label=""];
  "sha256:fea826fad77d97ba99ffe7e0a0cc3b5d547c210ad7e5ad599e51dd1691e16547" -> "sha256:07c6915ede84e387942e4b80f8388eacc73309437e643a5241f044bbd21dd81f" [label=""];
  "sha256:07c6915ede84e387942e4b80f8388eacc73309437e643a5241f044bbd21dd81f" -> "sha256:e24d8d0c50db2bb93d2e0330dca8428038e0c903a7e2b4e3f6f53e69551c3e6a" [label=""];
  "sha256:e24d8d0c50db2bb93d2e0330dca8428038e0c903a7e2b4e3f6f53e69551c3e6a" -> "sha256:8568f173f8ecb882a87cea6f571db358ca4f5b498abd11c5096e74c2c46f2892" [label=""];
}

