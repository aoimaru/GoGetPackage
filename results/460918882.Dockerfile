[app/sources/460918882.Dockerfile]
digraph {
  "sha256:1d916039352c0ef4fe2312846f8fd6aad801710329ba6742bcbe82075b24dd96" [label="docker-image://docker.io/tensorflow/tensorflow:1.12.0-gpu-py3" shape="ellipse"];
  "sha256:6d1ae293edcd3c7c6c6f47bb08f60fdacfffbc4d3b3080464894479a288eed69" [label="/bin/sh -c apt-get update && apt-get install -yq     build-essential     libsm6     libxext-dev     libxrender1     netcat     python3-dev     tzdata     unzip     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0fdcf83e3ce668a56d6c0f5c9028c44d8dea6469d5a218d2392c1275a9626ba3" [label="/bin/sh -c pip install pycrypto" shape="box"];
  "sha256:8ce21f703e274ebc7b0ed6e6a26f86de313053451bc0242b0527da639dcd5dee" [label="local://context" shape="ellipse"];
  "sha256:00e0541c1dc401360ea13a8eabf98dcef625d2bccd5163edf8daf9a27df24af2" [label="copy{src=/jupyter_enterprise_gateway_kernel_image_files*.tar.gz, dest=/usr/local/bin/}" shape="note"];
  "sha256:2316a049bf6e470bf9474c51cc429828940afebbad6515642aeb0c2afa2d8119" [label="/bin/sh -c adduser --system --uid 1000 --gid 100 jovyan &&     chown jovyan:users /usr/local/bin/bootstrap-kernel.sh &&     chmod 0755 /usr/local/bin/bootstrap-kernel.sh &&     chown -R jovyan:users /usr/local/bin/kernel-launchers" shape="box"];
  "sha256:7349a4449c73c2b725f205d5bba2eed0e4672952dce93a45641fac2915940d67" [label="sha256:7349a4449c73c2b725f205d5bba2eed0e4672952dce93a45641fac2915940d67" shape="plaintext"];
  "sha256:1d916039352c0ef4fe2312846f8fd6aad801710329ba6742bcbe82075b24dd96" -> "sha256:6d1ae293edcd3c7c6c6f47bb08f60fdacfffbc4d3b3080464894479a288eed69" [label=""];
  "sha256:6d1ae293edcd3c7c6c6f47bb08f60fdacfffbc4d3b3080464894479a288eed69" -> "sha256:0fdcf83e3ce668a56d6c0f5c9028c44d8dea6469d5a218d2392c1275a9626ba3" [label=""];
  "sha256:0fdcf83e3ce668a56d6c0f5c9028c44d8dea6469d5a218d2392c1275a9626ba3" -> "sha256:00e0541c1dc401360ea13a8eabf98dcef625d2bccd5163edf8daf9a27df24af2" [label=""];
  "sha256:8ce21f703e274ebc7b0ed6e6a26f86de313053451bc0242b0527da639dcd5dee" -> "sha256:00e0541c1dc401360ea13a8eabf98dcef625d2bccd5163edf8daf9a27df24af2" [label=""];
  "sha256:00e0541c1dc401360ea13a8eabf98dcef625d2bccd5163edf8daf9a27df24af2" -> "sha256:2316a049bf6e470bf9474c51cc429828940afebbad6515642aeb0c2afa2d8119" [label=""];
  "sha256:2316a049bf6e470bf9474c51cc429828940afebbad6515642aeb0c2afa2d8119" -> "sha256:7349a4449c73c2b725f205d5bba2eed0e4672952dce93a45641fac2915940d67" [label=""];
}

