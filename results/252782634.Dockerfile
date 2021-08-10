[app/sources/252782634.Dockerfile]
digraph {
  "sha256:7092711779cb869482a288bbc4cfa0d4bbce7d06a92ef031e996652f4e51c35b" [label="docker-image://docker.io/clearlinux/ciao-common:latest" shape="ellipse"];
  "sha256:12ecc45e0ce18e5547766a9105d0c45372522905a4207236c16f6ce68b3ecf05" [label="local://context" shape="ellipse"];
  "sha256:12bf7b1b2cfefa960e8a9ea38c86308e2081c18b64e829526d598b0e09f46aa7" [label="copy{src=/*.sh, dest=/root/}" shape="note"];
  "sha256:5af7c23343ac77f3a8a38cf6f1022012a691b3705b2c8e8fbd50daf78ca7e852" [label="/bin/sh -c mkdir /etc/ciao" shape="box"];
  "sha256:12b6c29e2a01eda0596589752646019d6045ab0556f78e08497863cdb10f8122" [label="copy{src=/configuration.yaml, dest=/etc/ciao/}" shape="note"];
  "sha256:e35c11176d8c834e6c52d0ce98d80c84ee8bf2b1e8ea0be9184808499807edfd" [label="copy{src=/ciaorc, dest=/root/}" shape="note"];
  "sha256:79b8570db3518cc4cdd06e278527e9875fa7982931d52ea5d74a4840baf9f6f4" [label="sha256:79b8570db3518cc4cdd06e278527e9875fa7982931d52ea5d74a4840baf9f6f4" shape="plaintext"];
  "sha256:7092711779cb869482a288bbc4cfa0d4bbce7d06a92ef031e996652f4e51c35b" -> "sha256:12bf7b1b2cfefa960e8a9ea38c86308e2081c18b64e829526d598b0e09f46aa7" [label=""];
  "sha256:12ecc45e0ce18e5547766a9105d0c45372522905a4207236c16f6ce68b3ecf05" -> "sha256:12bf7b1b2cfefa960e8a9ea38c86308e2081c18b64e829526d598b0e09f46aa7" [label=""];
  "sha256:12bf7b1b2cfefa960e8a9ea38c86308e2081c18b64e829526d598b0e09f46aa7" -> "sha256:5af7c23343ac77f3a8a38cf6f1022012a691b3705b2c8e8fbd50daf78ca7e852" [label=""];
  "sha256:5af7c23343ac77f3a8a38cf6f1022012a691b3705b2c8e8fbd50daf78ca7e852" -> "sha256:12b6c29e2a01eda0596589752646019d6045ab0556f78e08497863cdb10f8122" [label=""];
  "sha256:12ecc45e0ce18e5547766a9105d0c45372522905a4207236c16f6ce68b3ecf05" -> "sha256:12b6c29e2a01eda0596589752646019d6045ab0556f78e08497863cdb10f8122" [label=""];
  "sha256:12b6c29e2a01eda0596589752646019d6045ab0556f78e08497863cdb10f8122" -> "sha256:e35c11176d8c834e6c52d0ce98d80c84ee8bf2b1e8ea0be9184808499807edfd" [label=""];
  "sha256:12ecc45e0ce18e5547766a9105d0c45372522905a4207236c16f6ce68b3ecf05" -> "sha256:e35c11176d8c834e6c52d0ce98d80c84ee8bf2b1e8ea0be9184808499807edfd" [label=""];
  "sha256:e35c11176d8c834e6c52d0ce98d80c84ee8bf2b1e8ea0be9184808499807edfd" -> "sha256:79b8570db3518cc4cdd06e278527e9875fa7982931d52ea5d74a4840baf9f6f4" [label=""];
}

