[app/sources/366949846.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:650c10b530df9d527e57d78c10e8ea64c9f8ceae5a498e45985d21aa174f0a9c" [label="/bin/sh -c apt-get update && apt-get install -y mysql-client" shape="box"];
  "sha256:7451d859888fa82c6575f98948fe083519a1c68c47235d1653d022cb8cb38526" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:9f9737cbb5d8923901e97d566f0c2edad58fc5f4acc4d73673ab8241904897b8" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:f9a603a9ba844349acc62e3d47ebe109edd8e9308cce288a30a8b7a0dfc135c1" [label="local://context" shape="ellipse"];
  "sha256:a26248de990d1c842b8f29529f5fcbe17c9e7dffe219597ed93b083be6b8beae" [label="copy{src=/requirements.txt, dest=/usr/src/app/}" shape="note"];
  "sha256:3fdc1bce5d568c2f2935150482193ed2a2d82ab25abda0c15d889d50cd926d72" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:e8bca297976a6f828250754ac7afc691172e7c37b07214925dc59de21be24639" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:b70ca18138b3fadec6f6a1e7b22dff780cffc15c9f9dffb27b4e182637c27ebd" [label="sha256:b70ca18138b3fadec6f6a1e7b22dff780cffc15c9f9dffb27b4e182637c27ebd" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:650c10b530df9d527e57d78c10e8ea64c9f8ceae5a498e45985d21aa174f0a9c" [label=""];
  "sha256:650c10b530df9d527e57d78c10e8ea64c9f8ceae5a498e45985d21aa174f0a9c" -> "sha256:7451d859888fa82c6575f98948fe083519a1c68c47235d1653d022cb8cb38526" [label=""];
  "sha256:7451d859888fa82c6575f98948fe083519a1c68c47235d1653d022cb8cb38526" -> "sha256:9f9737cbb5d8923901e97d566f0c2edad58fc5f4acc4d73673ab8241904897b8" [label=""];
  "sha256:9f9737cbb5d8923901e97d566f0c2edad58fc5f4acc4d73673ab8241904897b8" -> "sha256:a26248de990d1c842b8f29529f5fcbe17c9e7dffe219597ed93b083be6b8beae" [label=""];
  "sha256:f9a603a9ba844349acc62e3d47ebe109edd8e9308cce288a30a8b7a0dfc135c1" -> "sha256:a26248de990d1c842b8f29529f5fcbe17c9e7dffe219597ed93b083be6b8beae" [label=""];
  "sha256:a26248de990d1c842b8f29529f5fcbe17c9e7dffe219597ed93b083be6b8beae" -> "sha256:3fdc1bce5d568c2f2935150482193ed2a2d82ab25abda0c15d889d50cd926d72" [label=""];
  "sha256:3fdc1bce5d568c2f2935150482193ed2a2d82ab25abda0c15d889d50cd926d72" -> "sha256:e8bca297976a6f828250754ac7afc691172e7c37b07214925dc59de21be24639" [label=""];
  "sha256:f9a603a9ba844349acc62e3d47ebe109edd8e9308cce288a30a8b7a0dfc135c1" -> "sha256:e8bca297976a6f828250754ac7afc691172e7c37b07214925dc59de21be24639" [label=""];
  "sha256:e8bca297976a6f828250754ac7afc691172e7c37b07214925dc59de21be24639" -> "sha256:b70ca18138b3fadec6f6a1e7b22dff780cffc15c9f9dffb27b4e182637c27ebd" [label=""];
}

