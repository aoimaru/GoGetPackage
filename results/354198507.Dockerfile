[app/sources/354198507.Dockerfile]
digraph {
  "sha256:a26d49cdad057b4c49e43f4622eeb715085747326f455827e3b18b6f1aad3304" [label="docker-image://docker.io/progrium/busybox:latest" shape="ellipse"];
  "sha256:0108337a79de6e440a2afc74552a4938c8bf145b174616a354cb28012290acf4" [label="/bin/sh -c opkg-install socat" shape="box"];
  "sha256:3a7f213f7528099754d420d025d15d5ad89be8b404185af00c0c684cd5456ac3" [label="local://context" shape="ellipse"];
  "sha256:f69e3d0de2e61cd7037be5606fd97f641bf335f1e8233d20a436b17465ec6704" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:5635b921f17e0c20bcdd4af7f95901e7b95bf2ab8566272826baf0ec709ae56d" [label="sha256:5635b921f17e0c20bcdd4af7f95901e7b95bf2ab8566272826baf0ec709ae56d" shape="plaintext"];
  "sha256:a26d49cdad057b4c49e43f4622eeb715085747326f455827e3b18b6f1aad3304" -> "sha256:0108337a79de6e440a2afc74552a4938c8bf145b174616a354cb28012290acf4" [label=""];
  "sha256:0108337a79de6e440a2afc74552a4938c8bf145b174616a354cb28012290acf4" -> "sha256:f69e3d0de2e61cd7037be5606fd97f641bf335f1e8233d20a436b17465ec6704" [label=""];
  "sha256:3a7f213f7528099754d420d025d15d5ad89be8b404185af00c0c684cd5456ac3" -> "sha256:f69e3d0de2e61cd7037be5606fd97f641bf335f1e8233d20a436b17465ec6704" [label=""];
  "sha256:f69e3d0de2e61cd7037be5606fd97f641bf335f1e8233d20a436b17465ec6704" -> "sha256:5635b921f17e0c20bcdd4af7f95901e7b95bf2ab8566272826baf0ec709ae56d" [label=""];
}

