[app/sources/252776670.Dockerfile]
digraph {
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" [label="docker-image://docker.io/library/nginx:alpine" shape="ellipse"];
  "sha256:6b09a4854b049043c9667858bd7260ce5e1021bba8b2d22e85971a602a89cda0" [label="local://context" shape="ellipse"];
  "sha256:5d16e079d5cf14df1475b257c8ba30fdc4f4ad4c062f86942eeebc74f77bd82c" [label="copy{src=/default.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:07dffce46f21a963b0dffaa262b6a069a2149e0caa17deb1397d6a08263fcc47" [label="copy{src=/src, dest=/usr/share/nginx/html/}" shape="note"];
  "sha256:94dd626a5c8f7a2928f4986a394d4f42e4f74c3aa6e014bb3556449bfa4cbe74" [label="sha256:94dd626a5c8f7a2928f4986a394d4f42e4f74c3aa6e014bb3556449bfa4cbe74" shape="plaintext"];
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" -> "sha256:5d16e079d5cf14df1475b257c8ba30fdc4f4ad4c062f86942eeebc74f77bd82c" [label=""];
  "sha256:6b09a4854b049043c9667858bd7260ce5e1021bba8b2d22e85971a602a89cda0" -> "sha256:5d16e079d5cf14df1475b257c8ba30fdc4f4ad4c062f86942eeebc74f77bd82c" [label=""];
  "sha256:5d16e079d5cf14df1475b257c8ba30fdc4f4ad4c062f86942eeebc74f77bd82c" -> "sha256:07dffce46f21a963b0dffaa262b6a069a2149e0caa17deb1397d6a08263fcc47" [label=""];
  "sha256:6b09a4854b049043c9667858bd7260ce5e1021bba8b2d22e85971a602a89cda0" -> "sha256:07dffce46f21a963b0dffaa262b6a069a2149e0caa17deb1397d6a08263fcc47" [label=""];
  "sha256:07dffce46f21a963b0dffaa262b6a069a2149e0caa17deb1397d6a08263fcc47" -> "sha256:94dd626a5c8f7a2928f4986a394d4f42e4f74c3aa6e014bb3556449bfa4cbe74" [label=""];
}

