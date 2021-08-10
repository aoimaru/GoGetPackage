[app/sources/328923541.Dockerfile]
digraph {
  "sha256:5289030c9742f7083195fbfd75236056cd5924aefb56bbc422ee2a7b4ab122ad" [label="docker-image://docker.io/kalilinux/kali-linux-docker:latest" shape="ellipse"];
  "sha256:5329c5e18287993a2f6924879e1ddf45964ab9beadf24c61eae7ba38de99fc9c" [label="/bin/sh -c echo \"deb http://http.kali.org/kali kali-rolling main contrib non-free\" > /etc/apt/sources.list &&     echo \"deb-src http://http.kali.org/kali kali-rolling main contrib non-free\" >> /etc/apt/sources.list" shape="box"];
  "sha256:a8cf601acdcd998ef3c2ca3af7598b95c33cafbfe78df54c0da8fdd451e38c56" [label="/bin/sh -c set -x     && apt-get -yqq update     && apt-get -yqq dist-upgrade     && apt-get clean" shape="box"];
  "sha256:20cb033037734d9285f1387fc287acc4b275dffd947486a933be4f72707be4ac" [label="/bin/sh -c apt-get install -y nmap dirb sqlmap python-pip" shape="box"];
  "sha256:082c9736a3e6a1540ec9be6e9c087cd075252d6ce25e0b7b0c6d6a18ba941b87" [label="/bin/sh -c pip install paramiko" shape="box"];
  "sha256:fdd26f512e95c454f261c3a6be2f6e579ef953922f9cf0f32f803c4f6ae038fb" [label="local://context" shape="ellipse"];
  "sha256:0f10e1e5c8d1484af35bb59855e7f46b16ccdf4147ea9e6742f312a02d3431a5" [label="copy{src=/big.txt, dest=/big.txt}" shape="note"];
  "sha256:0b800fbccbc2d1fdb5491b2c3a453e24f5112ecb2b62785d2a91a04b008b9b9c" [label="copy{src=/attacker.sh, dest=/attacker.sh}" shape="note"];
  "sha256:ac7aa9477dfb167546b4979b23499acedc61e83e4e165ddf5302f8ecba9b1da2" [label="copy{src=/ssh_client.py, dest=/ssh_client.py}" shape="note"];
  "sha256:f3bded26b618404c69a95418e1031c1eda9c6863c715bcc6345ee32bd1847055" [label="copy{src=/colorbox.min.js, dest=/colorbox.min.js}" shape="note"];
  "sha256:0700643620829f5b3222d1f900a29714b89361ae8428d84f2d3222154c86538d" [label="copy{src=/backup.sh, dest=/backup.sh}" shape="note"];
  "sha256:8bfddab6c7f8785b240a33f823656d5c1df9834ec3841f65ce2569040fea8aed" [label="sha256:8bfddab6c7f8785b240a33f823656d5c1df9834ec3841f65ce2569040fea8aed" shape="plaintext"];
  "sha256:5289030c9742f7083195fbfd75236056cd5924aefb56bbc422ee2a7b4ab122ad" -> "sha256:5329c5e18287993a2f6924879e1ddf45964ab9beadf24c61eae7ba38de99fc9c" [label=""];
  "sha256:5329c5e18287993a2f6924879e1ddf45964ab9beadf24c61eae7ba38de99fc9c" -> "sha256:a8cf601acdcd998ef3c2ca3af7598b95c33cafbfe78df54c0da8fdd451e38c56" [label=""];
  "sha256:a8cf601acdcd998ef3c2ca3af7598b95c33cafbfe78df54c0da8fdd451e38c56" -> "sha256:20cb033037734d9285f1387fc287acc4b275dffd947486a933be4f72707be4ac" [label=""];
  "sha256:20cb033037734d9285f1387fc287acc4b275dffd947486a933be4f72707be4ac" -> "sha256:082c9736a3e6a1540ec9be6e9c087cd075252d6ce25e0b7b0c6d6a18ba941b87" [label=""];
  "sha256:082c9736a3e6a1540ec9be6e9c087cd075252d6ce25e0b7b0c6d6a18ba941b87" -> "sha256:0f10e1e5c8d1484af35bb59855e7f46b16ccdf4147ea9e6742f312a02d3431a5" [label=""];
  "sha256:fdd26f512e95c454f261c3a6be2f6e579ef953922f9cf0f32f803c4f6ae038fb" -> "sha256:0f10e1e5c8d1484af35bb59855e7f46b16ccdf4147ea9e6742f312a02d3431a5" [label=""];
  "sha256:0f10e1e5c8d1484af35bb59855e7f46b16ccdf4147ea9e6742f312a02d3431a5" -> "sha256:0b800fbccbc2d1fdb5491b2c3a453e24f5112ecb2b62785d2a91a04b008b9b9c" [label=""];
  "sha256:fdd26f512e95c454f261c3a6be2f6e579ef953922f9cf0f32f803c4f6ae038fb" -> "sha256:0b800fbccbc2d1fdb5491b2c3a453e24f5112ecb2b62785d2a91a04b008b9b9c" [label=""];
  "sha256:0b800fbccbc2d1fdb5491b2c3a453e24f5112ecb2b62785d2a91a04b008b9b9c" -> "sha256:ac7aa9477dfb167546b4979b23499acedc61e83e4e165ddf5302f8ecba9b1da2" [label=""];
  "sha256:fdd26f512e95c454f261c3a6be2f6e579ef953922f9cf0f32f803c4f6ae038fb" -> "sha256:ac7aa9477dfb167546b4979b23499acedc61e83e4e165ddf5302f8ecba9b1da2" [label=""];
  "sha256:ac7aa9477dfb167546b4979b23499acedc61e83e4e165ddf5302f8ecba9b1da2" -> "sha256:f3bded26b618404c69a95418e1031c1eda9c6863c715bcc6345ee32bd1847055" [label=""];
  "sha256:fdd26f512e95c454f261c3a6be2f6e579ef953922f9cf0f32f803c4f6ae038fb" -> "sha256:f3bded26b618404c69a95418e1031c1eda9c6863c715bcc6345ee32bd1847055" [label=""];
  "sha256:f3bded26b618404c69a95418e1031c1eda9c6863c715bcc6345ee32bd1847055" -> "sha256:0700643620829f5b3222d1f900a29714b89361ae8428d84f2d3222154c86538d" [label=""];
  "sha256:fdd26f512e95c454f261c3a6be2f6e579ef953922f9cf0f32f803c4f6ae038fb" -> "sha256:0700643620829f5b3222d1f900a29714b89361ae8428d84f2d3222154c86538d" [label=""];
  "sha256:0700643620829f5b3222d1f900a29714b89361ae8428d84f2d3222154c86538d" -> "sha256:8bfddab6c7f8785b240a33f823656d5c1df9834ec3841f65ce2569040fea8aed" [label=""];
}

