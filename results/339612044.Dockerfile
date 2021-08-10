[app/sources/339612044.Dockerfile]
digraph {
  "sha256:90f9b7dcb558f708132107dda523b312ac3307047ba6daf7a0857ec11f953c7a" [label="docker-image://docker.io/tensorflow/tensorflow:latest-devel-gpu-py3" shape="ellipse"];
  "sha256:a3604a7b6d4ea862253312d7b05a66faae271900918518af344ab157457747f2" [label="/bin/sh -c mkdir -p /data" shape="box"];
  "sha256:b1d00e23b8d9dd451cb4e2bfa320f93f627ce5daff7ca0154b5ee288d4d3bffe" [label="mkdir{path=/data}" shape="note"];
  "sha256:c15c25cb35f04644bbdfbb3539bfada07a5ae0bdeea9a2da91d1e211493eb31d" [label="/bin/sh -c python -m pip install jupyterlab gputil psutil humanize seaborn keras tables nltk faker tqdm babel gensim &&     pip install --upgrade pip" shape="box"];
  "sha256:18f8b4c760de83fa3d9b02660e55fa24430941ae03da9a5e3707d522036e323a" [label="sha256:18f8b4c760de83fa3d9b02660e55fa24430941ae03da9a5e3707d522036e323a" shape="plaintext"];
  "sha256:90f9b7dcb558f708132107dda523b312ac3307047ba6daf7a0857ec11f953c7a" -> "sha256:a3604a7b6d4ea862253312d7b05a66faae271900918518af344ab157457747f2" [label=""];
  "sha256:a3604a7b6d4ea862253312d7b05a66faae271900918518af344ab157457747f2" -> "sha256:b1d00e23b8d9dd451cb4e2bfa320f93f627ce5daff7ca0154b5ee288d4d3bffe" [label=""];
  "sha256:b1d00e23b8d9dd451cb4e2bfa320f93f627ce5daff7ca0154b5ee288d4d3bffe" -> "sha256:c15c25cb35f04644bbdfbb3539bfada07a5ae0bdeea9a2da91d1e211493eb31d" [label=""];
  "sha256:c15c25cb35f04644bbdfbb3539bfada07a5ae0bdeea9a2da91d1e211493eb31d" -> "sha256:18f8b4c760de83fa3d9b02660e55fa24430941ae03da9a5e3707d522036e323a" [label=""];
}

