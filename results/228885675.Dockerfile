[app/sources/228885675.Dockerfile]
digraph {
  "sha256:a47e6b49402fbf99710eef50e8aa59037a3f78c148045d45d88096ba52e6f5b3" [label="docker-image://docker.io/jupyter/all-spark-notebook:8015c88c4b11" shape="ellipse"];
  "sha256:a2f147790d1b83b48c0346ae5cefc05a6d31965a3821bf7c443cb9638b7e5a26" [label="/bin/sh -c pip install \"jupyter_kernel_gateway==$KERNEL_GATEWAY_VER\"" shape="box"];
  "sha256:4b54205a01eb702006974f25b66fbd5319f5b389da148d80d5a2842732bcb9bf" [label="/bin/sh -c pip install \"ipywidgets==$IPYWIDGETS_VER\"" shape="box"];
  "sha256:97860491b2b383443934ad5d5ad528abfa758d1fef813d6f52c73dce00c48af7" [label="/bin/sh -c pip install --pre \"jupyter_declarativewidgets==$DECLWIDGETS_VER\"" shape="box"];
  "sha256:52f3bb998ff68351a27188cbfe5ce42ad1e16cc3b279e86bd25d72e130c8b8cf" [label="/bin/sh -c bash -c \"source activate python2 && \tpip install \\\"ipywidgets==$IPYWIDGETS_VER\\\" && \tpip install --pre \\\"jupyter_declarativewidgets==$DECLWIDGETS_VER\\\"\"" shape="box"];
  "sha256:d2fbc08212b94e59e44da41ad004e42005daf7bfa3404e120d66427421f10ede" [label="sha256:d2fbc08212b94e59e44da41ad004e42005daf7bfa3404e120d66427421f10ede" shape="plaintext"];
  "sha256:a47e6b49402fbf99710eef50e8aa59037a3f78c148045d45d88096ba52e6f5b3" -> "sha256:a2f147790d1b83b48c0346ae5cefc05a6d31965a3821bf7c443cb9638b7e5a26" [label=""];
  "sha256:a2f147790d1b83b48c0346ae5cefc05a6d31965a3821bf7c443cb9638b7e5a26" -> "sha256:4b54205a01eb702006974f25b66fbd5319f5b389da148d80d5a2842732bcb9bf" [label=""];
  "sha256:4b54205a01eb702006974f25b66fbd5319f5b389da148d80d5a2842732bcb9bf" -> "sha256:97860491b2b383443934ad5d5ad528abfa758d1fef813d6f52c73dce00c48af7" [label=""];
  "sha256:97860491b2b383443934ad5d5ad528abfa758d1fef813d6f52c73dce00c48af7" -> "sha256:52f3bb998ff68351a27188cbfe5ce42ad1e16cc3b279e86bd25d72e130c8b8cf" [label=""];
  "sha256:52f3bb998ff68351a27188cbfe5ce42ad1e16cc3b279e86bd25d72e130c8b8cf" -> "sha256:d2fbc08212b94e59e44da41ad004e42005daf7bfa3404e120d66427421f10ede" [label=""];
}

