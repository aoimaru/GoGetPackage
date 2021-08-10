[app/sources/336277602.Dockerfile]
digraph {
  "sha256:d3d895cef6b07db51400a7392252dfdbc0c3595f5108cd4f60911d4961b963ac" [label="local://context" shape="ellipse"];
  "sha256:6deb26f03955e867146fc35d7eb4a6a900f737ea2a5a3096c43a19c7c8805fc8" [label="docker-image://docker.io/library/python:3.6-slim" shape="ellipse"];
  "sha256:c340f59e1c771b7ee789416c60eb5890862ae9e74586b44dee21d8420ac3d479" [label="/bin/sh -c apt-get update && apt-get install -y --fix-missing     build-essential     cmake     gfortran     git     wget     curl     graphicsmagick     libgraphicsmagick1-dev     libatlas-dev     libavcodec-dev     libavformat-dev     libgtk2.0-dev     libjpeg-dev     liblapack-dev     libswscale-dev     pkg-config     python3-dev     python3-numpy     python3-pip     software-properties-common     zip     && apt-get clean && rm -rf /tmp/* /var/tmp/*" shape="box"];
  "sha256:7a3e6a1dcdc4937db133c27664b473fcf42c591461e1e9737ced21d56cf1899a" [label="/bin/sh -c cd ~ &&     mkdir -p dlib &&     git clone -b 'v19.9' --single-branch https://github.com/davisking/dlib.git dlib/ &&     cd  dlib/ &&     python3 setup.py install --yes USE_AVX_INSTRUCTIONS" shape="box"];
  "sha256:954520fa4265ddcb29c7a96b1829da26507e5a51e64c3ba5210e1847ae62a0a4" [label="/bin/sh -c python3 -m pip install face_recognition" shape="box"];
  "sha256:698bc0e4a1e1ece561a3f7a1114e9bb2b8c9ac9d68e1e84b64003c1cc5c641d6" [label="/bin/sh -c python3 -m pip install grpcio" shape="box"];
  "sha256:be5a62f70e1fe16fbfe2567e38ae49500552e986459407116572b64666d6d69c" [label="/bin/sh -c python3 -m pip install grpcio-tools" shape="box"];
  "sha256:faebcfc1405b91b405c4934f9325c87092faeb68eb7032513f33efc4e03e82ef" [label="copy{src=/face_pb2_grpc.py, dest=/root}" shape="note"];
  "sha256:92b9bb5ba59bde73efe1db72b8a3bf23e0bdfac7078050165b808a83b5a088e1" [label="copy{src=/face_pb2.py, dest=/root}" shape="note"];
  "sha256:83a1453c2cd1c57788690a9fed66f9d20f40a264f86d5eb65062a13dadbf8937" [label="copy{src=/identifier.py, dest=/root}" shape="note"];
  "sha256:fe939f102633115fc04b35bf342c5b3d202f80add4f7030925fb372539d96945" [label="sha256:fe939f102633115fc04b35bf342c5b3d202f80add4f7030925fb372539d96945" shape="plaintext"];
  "sha256:6deb26f03955e867146fc35d7eb4a6a900f737ea2a5a3096c43a19c7c8805fc8" -> "sha256:c340f59e1c771b7ee789416c60eb5890862ae9e74586b44dee21d8420ac3d479" [label=""];
  "sha256:c340f59e1c771b7ee789416c60eb5890862ae9e74586b44dee21d8420ac3d479" -> "sha256:7a3e6a1dcdc4937db133c27664b473fcf42c591461e1e9737ced21d56cf1899a" [label=""];
  "sha256:7a3e6a1dcdc4937db133c27664b473fcf42c591461e1e9737ced21d56cf1899a" -> "sha256:954520fa4265ddcb29c7a96b1829da26507e5a51e64c3ba5210e1847ae62a0a4" [label=""];
  "sha256:954520fa4265ddcb29c7a96b1829da26507e5a51e64c3ba5210e1847ae62a0a4" -> "sha256:698bc0e4a1e1ece561a3f7a1114e9bb2b8c9ac9d68e1e84b64003c1cc5c641d6" [label=""];
  "sha256:698bc0e4a1e1ece561a3f7a1114e9bb2b8c9ac9d68e1e84b64003c1cc5c641d6" -> "sha256:be5a62f70e1fe16fbfe2567e38ae49500552e986459407116572b64666d6d69c" [label=""];
  "sha256:be5a62f70e1fe16fbfe2567e38ae49500552e986459407116572b64666d6d69c" -> "sha256:faebcfc1405b91b405c4934f9325c87092faeb68eb7032513f33efc4e03e82ef" [label=""];
  "sha256:d3d895cef6b07db51400a7392252dfdbc0c3595f5108cd4f60911d4961b963ac" -> "sha256:faebcfc1405b91b405c4934f9325c87092faeb68eb7032513f33efc4e03e82ef" [label=""];
  "sha256:faebcfc1405b91b405c4934f9325c87092faeb68eb7032513f33efc4e03e82ef" -> "sha256:92b9bb5ba59bde73efe1db72b8a3bf23e0bdfac7078050165b808a83b5a088e1" [label=""];
  "sha256:d3d895cef6b07db51400a7392252dfdbc0c3595f5108cd4f60911d4961b963ac" -> "sha256:92b9bb5ba59bde73efe1db72b8a3bf23e0bdfac7078050165b808a83b5a088e1" [label=""];
  "sha256:92b9bb5ba59bde73efe1db72b8a3bf23e0bdfac7078050165b808a83b5a088e1" -> "sha256:83a1453c2cd1c57788690a9fed66f9d20f40a264f86d5eb65062a13dadbf8937" [label=""];
  "sha256:d3d895cef6b07db51400a7392252dfdbc0c3595f5108cd4f60911d4961b963ac" -> "sha256:83a1453c2cd1c57788690a9fed66f9d20f40a264f86d5eb65062a13dadbf8937" [label=""];
  "sha256:83a1453c2cd1c57788690a9fed66f9d20f40a264f86d5eb65062a13dadbf8937" -> "sha256:fe939f102633115fc04b35bf342c5b3d202f80add4f7030925fb372539d96945" [label=""];
}

