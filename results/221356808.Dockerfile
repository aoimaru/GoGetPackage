[app/sources/221356808.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:67f97360cba4444df308ff86d2f5ab9e1a981f675b965d2e1fdee8e08a9382cc" [label="/bin/sh -c dnf upgrade -y && dnf install -y geos-devel opencv-python pygame numpy" shape="box"];
  "sha256:132580395bb049c251bf085bb800394188d1ae11a544594f963a993022357af5" [label="/bin/sh -c pip install --upgrade pip && pip install Shapely" shape="box"];
  "sha256:7b0ca793325795884e9192a5f920e9209539ff32a7d9208d4773def4df29d793" [label="/bin/sh -c pip install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.9.0-cp27-none-linux_x86_64.whl" shape="box"];
  "sha256:c43a2db8596c0319c54d610f1529e5d584bccd6e34d050ded177efd586f1a4dd" [label="sha256:c43a2db8596c0319c54d610f1529e5d584bccd6e34d050ded177efd586f1a4dd" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:67f97360cba4444df308ff86d2f5ab9e1a981f675b965d2e1fdee8e08a9382cc" [label=""];
  "sha256:67f97360cba4444df308ff86d2f5ab9e1a981f675b965d2e1fdee8e08a9382cc" -> "sha256:132580395bb049c251bf085bb800394188d1ae11a544594f963a993022357af5" [label=""];
  "sha256:132580395bb049c251bf085bb800394188d1ae11a544594f963a993022357af5" -> "sha256:7b0ca793325795884e9192a5f920e9209539ff32a7d9208d4773def4df29d793" [label=""];
  "sha256:7b0ca793325795884e9192a5f920e9209539ff32a7d9208d4773def4df29d793" -> "sha256:c43a2db8596c0319c54d610f1529e5d584bccd6e34d050ded177efd586f1a4dd" [label=""];
}

