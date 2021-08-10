[app/sources/424253253.Dockerfile]
digraph {
  "sha256:da6209b6e2ec94badc9aa97f12daac5423e5b5f7fc6ee1fedf9f29e529ac37c2" [label="local://context" shape="ellipse"];
  "sha256:45a3bd8e8024a4a3735f1953574a49787ea152b847f5c79bbb5ea91bb827606f" [label="docker-image://docker.io/tensorflow/tensorflow:1.13.1-gpu-py3" shape="ellipse"];
  "sha256:0041014569cff9b76a44b9f39be7c1822483116b24df54d97a89043ed6860793" [label="/bin/sh -c add-apt-repository ppa:deadsnakes/ppa" shape="box"];
  "sha256:0a756e0a0424af548c701c21f9ddf10620c4071dc2880ad56dfb2f64161dd61a" [label="/bin/sh -c apt-get update && apt-get install -y python3.6" shape="box"];
  "sha256:ecb5269ed750223df025e6db4f30ecc0c6a963d0c05459fde726771bf4b9e063" [label="/bin/sh -c pip --no-cache-dir install --upgrade     pip     setuptools     virtualenv" shape="box"];
  "sha256:088c1635a34a6a898584d33ceeed98055873f1f0e8a013bbcfcfe12b409b40ca" [label="/bin/sh -c virtualenv -p python3.6 ~/.venvs/image-atm" shape="box"];
  "sha256:6cdc8724f3078c86ffad168aac90145fa74377672e173ce2894c79ea128228d9" [label="/bin/sh -c /bin/bash -c \"source ~/.venvs/image-atm/bin/activate && pip install   tensorflow-gpu==1.13.1   Keras>=2.2.4   keras-vis>=0.4.1   awscli   Click   h5py   matplotlib   Pillow   python-dateutil   scikit-learn   scipy==1.1.*   tqdm   yarl\"" shape="box"];
  "sha256:acb4f05a5c4447ed13e39385b78031a6f824c9947b527d3691014796ea98705f" [label="mkdir{path=/root/repo}" shape="note"];
  "sha256:796a63de4bd4519f92b75c4cfc88932d3c568d23d478b914c6093430fe698bbc" [label="/bin/sh -c mkdir /root/repo/imageatm" shape="box"];
  "sha256:cdd05650eb55913aa2cbe6dc25e9211d7c3d54c6f9a2a3fe66ccd9a4a653c836" [label="copy{src=/imageatm, dest=/root/repo/imageatm}" shape="note"];
  "sha256:a7b3df3ae3285a6847906eb51125db0c74b776875b6508ddd38a50dd89853993" [label="copy{src=/entrypoints/entrypoint.train.gpu.sh, dest=/root/repo/}" shape="note"];
  "sha256:701d78f85a29b2eab01418d9df49d3885a920cc769bbdcf13f5ed3b564e2c554" [label="/bin/sh -c echo source ~/.venvs/image-atm/bin/activate >> /etc/bash.bashrc" shape="box"];
  "sha256:8c6392673c352525fcd8c29182bf59fe051cc9329b575b345e546a9e6aa6294d" [label="sha256:8c6392673c352525fcd8c29182bf59fe051cc9329b575b345e546a9e6aa6294d" shape="plaintext"];
  "sha256:45a3bd8e8024a4a3735f1953574a49787ea152b847f5c79bbb5ea91bb827606f" -> "sha256:0041014569cff9b76a44b9f39be7c1822483116b24df54d97a89043ed6860793" [label=""];
  "sha256:0041014569cff9b76a44b9f39be7c1822483116b24df54d97a89043ed6860793" -> "sha256:0a756e0a0424af548c701c21f9ddf10620c4071dc2880ad56dfb2f64161dd61a" [label=""];
  "sha256:0a756e0a0424af548c701c21f9ddf10620c4071dc2880ad56dfb2f64161dd61a" -> "sha256:ecb5269ed750223df025e6db4f30ecc0c6a963d0c05459fde726771bf4b9e063" [label=""];
  "sha256:ecb5269ed750223df025e6db4f30ecc0c6a963d0c05459fde726771bf4b9e063" -> "sha256:088c1635a34a6a898584d33ceeed98055873f1f0e8a013bbcfcfe12b409b40ca" [label=""];
  "sha256:088c1635a34a6a898584d33ceeed98055873f1f0e8a013bbcfcfe12b409b40ca" -> "sha256:6cdc8724f3078c86ffad168aac90145fa74377672e173ce2894c79ea128228d9" [label=""];
  "sha256:6cdc8724f3078c86ffad168aac90145fa74377672e173ce2894c79ea128228d9" -> "sha256:acb4f05a5c4447ed13e39385b78031a6f824c9947b527d3691014796ea98705f" [label=""];
  "sha256:acb4f05a5c4447ed13e39385b78031a6f824c9947b527d3691014796ea98705f" -> "sha256:796a63de4bd4519f92b75c4cfc88932d3c568d23d478b914c6093430fe698bbc" [label=""];
  "sha256:796a63de4bd4519f92b75c4cfc88932d3c568d23d478b914c6093430fe698bbc" -> "sha256:cdd05650eb55913aa2cbe6dc25e9211d7c3d54c6f9a2a3fe66ccd9a4a653c836" [label=""];
  "sha256:da6209b6e2ec94badc9aa97f12daac5423e5b5f7fc6ee1fedf9f29e529ac37c2" -> "sha256:cdd05650eb55913aa2cbe6dc25e9211d7c3d54c6f9a2a3fe66ccd9a4a653c836" [label=""];
  "sha256:cdd05650eb55913aa2cbe6dc25e9211d7c3d54c6f9a2a3fe66ccd9a4a653c836" -> "sha256:a7b3df3ae3285a6847906eb51125db0c74b776875b6508ddd38a50dd89853993" [label=""];
  "sha256:da6209b6e2ec94badc9aa97f12daac5423e5b5f7fc6ee1fedf9f29e529ac37c2" -> "sha256:a7b3df3ae3285a6847906eb51125db0c74b776875b6508ddd38a50dd89853993" [label=""];
  "sha256:a7b3df3ae3285a6847906eb51125db0c74b776875b6508ddd38a50dd89853993" -> "sha256:701d78f85a29b2eab01418d9df49d3885a920cc769bbdcf13f5ed3b564e2c554" [label=""];
  "sha256:701d78f85a29b2eab01418d9df49d3885a920cc769bbdcf13f5ed3b564e2c554" -> "sha256:8c6392673c352525fcd8c29182bf59fe051cc9329b575b345e546a9e6aa6294d" [label=""];
}

