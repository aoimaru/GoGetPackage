[app/sources/198551787.Dockerfile]
digraph {
  "sha256:35a9fd5f760d2b90d030c37766257a29fa1b6c8f91945b42dd16eb8d2fc2c867" [label="docker-image://docker.io/library/mysql:5.7" shape="ellipse"];
  "sha256:726d5ba64bf67746e2f45463b02c8f8769ccb0017e4c40c0935952025a12ccc6" [label="local://context" shape="ellipse"];
  "sha256:c903cd96916e6bde155071256418059f83fb24b6be5896d8000378ecbe457d04" [label="copy{src=/mysql.cnf, dest=/etc/mysql/conf.d/}" shape="note"];
  "sha256:f408896ffe2f57a8720485b26910ddb8a0489b9b5491999520dfd1f60564bdce" [label="copy{src=/inventory.sql, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:5267db1598b0a010605db66b74dbdf01a702a39d2726193121e9632071845792" [label="sha256:5267db1598b0a010605db66b74dbdf01a702a39d2726193121e9632071845792" shape="plaintext"];
  "sha256:35a9fd5f760d2b90d030c37766257a29fa1b6c8f91945b42dd16eb8d2fc2c867" -> "sha256:c903cd96916e6bde155071256418059f83fb24b6be5896d8000378ecbe457d04" [label=""];
  "sha256:726d5ba64bf67746e2f45463b02c8f8769ccb0017e4c40c0935952025a12ccc6" -> "sha256:c903cd96916e6bde155071256418059f83fb24b6be5896d8000378ecbe457d04" [label=""];
  "sha256:c903cd96916e6bde155071256418059f83fb24b6be5896d8000378ecbe457d04" -> "sha256:f408896ffe2f57a8720485b26910ddb8a0489b9b5491999520dfd1f60564bdce" [label=""];
  "sha256:726d5ba64bf67746e2f45463b02c8f8769ccb0017e4c40c0935952025a12ccc6" -> "sha256:f408896ffe2f57a8720485b26910ddb8a0489b9b5491999520dfd1f60564bdce" [label=""];
  "sha256:f408896ffe2f57a8720485b26910ddb8a0489b9b5491999520dfd1f60564bdce" -> "sha256:5267db1598b0a010605db66b74dbdf01a702a39d2726193121e9632071845792" [label=""];
}

