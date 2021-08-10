[app/sources/233325014.Dockerfile]
digraph {
  "sha256:61437f04749697099fda1e9c0a8526797f7b1842aea8a30f003af9dc19109ec5" [label="local://context" shape="ellipse"];
  "sha256:b98c5e951367f05b0085e48735ec0aee762dccd3d907b67ffb6be019659841d0" [label="docker-image://docker.io/tensorflow/tensorflow:0.12.0" shape="ellipse"];
  "sha256:a84b82c9d3a9eee3c5d55a7293ec9ce77868e8d89154e16c814bc7dd6c50f4ce" [label="/bin/sh -c apt-get update;   apt-get install -y protobuf-compiler wget libcv-dev python-opencv;   apt-get install -y python-tk graphviz;   mkdir c3d-keras" shape="box"];
  "sha256:1284ac477dddad0348168d1a04c489d8cbf15f2cca184ed60adc4f91a9c6f0c6" [label="copy{src=/requirements.txt, dest=/c3d-keras/requirements.txt}" shape="note"];
  "sha256:141085c9b03ebe7b84ff026971854947d16afbdfa863a519b1c067b3034a8ebd" [label="/bin/sh -c pip install -r c3d-keras/requirements.txt" shape="box"];
  "sha256:83bf9b2666c407d7414ae6ada2f31d0b2f9331e6d3167cbf8553c62c9caa066b" [label="copy{src=/models, dest=/c3d-keras/models}" shape="note"];
  "sha256:50f75d6a47a75169cb6d6327705b64ae0741bb22b51235523b54dc1a0792a149" [label="copy{src=/sports1m, dest=/c3d-keras/sports1m}" shape="note"];
  "sha256:d4d9f090f292960605b848fcebc64d63729372a6dc20a8205bb0e978c1b21473" [label="copy{src=/data, dest=/c3d-keras/data}" shape="note"];
  "sha256:fe7495fd5463334ca04ed28f7529730195922dadd0c7b2f0267f140cd09032b8" [label="/bin/sh -c cd c3d-keras;   bash models/get_weights_and_mean.sh;   bash sports1m/get_labels.sh;   wget -N https://raw.githubusercontent.com/facebook/C3D/master/C3D-v1.0/src/caffe/proto/caffe.proto;   protoc --python_out=. caffe.proto" shape="box"];
  "sha256:68db11cc1046d0d9d8f27bc136d36e900c5bbac191ec5c11c6747f0a7a51c606" [label="copy{src=/convert_caffe_model.py, dest=/c3d-keras/convert_caffe_model.py}" shape="note"];
  "sha256:6aaecab998b290cf078dd90ec7746ce84de9aacd40c5b554088394cb5751ad2f" [label="copy{src=/c3d_model.py, dest=/c3d-keras/c3d_model.py}" shape="note"];
  "sha256:9f6035eafd7b83cba7f02edf507fa0ac9ebde081c276a168e62439bcefbe0272" [label="/bin/sh -c cd c3d-keras;   echo import keras | python;   python convert_caffe_model.py" shape="box"];
  "sha256:202bf7f94e27f8557c84428935248269e517c67b9c36055ff204c8d2f7538ec6" [label="copy{src=/download_test_video.sh, dest=/c3d-keras/download_test_video.sh}" shape="note"];
  "sha256:c26250f6b29e75c654e59cce1a3fcc1ef3efec197a8d4dd23910ebf1da4d3653" [label="copy{src=/test_model.py, dest=/c3d-keras/test_model.py}" shape="note"];
  "sha256:f98d5640a32fa294cc4daec4b671dd249af3eb4fc47a7bacf632915d6d4e4ba1" [label="copy{src=/dev_requirements.txt, dest=/c3d-keras/dev_requirements.txt}" shape="note"];
  "sha256:81d9d715dd7763f171f5f628cfcea35f9075ea33fe35383d3f11e608c086083c" [label="/bin/sh -c pip install -r c3d-keras/dev_requirements.txt" shape="box"];
  "sha256:49957c2b1cfd55ddeacd9c25e8eda62d184f8f893ce81c68de202366a45a6300" [label="/bin/sh -c cd c3d-keras;   bash download_test_video.sh;   python test_model.py" shape="box"];
  "sha256:d31606a85a0ff7e802f148966d18716138512dee021b7500004ee4d9898c33bc" [label="sha256:d31606a85a0ff7e802f148966d18716138512dee021b7500004ee4d9898c33bc" shape="plaintext"];
  "sha256:b98c5e951367f05b0085e48735ec0aee762dccd3d907b67ffb6be019659841d0" -> "sha256:a84b82c9d3a9eee3c5d55a7293ec9ce77868e8d89154e16c814bc7dd6c50f4ce" [label=""];
  "sha256:a84b82c9d3a9eee3c5d55a7293ec9ce77868e8d89154e16c814bc7dd6c50f4ce" -> "sha256:1284ac477dddad0348168d1a04c489d8cbf15f2cca184ed60adc4f91a9c6f0c6" [label=""];
  "sha256:61437f04749697099fda1e9c0a8526797f7b1842aea8a30f003af9dc19109ec5" -> "sha256:1284ac477dddad0348168d1a04c489d8cbf15f2cca184ed60adc4f91a9c6f0c6" [label=""];
  "sha256:1284ac477dddad0348168d1a04c489d8cbf15f2cca184ed60adc4f91a9c6f0c6" -> "sha256:141085c9b03ebe7b84ff026971854947d16afbdfa863a519b1c067b3034a8ebd" [label=""];
  "sha256:141085c9b03ebe7b84ff026971854947d16afbdfa863a519b1c067b3034a8ebd" -> "sha256:83bf9b2666c407d7414ae6ada2f31d0b2f9331e6d3167cbf8553c62c9caa066b" [label=""];
  "sha256:61437f04749697099fda1e9c0a8526797f7b1842aea8a30f003af9dc19109ec5" -> "sha256:83bf9b2666c407d7414ae6ada2f31d0b2f9331e6d3167cbf8553c62c9caa066b" [label=""];
  "sha256:83bf9b2666c407d7414ae6ada2f31d0b2f9331e6d3167cbf8553c62c9caa066b" -> "sha256:50f75d6a47a75169cb6d6327705b64ae0741bb22b51235523b54dc1a0792a149" [label=""];
  "sha256:61437f04749697099fda1e9c0a8526797f7b1842aea8a30f003af9dc19109ec5" -> "sha256:50f75d6a47a75169cb6d6327705b64ae0741bb22b51235523b54dc1a0792a149" [label=""];
  "sha256:50f75d6a47a75169cb6d6327705b64ae0741bb22b51235523b54dc1a0792a149" -> "sha256:d4d9f090f292960605b848fcebc64d63729372a6dc20a8205bb0e978c1b21473" [label=""];
  "sha256:61437f04749697099fda1e9c0a8526797f7b1842aea8a30f003af9dc19109ec5" -> "sha256:d4d9f090f292960605b848fcebc64d63729372a6dc20a8205bb0e978c1b21473" [label=""];
  "sha256:d4d9f090f292960605b848fcebc64d63729372a6dc20a8205bb0e978c1b21473" -> "sha256:fe7495fd5463334ca04ed28f7529730195922dadd0c7b2f0267f140cd09032b8" [label=""];
  "sha256:fe7495fd5463334ca04ed28f7529730195922dadd0c7b2f0267f140cd09032b8" -> "sha256:68db11cc1046d0d9d8f27bc136d36e900c5bbac191ec5c11c6747f0a7a51c606" [label=""];
  "sha256:61437f04749697099fda1e9c0a8526797f7b1842aea8a30f003af9dc19109ec5" -> "sha256:68db11cc1046d0d9d8f27bc136d36e900c5bbac191ec5c11c6747f0a7a51c606" [label=""];
  "sha256:68db11cc1046d0d9d8f27bc136d36e900c5bbac191ec5c11c6747f0a7a51c606" -> "sha256:6aaecab998b290cf078dd90ec7746ce84de9aacd40c5b554088394cb5751ad2f" [label=""];
  "sha256:61437f04749697099fda1e9c0a8526797f7b1842aea8a30f003af9dc19109ec5" -> "sha256:6aaecab998b290cf078dd90ec7746ce84de9aacd40c5b554088394cb5751ad2f" [label=""];
  "sha256:6aaecab998b290cf078dd90ec7746ce84de9aacd40c5b554088394cb5751ad2f" -> "sha256:9f6035eafd7b83cba7f02edf507fa0ac9ebde081c276a168e62439bcefbe0272" [label=""];
  "sha256:9f6035eafd7b83cba7f02edf507fa0ac9ebde081c276a168e62439bcefbe0272" -> "sha256:202bf7f94e27f8557c84428935248269e517c67b9c36055ff204c8d2f7538ec6" [label=""];
  "sha256:61437f04749697099fda1e9c0a8526797f7b1842aea8a30f003af9dc19109ec5" -> "sha256:202bf7f94e27f8557c84428935248269e517c67b9c36055ff204c8d2f7538ec6" [label=""];
  "sha256:202bf7f94e27f8557c84428935248269e517c67b9c36055ff204c8d2f7538ec6" -> "sha256:c26250f6b29e75c654e59cce1a3fcc1ef3efec197a8d4dd23910ebf1da4d3653" [label=""];
  "sha256:61437f04749697099fda1e9c0a8526797f7b1842aea8a30f003af9dc19109ec5" -> "sha256:c26250f6b29e75c654e59cce1a3fcc1ef3efec197a8d4dd23910ebf1da4d3653" [label=""];
  "sha256:c26250f6b29e75c654e59cce1a3fcc1ef3efec197a8d4dd23910ebf1da4d3653" -> "sha256:f98d5640a32fa294cc4daec4b671dd249af3eb4fc47a7bacf632915d6d4e4ba1" [label=""];
  "sha256:61437f04749697099fda1e9c0a8526797f7b1842aea8a30f003af9dc19109ec5" -> "sha256:f98d5640a32fa294cc4daec4b671dd249af3eb4fc47a7bacf632915d6d4e4ba1" [label=""];
  "sha256:f98d5640a32fa294cc4daec4b671dd249af3eb4fc47a7bacf632915d6d4e4ba1" -> "sha256:81d9d715dd7763f171f5f628cfcea35f9075ea33fe35383d3f11e608c086083c" [label=""];
  "sha256:81d9d715dd7763f171f5f628cfcea35f9075ea33fe35383d3f11e608c086083c" -> "sha256:49957c2b1cfd55ddeacd9c25e8eda62d184f8f893ce81c68de202366a45a6300" [label=""];
  "sha256:49957c2b1cfd55ddeacd9c25e8eda62d184f8f893ce81c68de202366a45a6300" -> "sha256:d31606a85a0ff7e802f148966d18716138512dee021b7500004ee4d9898c33bc" [label=""];
}

