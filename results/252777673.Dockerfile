[app/sources/252777673.Dockerfile]
digraph {
  "sha256:10a87e04dcd4edfb65b2a4f201246fc0ed58fbd61057b4f49d99c806f2d52cab" [label="docker-image://docker.io/tensorflow/tensorflow:1.3.0-py3" shape="ellipse"];
  "sha256:af399583cf5f8819403d027148079765c26f1025e9a158be02e52fbab411b551" [label="/bin/sh -c pip3 --no-cache-dir install --upgrade tensorflow-tensorboard" shape="box"];
  "sha256:a12dfeeb2fe7d77b876093bcc3465059429e0f0b930fea1c0311d3d59c251905" [label="sha256:a12dfeeb2fe7d77b876093bcc3465059429e0f0b930fea1c0311d3d59c251905" shape="plaintext"];
  "sha256:10a87e04dcd4edfb65b2a4f201246fc0ed58fbd61057b4f49d99c806f2d52cab" -> "sha256:af399583cf5f8819403d027148079765c26f1025e9a158be02e52fbab411b551" [label=""];
  "sha256:af399583cf5f8819403d027148079765c26f1025e9a158be02e52fbab411b551" -> "sha256:a12dfeeb2fe7d77b876093bcc3465059429e0f0b930fea1c0311d3d59c251905" [label=""];
}

