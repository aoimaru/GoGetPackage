[app/sources/140571819.Dockerfile]
digraph {
  "sha256:45f514e5e1574bab696b0496bb9d5d81cd9315d84b59c5e69bbc40c8e94a1290" [label="docker-image://docker.io/library/python:3.6.5-stretch" shape="ellipse"];
  "sha256:5344123cb042be147f905aaa30cc64195c72748759a1fa02e5f7a7339c77ad01" [label="/bin/sh -c apt-get update     && apt-get -y install parallel python-pip" shape="box"];
  "sha256:67d48ff0234bf06e295996b9ab61415fb9c7d06ba4c31c1a34641537d0c3b9b1" [label="local://context" shape="ellipse"];
  "sha256:8a48519c788ba28236717c1ac88edf4eb6d9487cfb84297a16f4c48c15ebfde3" [label="copy{src=/, dest=/sparser}" shape="note"];
  "sha256:351c8955cc3098d94eec0049d96a62e654a3e8e768481c20b4904966b5dbd018" [label="mkdir{path=/sparser}" shape="note"];
  "sha256:441a3bba15a2dc13aaf852e85d84dc02055903cb3b386faca936989edace501d" [label="/bin/sh -c pip install -r requirements.txt && python setup.py install" shape="box"];
  "sha256:94afbb1abc80d8736c7ccd82056a1508e54060601068e98306105f3c8020231f" [label="sha256:94afbb1abc80d8736c7ccd82056a1508e54060601068e98306105f3c8020231f" shape="plaintext"];
  "sha256:45f514e5e1574bab696b0496bb9d5d81cd9315d84b59c5e69bbc40c8e94a1290" -> "sha256:5344123cb042be147f905aaa30cc64195c72748759a1fa02e5f7a7339c77ad01" [label=""];
  "sha256:5344123cb042be147f905aaa30cc64195c72748759a1fa02e5f7a7339c77ad01" -> "sha256:8a48519c788ba28236717c1ac88edf4eb6d9487cfb84297a16f4c48c15ebfde3" [label=""];
  "sha256:67d48ff0234bf06e295996b9ab61415fb9c7d06ba4c31c1a34641537d0c3b9b1" -> "sha256:8a48519c788ba28236717c1ac88edf4eb6d9487cfb84297a16f4c48c15ebfde3" [label=""];
  "sha256:8a48519c788ba28236717c1ac88edf4eb6d9487cfb84297a16f4c48c15ebfde3" -> "sha256:351c8955cc3098d94eec0049d96a62e654a3e8e768481c20b4904966b5dbd018" [label=""];
  "sha256:351c8955cc3098d94eec0049d96a62e654a3e8e768481c20b4904966b5dbd018" -> "sha256:441a3bba15a2dc13aaf852e85d84dc02055903cb3b386faca936989edace501d" [label=""];
  "sha256:441a3bba15a2dc13aaf852e85d84dc02055903cb3b386faca936989edace501d" -> "sha256:94afbb1abc80d8736c7ccd82056a1508e54060601068e98306105f3c8020231f" [label=""];
}

