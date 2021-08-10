[app/sources/252798873.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:7aecbefb5df7e218322ea7a0a10ba0a852c2f45b91582cb0f3d8c00e21ebe9a9" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:7d36790a38b9381cbac7f5410075a6ae8d616ac3cb92ffa7a6986dabf12a72d8" [label="/bin/sh -c apt-get install --yes curl libgdal-dev python3-dev build-essential" shape="box"];
  "sha256:b2872df8856e8e56737d30f7388e0109777da2a6b04a4c11cd27baa844322004" [label="local://context" shape="ellipse"];
  "sha256:7347c28cdd46b4cc0abd4d8974fa8f13218642ad5ddf067a1ac97e174866959a" [label="copy{src=/, dest=/landsat}" shape="note"];
  "sha256:bd4f99cc3cd7945eabe53c0718d1f05b2da27746247f7acb60fe194c3a861078" [label="/bin/sh -c curl -O https://bootstrap.pypa.io/get-pip.py" shape="box"];
  "sha256:79b22da76388205fb74310b655b001a0294b0abc98dff5a836527df7e4535aeb" [label="/bin/sh -c python3 get-pip.py" shape="box"];
  "sha256:7f41df0e6f459e8bf1a1d8666873a4b4b216ed81ceff8a789ee9218aae16d69c" [label="/bin/sh -c pip3 install numpy" shape="box"];
  "sha256:76071c6478b3cd7af3dae0f787fc585c83c0ade87f6947d3c6cc04df8ca856bd" [label="/bin/sh -c cd /landsat && pip install -r requirements-dev.txt" shape="box"];
  "sha256:f0f39d6f765996b9f6c3f9f44ef1b3cfa922746bc8c9ab33b5f43a639c70956e" [label="/bin/sh -c cd /landsat && pip install -e ." shape="box"];
  "sha256:eab78f93f1da69acbf6a9de54c7b400e3080418664a1a68aa79e953d33cd9e40" [label="sha256:eab78f93f1da69acbf6a9de54c7b400e3080418664a1a68aa79e953d33cd9e40" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:7aecbefb5df7e218322ea7a0a10ba0a852c2f45b91582cb0f3d8c00e21ebe9a9" [label=""];
  "sha256:7aecbefb5df7e218322ea7a0a10ba0a852c2f45b91582cb0f3d8c00e21ebe9a9" -> "sha256:7d36790a38b9381cbac7f5410075a6ae8d616ac3cb92ffa7a6986dabf12a72d8" [label=""];
  "sha256:7d36790a38b9381cbac7f5410075a6ae8d616ac3cb92ffa7a6986dabf12a72d8" -> "sha256:7347c28cdd46b4cc0abd4d8974fa8f13218642ad5ddf067a1ac97e174866959a" [label=""];
  "sha256:b2872df8856e8e56737d30f7388e0109777da2a6b04a4c11cd27baa844322004" -> "sha256:7347c28cdd46b4cc0abd4d8974fa8f13218642ad5ddf067a1ac97e174866959a" [label=""];
  "sha256:7347c28cdd46b4cc0abd4d8974fa8f13218642ad5ddf067a1ac97e174866959a" -> "sha256:bd4f99cc3cd7945eabe53c0718d1f05b2da27746247f7acb60fe194c3a861078" [label=""];
  "sha256:bd4f99cc3cd7945eabe53c0718d1f05b2da27746247f7acb60fe194c3a861078" -> "sha256:79b22da76388205fb74310b655b001a0294b0abc98dff5a836527df7e4535aeb" [label=""];
  "sha256:79b22da76388205fb74310b655b001a0294b0abc98dff5a836527df7e4535aeb" -> "sha256:7f41df0e6f459e8bf1a1d8666873a4b4b216ed81ceff8a789ee9218aae16d69c" [label=""];
  "sha256:7f41df0e6f459e8bf1a1d8666873a4b4b216ed81ceff8a789ee9218aae16d69c" -> "sha256:76071c6478b3cd7af3dae0f787fc585c83c0ade87f6947d3c6cc04df8ca856bd" [label=""];
  "sha256:76071c6478b3cd7af3dae0f787fc585c83c0ade87f6947d3c6cc04df8ca856bd" -> "sha256:f0f39d6f765996b9f6c3f9f44ef1b3cfa922746bc8c9ab33b5f43a639c70956e" [label=""];
  "sha256:f0f39d6f765996b9f6c3f9f44ef1b3cfa922746bc8c9ab33b5f43a639c70956e" -> "sha256:eab78f93f1da69acbf6a9de54c7b400e3080418664a1a68aa79e953d33cd9e40" [label=""];
}

