[app/sources/252793105.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:6cd456515f493a3ffcd50f3b9fdbe461d26e3fbc27f264328a5ee704dc0a3464" [label="/bin/sh -c apt-get install -y nginx" shape="box"];
  "sha256:aa11b67dc78711aee277435b8e05830d87012d2ab5421dcfb47b10b8074fdea4" [label="/bin/sh -c echo \"\\ndaemon off;\" >> /etc/nginx/ngionx.conf" shape="box"];
  "sha256:5601cf645c887ac2921892349f5063985e761c0fe0d83057e6e7493e42490a82" [label="/bin/sh -c chown -R www-data:www-data /var/lib/nginx" shape="box"];
  "sha256:40f20b4c12115151e5ce5ed6ffe0fa377c3c59244313af506908ba1506f3d4a0" [label="mkdir{path=/etc/nginx}" shape="note"];
  "sha256:9f86e76a48b56f00771e1b5717bcf66ec507ababdcd77146b308dafb9639de4d" [label="sha256:9f86e76a48b56f00771e1b5717bcf66ec507ababdcd77146b308dafb9639de4d" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label=""];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" -> "sha256:6cd456515f493a3ffcd50f3b9fdbe461d26e3fbc27f264328a5ee704dc0a3464" [label=""];
  "sha256:6cd456515f493a3ffcd50f3b9fdbe461d26e3fbc27f264328a5ee704dc0a3464" -> "sha256:aa11b67dc78711aee277435b8e05830d87012d2ab5421dcfb47b10b8074fdea4" [label=""];
  "sha256:aa11b67dc78711aee277435b8e05830d87012d2ab5421dcfb47b10b8074fdea4" -> "sha256:5601cf645c887ac2921892349f5063985e761c0fe0d83057e6e7493e42490a82" [label=""];
  "sha256:5601cf645c887ac2921892349f5063985e761c0fe0d83057e6e7493e42490a82" -> "sha256:40f20b4c12115151e5ce5ed6ffe0fa377c3c59244313af506908ba1506f3d4a0" [label=""];
  "sha256:40f20b4c12115151e5ce5ed6ffe0fa377c3c59244313af506908ba1506f3d4a0" -> "sha256:9f86e76a48b56f00771e1b5717bcf66ec507ababdcd77146b308dafb9639de4d" [label=""];
}

