[app/sources/281514793.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:e128f978a34f7f626b7b7a3a17593e91731e0f9eee73f89d61aa34ae031a29bf" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:269c49b651875924de6f02877a43a53637873a8583440999967090e34c763e33" [label="/bin/sh -c apt-get install -y make gcc file g++ patch wget cpio python unzip rsync bc bzip2 git" shape="box"];
  "sha256:29325f854a37c7be587475b57b943c71689c74d6ce905dbd3ae24c34f3062ef4" [label="sha256:29325f854a37c7be587475b57b943c71689c74d6ce905dbd3ae24c34f3062ef4" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:e128f978a34f7f626b7b7a3a17593e91731e0f9eee73f89d61aa34ae031a29bf" [label=""];
  "sha256:e128f978a34f7f626b7b7a3a17593e91731e0f9eee73f89d61aa34ae031a29bf" -> "sha256:269c49b651875924de6f02877a43a53637873a8583440999967090e34c763e33" [label=""];
  "sha256:269c49b651875924de6f02877a43a53637873a8583440999967090e34c763e33" -> "sha256:29325f854a37c7be587475b57b943c71689c74d6ce905dbd3ae24c34f3062ef4" [label=""];
}

