[app/sources/251500556.Dockerfile]
digraph {
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" [label="docker-image://docker.io/library/node:8" shape="ellipse"];
  "sha256:9cd207dbb0310a22815cbb835557ae7f6584f88afc08326ad1a9c8e313fd1791" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:8980b15c0b1e1596d826cdcc077de370a1d2bb4859011954884befeea3203562" [label="local://context" shape="ellipse"];
  "sha256:5c03515e8716d693cd8d28023a86a00e3d691c6c3d0e62e50b1feba96b8bf016" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:86c9bc4ab741b742db2855f1222f2d6a9780c7c66b316979b18ab558b56ca4a3" [label="mkdir{path=/usr/src/app/component}" shape="note"];
  "sha256:a4ce3cf1157dc78246e6ff3a9cd38fe82b51a18365da813778dad2f6150e5a59" [label="sha256:a4ce3cf1157dc78246e6ff3a9cd38fe82b51a18365da813778dad2f6150e5a59" shape="plaintext"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" -> "sha256:9cd207dbb0310a22815cbb835557ae7f6584f88afc08326ad1a9c8e313fd1791" [label=""];
  "sha256:9cd207dbb0310a22815cbb835557ae7f6584f88afc08326ad1a9c8e313fd1791" -> "sha256:5c03515e8716d693cd8d28023a86a00e3d691c6c3d0e62e50b1feba96b8bf016" [label=""];
  "sha256:8980b15c0b1e1596d826cdcc077de370a1d2bb4859011954884befeea3203562" -> "sha256:5c03515e8716d693cd8d28023a86a00e3d691c6c3d0e62e50b1feba96b8bf016" [label=""];
  "sha256:5c03515e8716d693cd8d28023a86a00e3d691c6c3d0e62e50b1feba96b8bf016" -> "sha256:86c9bc4ab741b742db2855f1222f2d6a9780c7c66b316979b18ab558b56ca4a3" [label=""];
  "sha256:86c9bc4ab741b742db2855f1222f2d6a9780c7c66b316979b18ab558b56ca4a3" -> "sha256:a4ce3cf1157dc78246e6ff3a9cd38fe82b51a18365da813778dad2f6150e5a59" [label=""];
}

