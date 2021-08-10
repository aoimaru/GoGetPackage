[app/sources/293639298.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:46d69d9bc7145881c63803913524fcc40c72ff8ccd820836f74f5637f0e62e5d" [label="/bin/sh -c apt-get update && apt-get install -y     python3-pip     python3-venv     python3-dev     libjpeg-dev     zlib1g-dev" shape="box"];
  "sha256:b3f13f4b32a424c25d1628e547bdb85c0c0c1eefc733f7cc64793c14722de5b9" [label="local://context" shape="ellipse"];
  "sha256:b905297ee810a746f2f2c40890154f48c96567d87f10a6973b74912b70efdee9" [label="copy{src=/, dest=/home/}" shape="note"];
  "sha256:104cd6afc1f74f21a13808db628e506919a77bc5dbc9f50344cd82509427d598" [label="/bin/sh -c cd /home &&     chmod +x start" shape="box"];
  "sha256:25681b8c4bb47f573f4a3c441d07710b5536b3f4ab60ce17ae8d3a110f34e625" [label="mkdir{path=/home}" shape="note"];
  "sha256:2ca60e9821070ac02e0eeee9a6ae6abd61202bd83779b50cecc171cc7108f62e" [label="sha256:2ca60e9821070ac02e0eeee9a6ae6abd61202bd83779b50cecc171cc7108f62e" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:46d69d9bc7145881c63803913524fcc40c72ff8ccd820836f74f5637f0e62e5d" [label=""];
  "sha256:46d69d9bc7145881c63803913524fcc40c72ff8ccd820836f74f5637f0e62e5d" -> "sha256:b905297ee810a746f2f2c40890154f48c96567d87f10a6973b74912b70efdee9" [label=""];
  "sha256:b3f13f4b32a424c25d1628e547bdb85c0c0c1eefc733f7cc64793c14722de5b9" -> "sha256:b905297ee810a746f2f2c40890154f48c96567d87f10a6973b74912b70efdee9" [label=""];
  "sha256:b905297ee810a746f2f2c40890154f48c96567d87f10a6973b74912b70efdee9" -> "sha256:104cd6afc1f74f21a13808db628e506919a77bc5dbc9f50344cd82509427d598" [label=""];
  "sha256:104cd6afc1f74f21a13808db628e506919a77bc5dbc9f50344cd82509427d598" -> "sha256:25681b8c4bb47f573f4a3c441d07710b5536b3f4ab60ce17ae8d3a110f34e625" [label=""];
  "sha256:25681b8c4bb47f573f4a3c441d07710b5536b3f4ab60ce17ae8d3a110f34e625" -> "sha256:2ca60e9821070ac02e0eeee9a6ae6abd61202bd83779b50cecc171cc7108f62e" [label=""];
}

