[app/sources/347128434.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:0c1f41715e75706756dc32c8345c0a9c12e4478f5fe7f45bbef85d83c9428337" [label="local://context" shape="ellipse"];
  "sha256:b096dd1f63871d5d8b8e5db72f5e5f20760909cca2ad4654edad44e69c44ad0a" [label="copy{src=/init-app.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:57a13ea88a62a56865c9cbf9f186ae7a2a62bf03c07a5d1f324a3065f279b93f" [label="copy{src=/backports.list, dest=/etc/apt/sources.list.d/}" shape="note"];
  "sha256:050f283031a240944ebad799a52f6647f2f927cc9b7433fe775825ab792d4ec2" [label="/bin/sh -c apt-get update &&     apt-get install -y         cmake         iptables         libboost-python-dev         libopenblas-dev         liblapack-dev         sudo" shape="box"];
  "sha256:4d66da9ab036fee3cbff3e463cc71361fa594146b493a7198b70e9541469d20c" [label="/bin/sh -c git clone -b 'v19.7' --single-branch https://github.com/davisking/dlib.git /opt/dlib/ &&         cd /opt/dlib &&         sed \"s/SSE4/SSE2/g\" -i tools/python/CMakeLists.txt &&         python setup.py install --yes &&         rm -rf /opt/dlib" shape="box"];
  "sha256:56e4cb849fd5c4e0f6e15b71e4c716e53d192e959e1b98a09c007414e4df63ab" [label="/bin/sh -c pip install         face-recognition~=1.0.0         numpy~=1.13.1         opencv-python~=3.3.0.10         Pillow~=4.2.1         scipy~=0.19.1 &&     mkdir -p /usr/share/openface-models/" shape="box"];
  "sha256:e148959adb79606c362af9a761be5e0ce1e368ffb04fe60f9480de89fab68341" [label="/bin/sh -c git clone https://github.com/torch/distro.git /opt/torch --recursive &&     cd /opt/torch &&     bash install-deps &&     ./install.sh &&     /opt/torch/install/bin/luarocks install torch &&     /opt/torch/install/bin/luarocks install nn &&     /opt/torch/install/bin/luarocks install dpnn" shape="box"];
  "sha256:83622da517d8b734ed86a882c3ebbed47282378498ffb8032799c58a7cddab25" [label="/bin/sh -c git clone https://github.com/cmusatyalab/openface.git /opt/openface &&     cd /opt/openface &&     ./models/get-models.sh &&     pip install -r requirements.txt &&     python setup.py install" shape="box"];
  "sha256:b372e7719a099b22fad3aa10908438036aa0db7a4f503861f0fd214988ec4561" [label="/bin/sh -c useradd --system --uid 999 paradrop &&     mkdir -p /home/paradrop &&     chown paradrop /home/paradrop &&     mkdir -p /opt/paradrop/app &&     chown paradrop /opt/paradrop/app &&     chmod a+s /opt/paradrop/app &&     setcap 'cap_net_bind_service=+ep' /usr/local/bin/python2.7" shape="box"];
  "sha256:acc429b5b198a78049de5e328c66a558990891cd8609873a9b19bafc8a67c3aa" [label="/bin/sh -c find / -perm +6000 -type f -exec chmod a-s {} \\; || true" shape="box"];
  "sha256:ab600fd97293dae899f38a43e7f016f7c4fb001001d331237fc3b9b46857b42b" [label="mkdir{path=/opt/paradrop/app}" shape="note"];
  "sha256:1574eb10066b78168cb9ab1fdf82ba89a4c5c9b952e96538a5a9aca56177ceff" [label="sha256:1574eb10066b78168cb9ab1fdf82ba89a4c5c9b952e96538a5a9aca56177ceff" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:b096dd1f63871d5d8b8e5db72f5e5f20760909cca2ad4654edad44e69c44ad0a" [label=""];
  "sha256:0c1f41715e75706756dc32c8345c0a9c12e4478f5fe7f45bbef85d83c9428337" -> "sha256:b096dd1f63871d5d8b8e5db72f5e5f20760909cca2ad4654edad44e69c44ad0a" [label=""];
  "sha256:b096dd1f63871d5d8b8e5db72f5e5f20760909cca2ad4654edad44e69c44ad0a" -> "sha256:57a13ea88a62a56865c9cbf9f186ae7a2a62bf03c07a5d1f324a3065f279b93f" [label=""];
  "sha256:0c1f41715e75706756dc32c8345c0a9c12e4478f5fe7f45bbef85d83c9428337" -> "sha256:57a13ea88a62a56865c9cbf9f186ae7a2a62bf03c07a5d1f324a3065f279b93f" [label=""];
  "sha256:57a13ea88a62a56865c9cbf9f186ae7a2a62bf03c07a5d1f324a3065f279b93f" -> "sha256:050f283031a240944ebad799a52f6647f2f927cc9b7433fe775825ab792d4ec2" [label=""];
  "sha256:050f283031a240944ebad799a52f6647f2f927cc9b7433fe775825ab792d4ec2" -> "sha256:4d66da9ab036fee3cbff3e463cc71361fa594146b493a7198b70e9541469d20c" [label=""];
  "sha256:4d66da9ab036fee3cbff3e463cc71361fa594146b493a7198b70e9541469d20c" -> "sha256:56e4cb849fd5c4e0f6e15b71e4c716e53d192e959e1b98a09c007414e4df63ab" [label=""];
  "sha256:56e4cb849fd5c4e0f6e15b71e4c716e53d192e959e1b98a09c007414e4df63ab" -> "sha256:e148959adb79606c362af9a761be5e0ce1e368ffb04fe60f9480de89fab68341" [label=""];
  "sha256:e148959adb79606c362af9a761be5e0ce1e368ffb04fe60f9480de89fab68341" -> "sha256:83622da517d8b734ed86a882c3ebbed47282378498ffb8032799c58a7cddab25" [label=""];
  "sha256:83622da517d8b734ed86a882c3ebbed47282378498ffb8032799c58a7cddab25" -> "sha256:b372e7719a099b22fad3aa10908438036aa0db7a4f503861f0fd214988ec4561" [label=""];
  "sha256:b372e7719a099b22fad3aa10908438036aa0db7a4f503861f0fd214988ec4561" -> "sha256:acc429b5b198a78049de5e328c66a558990891cd8609873a9b19bafc8a67c3aa" [label=""];
  "sha256:acc429b5b198a78049de5e328c66a558990891cd8609873a9b19bafc8a67c3aa" -> "sha256:ab600fd97293dae899f38a43e7f016f7c4fb001001d331237fc3b9b46857b42b" [label=""];
  "sha256:ab600fd97293dae899f38a43e7f016f7c4fb001001d331237fc3b9b46857b42b" -> "sha256:1574eb10066b78168cb9ab1fdf82ba89a4c5c9b952e96538a5a9aca56177ceff" [label=""];
}

