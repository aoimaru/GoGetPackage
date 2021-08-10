[app/sources/266030863.Dockerfile]
digraph {
  "sha256:26c9aa51d1b81015924cfa308547276f393c375227c41f5d293b960a9547eebd" [label="local://context" shape="ellipse"];
  "sha256:4fb71a4475730d0cd992a19f1b343e6d5cf1967a8c937f4c092dbd66fabeaabf" [label="docker-image://docker.io/microsoft/mssql-server-linux:latest" shape="ellipse"];
  "sha256:602d5eebaf2a3562ed1293171ecd87fa35a2c4c8b84343d927cf2702ea4fc388" [label="copy{src=/mssql.conf, dest=/}" shape="note"];
  "sha256:26c5597886fa135fe2be1d996f75549b5b2eb3dfe223089b5cf90eb82648e5ae" [label="/bin/sh -c mkdir /var/opt/mssql" shape="box"];
  "sha256:451738ce399ecf742acea6628a9151bf5fe6309e4a0ea0516c5f009324103578" [label="/bin/sh -c mv ./mssql.conf /var/opt/mssql" shape="box"];
  "sha256:932fb3d20c167422abf34011d568decc9597f7fbb728aff632be39d73de2c23a" [label="sha256:932fb3d20c167422abf34011d568decc9597f7fbb728aff632be39d73de2c23a" shape="plaintext"];
  "sha256:4fb71a4475730d0cd992a19f1b343e6d5cf1967a8c937f4c092dbd66fabeaabf" -> "sha256:602d5eebaf2a3562ed1293171ecd87fa35a2c4c8b84343d927cf2702ea4fc388" [label=""];
  "sha256:26c9aa51d1b81015924cfa308547276f393c375227c41f5d293b960a9547eebd" -> "sha256:602d5eebaf2a3562ed1293171ecd87fa35a2c4c8b84343d927cf2702ea4fc388" [label=""];
  "sha256:602d5eebaf2a3562ed1293171ecd87fa35a2c4c8b84343d927cf2702ea4fc388" -> "sha256:26c5597886fa135fe2be1d996f75549b5b2eb3dfe223089b5cf90eb82648e5ae" [label=""];
  "sha256:26c5597886fa135fe2be1d996f75549b5b2eb3dfe223089b5cf90eb82648e5ae" -> "sha256:451738ce399ecf742acea6628a9151bf5fe6309e4a0ea0516c5f009324103578" [label=""];
  "sha256:451738ce399ecf742acea6628a9151bf5fe6309e4a0ea0516c5f009324103578" -> "sha256:932fb3d20c167422abf34011d568decc9597f7fbb728aff632be39d73de2c23a" [label=""];
}

