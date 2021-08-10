[app/sources/388316044.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:2085a784bee8bf543677a075597c629fb2efcdda8c883602e5d735bfc1c065fd" [label="/bin/sh -c apt-get update && apt-get install -y         curl         dnsutils         python         python-dev         python-numpy         python-pip         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f34b78ee40ae3777832821fa86c3b405847bdd8c3dac8b392f3d7dc8225f16c7" [label="/bin/sh -c curl -O https://bootstrap.pypa.io/get-pip.py &&     python get-pip.py &&     rm get-pip.py" shape="box"];
  "sha256:b73cda38ba5956951c5947f58db85357ce24a84328f63051acfdd600110fe04a" [label="/bin/sh -c pip install --upgrade pandas==0.18.1" shape="box"];
  "sha256:19606aeb38e566557618b9ace6efdd153d3a6f63494f8750bdbcf21ae658deb1" [label="local://context" shape="ellipse"];
  "sha256:5475c37793006580c880156b71106d59a290aecfc68bf42cffbd7962a9c97f7b" [label="copy{src=/tensorflow-*.whl, dest=/}" shape="note"];
  "sha256:8981e4cdc65cee22af3ca5d7f9c3757d28c4b9ae1830807bdec6fb777f92649a" [label="/bin/sh -c pip install /tensorflow-*.whl &&     rm -f /tensorflow-*.whl" shape="box"];
  "sha256:f158fca060f7e069c7926769681dda86cf7dd145b0ac92bb1271ff695a5374fb" [label="copy{src=/, dest=/var/tf-k8s}" shape="note"];
  "sha256:8527cbe0911baa4664381d14bac04a42f5d48d9ec1bdd14d692e474bcfa63e8b" [label="/bin/sh -c mkdir -p /tmp/mnist-data" shape="box"];
  "sha256:a66f98cf28b3564b42bd9d4f51293bd7a0f66be40d9b24b5846733e86088adbc" [label="/bin/sh -c curl -o /tmp/mnist-data/train-labels-idx1-ubyte.gz     https://storage.googleapis.com/cvdf-datasets/mnist/train-labels-idx1-ubyte.gz" shape="box"];
  "sha256:193e0a84e48cbf015bfc85f528c3782e15e15d033cf592df9aa931e37a672e72" [label="/bin/sh -c curl -o /tmp/mnist-data/train-images-idx3-ubyte.gz     https://storage.googleapis.com/cvdf-datasets/mnist/train-images-idx3-ubyte.gz" shape="box"];
  "sha256:26ad32b270526292dcf3dc1cd7931f30cbe5d644883319f35b43cb5f967ffaa6" [label="/bin/sh -c curl -o /tmp/mnist-data/t10k-labels-idx1-ubyte.gz     https://storage.googleapis.com/cvdf-datasets/mnist/t10k-labels-idx1-ubyte.gz" shape="box"];
  "sha256:70b5aac0385ae7b6273f592a0318c08fe037b2fb22e763cbd52bf09f430201e3" [label="/bin/sh -c curl -o /tmp/mnist-data/t10k-images-idx3-ubyte.gz     https://storage.googleapis.com/cvdf-datasets/mnist/t10k-images-idx3-ubyte.gz" shape="box"];
  "sha256:a84473a73c7527879fc7819cc05710ee672a708660fcb2c841d4b19fd6d71ccf" [label="/bin/sh -c mkdir -p /tmp/census-data" shape="box"];
  "sha256:a7bfade5ace2d3e83ce6d7b0d46d48a500e8455e62f3c0b6db63a3b177a077c1" [label="/bin/sh -c curl -o /tmp/census-data/adult.data     http://mlr.cs.umass.edu/ml/machine-learning-databases/adult/adult.data" shape="box"];
  "sha256:01bcfbe6322f4beec95c7727bf21c5801869ff0e3897a3bd7cff938798866f20" [label="/bin/sh -c curl -o /tmp/census-data/adult.test     http://mlr.cs.umass.edu/ml/machine-learning-databases/adult/adult.test" shape="box"];
  "sha256:614c3424037953dd45b82f10e0435f6eaf5760b4eefab564537d22c8c43f2e93" [label="sha256:614c3424037953dd45b82f10e0435f6eaf5760b4eefab564537d22c8c43f2e93" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:2085a784bee8bf543677a075597c629fb2efcdda8c883602e5d735bfc1c065fd" [label=""];
  "sha256:2085a784bee8bf543677a075597c629fb2efcdda8c883602e5d735bfc1c065fd" -> "sha256:f34b78ee40ae3777832821fa86c3b405847bdd8c3dac8b392f3d7dc8225f16c7" [label=""];
  "sha256:f34b78ee40ae3777832821fa86c3b405847bdd8c3dac8b392f3d7dc8225f16c7" -> "sha256:b73cda38ba5956951c5947f58db85357ce24a84328f63051acfdd600110fe04a" [label=""];
  "sha256:b73cda38ba5956951c5947f58db85357ce24a84328f63051acfdd600110fe04a" -> "sha256:5475c37793006580c880156b71106d59a290aecfc68bf42cffbd7962a9c97f7b" [label=""];
  "sha256:19606aeb38e566557618b9ace6efdd153d3a6f63494f8750bdbcf21ae658deb1" -> "sha256:5475c37793006580c880156b71106d59a290aecfc68bf42cffbd7962a9c97f7b" [label=""];
  "sha256:5475c37793006580c880156b71106d59a290aecfc68bf42cffbd7962a9c97f7b" -> "sha256:8981e4cdc65cee22af3ca5d7f9c3757d28c4b9ae1830807bdec6fb777f92649a" [label=""];
  "sha256:8981e4cdc65cee22af3ca5d7f9c3757d28c4b9ae1830807bdec6fb777f92649a" -> "sha256:f158fca060f7e069c7926769681dda86cf7dd145b0ac92bb1271ff695a5374fb" [label=""];
  "sha256:19606aeb38e566557618b9ace6efdd153d3a6f63494f8750bdbcf21ae658deb1" -> "sha256:f158fca060f7e069c7926769681dda86cf7dd145b0ac92bb1271ff695a5374fb" [label=""];
  "sha256:f158fca060f7e069c7926769681dda86cf7dd145b0ac92bb1271ff695a5374fb" -> "sha256:8527cbe0911baa4664381d14bac04a42f5d48d9ec1bdd14d692e474bcfa63e8b" [label=""];
  "sha256:8527cbe0911baa4664381d14bac04a42f5d48d9ec1bdd14d692e474bcfa63e8b" -> "sha256:a66f98cf28b3564b42bd9d4f51293bd7a0f66be40d9b24b5846733e86088adbc" [label=""];
  "sha256:a66f98cf28b3564b42bd9d4f51293bd7a0f66be40d9b24b5846733e86088adbc" -> "sha256:193e0a84e48cbf015bfc85f528c3782e15e15d033cf592df9aa931e37a672e72" [label=""];
  "sha256:193e0a84e48cbf015bfc85f528c3782e15e15d033cf592df9aa931e37a672e72" -> "sha256:26ad32b270526292dcf3dc1cd7931f30cbe5d644883319f35b43cb5f967ffaa6" [label=""];
  "sha256:26ad32b270526292dcf3dc1cd7931f30cbe5d644883319f35b43cb5f967ffaa6" -> "sha256:70b5aac0385ae7b6273f592a0318c08fe037b2fb22e763cbd52bf09f430201e3" [label=""];
  "sha256:70b5aac0385ae7b6273f592a0318c08fe037b2fb22e763cbd52bf09f430201e3" -> "sha256:a84473a73c7527879fc7819cc05710ee672a708660fcb2c841d4b19fd6d71ccf" [label=""];
  "sha256:a84473a73c7527879fc7819cc05710ee672a708660fcb2c841d4b19fd6d71ccf" -> "sha256:a7bfade5ace2d3e83ce6d7b0d46d48a500e8455e62f3c0b6db63a3b177a077c1" [label=""];
  "sha256:a7bfade5ace2d3e83ce6d7b0d46d48a500e8455e62f3c0b6db63a3b177a077c1" -> "sha256:01bcfbe6322f4beec95c7727bf21c5801869ff0e3897a3bd7cff938798866f20" [label=""];
  "sha256:01bcfbe6322f4beec95c7727bf21c5801869ff0e3897a3bd7cff938798866f20" -> "sha256:614c3424037953dd45b82f10e0435f6eaf5760b4eefab564537d22c8c43f2e93" [label=""];
}

