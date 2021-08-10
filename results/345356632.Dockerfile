[app/sources/345356632.Dockerfile]
digraph {
  "sha256:8d172f7ad8418d63f10b686b48a178f92f978ed768ad77128ae4027a4c59b53c" [label="docker-image://docker.io/balenalib/i386-ubuntu:xenial-run" shape="ellipse"];
  "sha256:c47cf5fb478f4ce69b693eebb9b5ef1464c3ae6e3213cc68ffa9753c05dd4329" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:aa3a5bc375520486a785806edbe85868a037af06086a857ba7b119ab797dee60" [label="sha256:aa3a5bc375520486a785806edbe85868a037af06086a857ba7b119ab797dee60" shape="plaintext"];
  "sha256:8d172f7ad8418d63f10b686b48a178f92f978ed768ad77128ae4027a4c59b53c" -> "sha256:c47cf5fb478f4ce69b693eebb9b5ef1464c3ae6e3213cc68ffa9753c05dd4329" [label=""];
  "sha256:c47cf5fb478f4ce69b693eebb9b5ef1464c3ae6e3213cc68ffa9753c05dd4329" -> "sha256:aa3a5bc375520486a785806edbe85868a037af06086a857ba7b119ab797dee60" [label=""];
}

