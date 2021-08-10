[app/sources/178961680.Dockerfile]
digraph {
  "sha256:c2f68523e68a87f62854b1d3e5a6f389c72d8188c9306c74b9133b78ed8f72cb" [label="docker-image://docker.io/library/ubuntu:12.10" shape="ellipse"];
  "sha256:123d106e7ba1a3246f948d8db17da6803f8fe0ba0123075f1c9aff1719d33461" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:6b382714a2689e960b8e565e1780c2dcf330c5648a6cc6b589c902ef55874664" [label="/bin/sh -c yes | apt-get install python-pip" shape="box"];
  "sha256:e978a583d6d0ee1efc9275a6e5e55da108acd1a6e52ee651b423d821531168e8" [label="local://context" shape="ellipse"];
  "sha256:4f0053e761fac3ad70277161f7292c5736e213c119654642103218e3cb3d4a08" [label="copy{src=/, dest=/home/docker-py}" shape="note"];
  "sha256:9f83d1d4ec4ddc6531574cd7603d9588a884021bf3eda9444cf6378118582f2a" [label="/bin/sh -c cd /home/docker-py && pip install ." shape="box"];
  "sha256:8223643045112115fb60fc262f449bf73fda8c82ed63c55e36029a8c315f4650" [label="sha256:8223643045112115fb60fc262f449bf73fda8c82ed63c55e36029a8c315f4650" shape="plaintext"];
  "sha256:c2f68523e68a87f62854b1d3e5a6f389c72d8188c9306c74b9133b78ed8f72cb" -> "sha256:123d106e7ba1a3246f948d8db17da6803f8fe0ba0123075f1c9aff1719d33461" [label=""];
  "sha256:123d106e7ba1a3246f948d8db17da6803f8fe0ba0123075f1c9aff1719d33461" -> "sha256:6b382714a2689e960b8e565e1780c2dcf330c5648a6cc6b589c902ef55874664" [label=""];
  "sha256:6b382714a2689e960b8e565e1780c2dcf330c5648a6cc6b589c902ef55874664" -> "sha256:4f0053e761fac3ad70277161f7292c5736e213c119654642103218e3cb3d4a08" [label=""];
  "sha256:e978a583d6d0ee1efc9275a6e5e55da108acd1a6e52ee651b423d821531168e8" -> "sha256:4f0053e761fac3ad70277161f7292c5736e213c119654642103218e3cb3d4a08" [label=""];
  "sha256:4f0053e761fac3ad70277161f7292c5736e213c119654642103218e3cb3d4a08" -> "sha256:9f83d1d4ec4ddc6531574cd7603d9588a884021bf3eda9444cf6378118582f2a" [label=""];
  "sha256:9f83d1d4ec4ddc6531574cd7603d9588a884021bf3eda9444cf6378118582f2a" -> "sha256:8223643045112115fb60fc262f449bf73fda8c82ed63c55e36029a8c315f4650" [label=""];
}

