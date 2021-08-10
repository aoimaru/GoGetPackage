[app/sources/194339070.Dockerfile]
digraph {
  "sha256:78ed7a9c773543a20d3d282ef8b072c935b146d46f039aaa0f8a2f5072f989b0" [label="docker-image://docker.io/arwineap/docker-ubuntu-python3.6:latest" shape="ellipse"];
  "sha256:b67eee737f9959ba40ae522f05aa972747516c0c4c2c8b809ec2529783eadf84" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:dd12a43bcce29c40276d2135237d5939e8c0e77d8203996c700f3fc7363d4a5e" [label="/bin/sh -c apt install -y python3.6" shape="box"];
  "sha256:0ab8e1aa4086b4398b4b1d613cdf3970efffff71de98aa43238d3650727fa6ec" [label="/bin/sh -c pip install --upgrade setuptools" shape="box"];
  "sha256:d1582a59d6bc440ed5f54bd4307c9a8a79a9702caa2f65f0d68cfbe4dfcba0ba" [label="/bin/sh -c apt-get install -y python3.6-dev build-essential" shape="box"];
  "sha256:47adaa7508b7012fa4d8b46920a370f66af1cf68e78767136f9dc6239ae5b667" [label="/bin/sh -c apt-get install -y libblas-dev libatlas-base-dev" shape="box"];
  "sha256:a9915c6d376fe6dce89f04985477c5185fe66b17eda1580d1ec78c8c844cb7db" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:dfa4c6fa1092d7570425b77db069b448a4e78322cc35ebe75886db57320d56db" [label="/bin/sh -c apt-get install -y python3-tk" shape="box"];
  "sha256:ef14f997d3ee852699fd72a44b73f840fc1082f0ee4482d35278aca78718236d" [label="/bin/sh -c apt install -y libglib2.0-0" shape="box"];
  "sha256:9ef0fa595f43c71b9a6e9fc88fdf94360bcfe5835b54214cced2c7e80177273f" [label="/bin/sh -c apt install -y libsm6 libxext6" shape="box"];
  "sha256:a52dfe0cce7edefc7a7bb6b1905cd5c4a3b18f49afe1711c8df0aaf543ec3501" [label="/bin/sh -c pip install bindsnet" shape="box"];
  "sha256:2556303c70480a7fcbc45db313eb7bef3c43532a9c4517960dd3e50aa8990f25" [label="/bin/sh -c apt-get install -y git-core" shape="box"];
  "sha256:d2111aa7d15cd42776412c2d14d9821b7eb5ac40a832a9ce72d1a4c86149fbb3" [label="/bin/sh -c apt install -y vim" shape="box"];
  "sha256:9480287b1671086b8dd68b531a902e501ec7434ec7f04d7afca824ae52c36e91" [label="/bin/sh -c pip install jupyter -U && pip install jupyterlab" shape="box"];
  "sha256:028b0b2034395ee1b3867f78986a0e2bd461587c51e5fef7a36db0d92ccfb970" [label="/bin/sh -c touch ~/.bash_aliases" shape="box"];
  "sha256:e638b5763e4c1403968168661e5e77d5120e78fb8cbd61b085b4440385c2ac9f" [label="/bin/sh -c echo alias python=\\'/usr/bin/python3.6\\' >> ~/.bash_aliases" shape="box"];
  "sha256:57bb34101ee3d2c605372d22e1c066b3213959464fe28d6a2ddebbdc935ee702" [label="/bin/sh -c mkdir working" shape="box"];
  "sha256:a6aee8a9d6e5b9f5d4a765650a004fc7e45ee83372474f0f0ea2b194516d8c61" [label="/bin/sh -c chmod 777 \\/working" shape="box"];
  "sha256:982dea1957afa0c57ada746c45049f5f12f603d13acba83dcba062125e44ca14" [label="sha256:982dea1957afa0c57ada746c45049f5f12f603d13acba83dcba062125e44ca14" shape="plaintext"];
  "sha256:78ed7a9c773543a20d3d282ef8b072c935b146d46f039aaa0f8a2f5072f989b0" -> "sha256:b67eee737f9959ba40ae522f05aa972747516c0c4c2c8b809ec2529783eadf84" [label=""];
  "sha256:b67eee737f9959ba40ae522f05aa972747516c0c4c2c8b809ec2529783eadf84" -> "sha256:dd12a43bcce29c40276d2135237d5939e8c0e77d8203996c700f3fc7363d4a5e" [label=""];
  "sha256:dd12a43bcce29c40276d2135237d5939e8c0e77d8203996c700f3fc7363d4a5e" -> "sha256:0ab8e1aa4086b4398b4b1d613cdf3970efffff71de98aa43238d3650727fa6ec" [label=""];
  "sha256:0ab8e1aa4086b4398b4b1d613cdf3970efffff71de98aa43238d3650727fa6ec" -> "sha256:d1582a59d6bc440ed5f54bd4307c9a8a79a9702caa2f65f0d68cfbe4dfcba0ba" [label=""];
  "sha256:d1582a59d6bc440ed5f54bd4307c9a8a79a9702caa2f65f0d68cfbe4dfcba0ba" -> "sha256:47adaa7508b7012fa4d8b46920a370f66af1cf68e78767136f9dc6239ae5b667" [label=""];
  "sha256:47adaa7508b7012fa4d8b46920a370f66af1cf68e78767136f9dc6239ae5b667" -> "sha256:a9915c6d376fe6dce89f04985477c5185fe66b17eda1580d1ec78c8c844cb7db" [label=""];
  "sha256:a9915c6d376fe6dce89f04985477c5185fe66b17eda1580d1ec78c8c844cb7db" -> "sha256:dfa4c6fa1092d7570425b77db069b448a4e78322cc35ebe75886db57320d56db" [label=""];
  "sha256:dfa4c6fa1092d7570425b77db069b448a4e78322cc35ebe75886db57320d56db" -> "sha256:ef14f997d3ee852699fd72a44b73f840fc1082f0ee4482d35278aca78718236d" [label=""];
  "sha256:ef14f997d3ee852699fd72a44b73f840fc1082f0ee4482d35278aca78718236d" -> "sha256:9ef0fa595f43c71b9a6e9fc88fdf94360bcfe5835b54214cced2c7e80177273f" [label=""];
  "sha256:9ef0fa595f43c71b9a6e9fc88fdf94360bcfe5835b54214cced2c7e80177273f" -> "sha256:a52dfe0cce7edefc7a7bb6b1905cd5c4a3b18f49afe1711c8df0aaf543ec3501" [label=""];
  "sha256:a52dfe0cce7edefc7a7bb6b1905cd5c4a3b18f49afe1711c8df0aaf543ec3501" -> "sha256:2556303c70480a7fcbc45db313eb7bef3c43532a9c4517960dd3e50aa8990f25" [label=""];
  "sha256:2556303c70480a7fcbc45db313eb7bef3c43532a9c4517960dd3e50aa8990f25" -> "sha256:d2111aa7d15cd42776412c2d14d9821b7eb5ac40a832a9ce72d1a4c86149fbb3" [label=""];
  "sha256:d2111aa7d15cd42776412c2d14d9821b7eb5ac40a832a9ce72d1a4c86149fbb3" -> "sha256:9480287b1671086b8dd68b531a902e501ec7434ec7f04d7afca824ae52c36e91" [label=""];
  "sha256:9480287b1671086b8dd68b531a902e501ec7434ec7f04d7afca824ae52c36e91" -> "sha256:028b0b2034395ee1b3867f78986a0e2bd461587c51e5fef7a36db0d92ccfb970" [label=""];
  "sha256:028b0b2034395ee1b3867f78986a0e2bd461587c51e5fef7a36db0d92ccfb970" -> "sha256:e638b5763e4c1403968168661e5e77d5120e78fb8cbd61b085b4440385c2ac9f" [label=""];
  "sha256:e638b5763e4c1403968168661e5e77d5120e78fb8cbd61b085b4440385c2ac9f" -> "sha256:57bb34101ee3d2c605372d22e1c066b3213959464fe28d6a2ddebbdc935ee702" [label=""];
  "sha256:57bb34101ee3d2c605372d22e1c066b3213959464fe28d6a2ddebbdc935ee702" -> "sha256:a6aee8a9d6e5b9f5d4a765650a004fc7e45ee83372474f0f0ea2b194516d8c61" [label=""];
  "sha256:a6aee8a9d6e5b9f5d4a765650a004fc7e45ee83372474f0f0ea2b194516d8c61" -> "sha256:982dea1957afa0c57ada746c45049f5f12f603d13acba83dcba062125e44ca14" [label=""];
}

