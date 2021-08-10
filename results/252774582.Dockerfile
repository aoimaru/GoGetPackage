[app/sources/252774582.Dockerfile]
digraph {
  "sha256:552a976d4dba2e6d963678f6fddf8c0d3183392682d10876d1e31f9cc7942a95" [label="docker-image://docker.io/library/python:3.6.2-jessie" shape="ellipse"];
  "sha256:a610205b1530e7bb79b5c3528d4dc3288f180a68ec846565a6873712835a4a58" [label="local://context" shape="ellipse"];
  "sha256:17f83e5bbce7c0b53bece65415afddabeda58924fbcc5033562376310e49fcfe" [label="copy{src=/app.py, dest=/app.py}" shape="note"];
  "sha256:7fab8ae12c1b24ce6a7a2afe2f2dcafed57994df653242f451f703c36e1df399" [label="copy{src=/requirement.txt, dest=/requirement.txt}" shape="note"];
  "sha256:6529e963b5fb4d9096b403fe6db09c3cfb1b5e6ee9f993c4c954c5ca1ba8588e" [label="/bin/sh -c pip install -r /requirement.txt" shape="box"];
  "sha256:286e89b39e5f86295d5939ae521199ccac75105329350da9121126c84d08c9db" [label="sha256:286e89b39e5f86295d5939ae521199ccac75105329350da9121126c84d08c9db" shape="plaintext"];
  "sha256:552a976d4dba2e6d963678f6fddf8c0d3183392682d10876d1e31f9cc7942a95" -> "sha256:17f83e5bbce7c0b53bece65415afddabeda58924fbcc5033562376310e49fcfe" [label=""];
  "sha256:a610205b1530e7bb79b5c3528d4dc3288f180a68ec846565a6873712835a4a58" -> "sha256:17f83e5bbce7c0b53bece65415afddabeda58924fbcc5033562376310e49fcfe" [label=""];
  "sha256:17f83e5bbce7c0b53bece65415afddabeda58924fbcc5033562376310e49fcfe" -> "sha256:7fab8ae12c1b24ce6a7a2afe2f2dcafed57994df653242f451f703c36e1df399" [label=""];
  "sha256:a610205b1530e7bb79b5c3528d4dc3288f180a68ec846565a6873712835a4a58" -> "sha256:7fab8ae12c1b24ce6a7a2afe2f2dcafed57994df653242f451f703c36e1df399" [label=""];
  "sha256:7fab8ae12c1b24ce6a7a2afe2f2dcafed57994df653242f451f703c36e1df399" -> "sha256:6529e963b5fb4d9096b403fe6db09c3cfb1b5e6ee9f993c4c954c5ca1ba8588e" [label=""];
  "sha256:6529e963b5fb4d9096b403fe6db09c3cfb1b5e6ee9f993c4c954c5ca1ba8588e" -> "sha256:286e89b39e5f86295d5939ae521199ccac75105329350da9121126c84d08c9db" [label=""];
}

