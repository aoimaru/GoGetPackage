[app/sources/264171856.Dockerfile]
digraph {
  "sha256:f5e97232d9e28caf521f8f5f771be5e89d5c2f613980f40bee136cf8fe6e9bdd" [label="docker-image://docker.io/avatao/xss-controller:ubuntu-16.04" shape="ellipse"];
  "sha256:dcfce8b92b032d367b62332f9cc76e119d686dd85e44fcab42e38e1083746505" [label="local://context" shape="ellipse"];
  "sha256:cb4f71806d94da48a3fe8bcef0b5f6c86933a4a3034076a851c83c0100374de5" [label="copy{src=/controller, dest=/}" shape="note"];
  "sha256:c9a53a4d87a481c26b5919de1ec4b1a7dbb6ece81e9e30832d8ac0c711d4a203" [label="/bin/sh -c chown -R user:user /opt" shape="box"];
  "sha256:ecef5daec4baeadce54828382a2b6d94d0c7f2d6d3fde0bc082c50ec94c50e0a" [label="sha256:ecef5daec4baeadce54828382a2b6d94d0c7f2d6d3fde0bc082c50ec94c50e0a" shape="plaintext"];
  "sha256:f5e97232d9e28caf521f8f5f771be5e89d5c2f613980f40bee136cf8fe6e9bdd" -> "sha256:cb4f71806d94da48a3fe8bcef0b5f6c86933a4a3034076a851c83c0100374de5" [label=""];
  "sha256:dcfce8b92b032d367b62332f9cc76e119d686dd85e44fcab42e38e1083746505" -> "sha256:cb4f71806d94da48a3fe8bcef0b5f6c86933a4a3034076a851c83c0100374de5" [label=""];
  "sha256:cb4f71806d94da48a3fe8bcef0b5f6c86933a4a3034076a851c83c0100374de5" -> "sha256:c9a53a4d87a481c26b5919de1ec4b1a7dbb6ece81e9e30832d8ac0c711d4a203" [label=""];
  "sha256:c9a53a4d87a481c26b5919de1ec4b1a7dbb6ece81e9e30832d8ac0c711d4a203" -> "sha256:ecef5daec4baeadce54828382a2b6d94d0c7f2d6d3fde0bc082c50ec94c50e0a" [label=""];
}

