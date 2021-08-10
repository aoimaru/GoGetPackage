[app/sources/341883434.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:c4abde4b47603bbec62c82988c7268f0eedf5d2c8ad4251e461415b5f2639926" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:1ef84b866c7be0df63ab223288b4b4e6247bed52c857fb5ef767e07fea518f86" [label="/bin/sh -c apt-get install -y git make g++" shape="box"];
  "sha256:c61224dcdef318e3ff944444f5f501958bdff1634e26e5e5db4934c549c014b7" [label="local://context" shape="ellipse"];
  "sha256:8795d3ab12e914ba058a85c58d83706291699a234c516a52188a5bed0bac76ff" [label="copy{src=/ames_dataset, dest=/ames_dataset}" shape="note"];
  "sha256:c38cb0bb34cd9d213441878d78d8507e8d56481768fe2eb840f3101550c7a1b9" [label="copy{src=/housing.py, dest=/housing.py}" shape="note"];
  "sha256:2ea7d6ff2669ea892ef4cb8b65bd223019dd25221c1e260c514c4e41fd91a0a8" [label="copy{src=/seldon_serve, dest=/seldon_serve}" shape="note"];
  "sha256:5e7c9483f859cfa8796f4c980a21c52644094da0c35004a58c4a287338198f04" [label="/bin/sh -c pip install -r seldon_serve/requirements.txt" shape="box"];
  "sha256:d9429c027075da8caec0b3e15ec92679ec05e5c9386681f9b87d876c32e3025d" [label="/bin/sh -c git clone --recursive https://github.com/dmlc/xgboost &&     cd xgboost &&     make -j4 &&     cd python-package; python setup.py install" shape="box"];
  "sha256:448eb3b1cc196d778fbcc6a05769fb7c1d87e0757091db0271043c11406371a4" [label="sha256:448eb3b1cc196d778fbcc6a05769fb7c1d87e0757091db0271043c11406371a4" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:c4abde4b47603bbec62c82988c7268f0eedf5d2c8ad4251e461415b5f2639926" [label=""];
  "sha256:c4abde4b47603bbec62c82988c7268f0eedf5d2c8ad4251e461415b5f2639926" -> "sha256:1ef84b866c7be0df63ab223288b4b4e6247bed52c857fb5ef767e07fea518f86" [label=""];
  "sha256:1ef84b866c7be0df63ab223288b4b4e6247bed52c857fb5ef767e07fea518f86" -> "sha256:8795d3ab12e914ba058a85c58d83706291699a234c516a52188a5bed0bac76ff" [label=""];
  "sha256:c61224dcdef318e3ff944444f5f501958bdff1634e26e5e5db4934c549c014b7" -> "sha256:8795d3ab12e914ba058a85c58d83706291699a234c516a52188a5bed0bac76ff" [label=""];
  "sha256:8795d3ab12e914ba058a85c58d83706291699a234c516a52188a5bed0bac76ff" -> "sha256:c38cb0bb34cd9d213441878d78d8507e8d56481768fe2eb840f3101550c7a1b9" [label=""];
  "sha256:c61224dcdef318e3ff944444f5f501958bdff1634e26e5e5db4934c549c014b7" -> "sha256:c38cb0bb34cd9d213441878d78d8507e8d56481768fe2eb840f3101550c7a1b9" [label=""];
  "sha256:c38cb0bb34cd9d213441878d78d8507e8d56481768fe2eb840f3101550c7a1b9" -> "sha256:2ea7d6ff2669ea892ef4cb8b65bd223019dd25221c1e260c514c4e41fd91a0a8" [label=""];
  "sha256:c61224dcdef318e3ff944444f5f501958bdff1634e26e5e5db4934c549c014b7" -> "sha256:2ea7d6ff2669ea892ef4cb8b65bd223019dd25221c1e260c514c4e41fd91a0a8" [label=""];
  "sha256:2ea7d6ff2669ea892ef4cb8b65bd223019dd25221c1e260c514c4e41fd91a0a8" -> "sha256:5e7c9483f859cfa8796f4c980a21c52644094da0c35004a58c4a287338198f04" [label=""];
  "sha256:5e7c9483f859cfa8796f4c980a21c52644094da0c35004a58c4a287338198f04" -> "sha256:d9429c027075da8caec0b3e15ec92679ec05e5c9386681f9b87d876c32e3025d" [label=""];
  "sha256:d9429c027075da8caec0b3e15ec92679ec05e5c9386681f9b87d876c32e3025d" -> "sha256:448eb3b1cc196d778fbcc6a05769fb7c1d87e0757091db0271043c11406371a4" [label=""];
}

