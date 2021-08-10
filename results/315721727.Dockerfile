[app/sources/315721727.Dockerfile]
digraph {
  "sha256:8ed71a7b948151c88399f2c3433e5964f9193334228d05c58d82e2027da29740" [label="docker-image://docker.io/pytorch/pytorch:nightly-devel-cuda10.0-cudnn7@sha256:837e64c1ce3a4d7518b99c1bbbccbc7a93677477cbb2f6d5aa627a17cf620c75" shape="ellipse"];
  "sha256:58190bc4d14c4fdb327a230b2df39a6f7f6a8bbf9f7aefe339f3e170c929382f" [label="/bin/sh -c apt-get update -y" shape="box"];
  "sha256:ba29db871a29bffa01aa9304772f6c9dbde69007784735feeaee5915f4a60d1d" [label="/bin/sh -c pip install numpy scipy matplotlib librosa==0.6.0 tensorflow tensorboardX inflect==0.2.5 Unidecode==1.0.22 jupyter" shape="box"];
  "sha256:faff9ca098bade54b0f36cadd512202afad6297518dc234c1ce96ba93b84a51a" [label="local://context" shape="ellipse"];
  "sha256:2fcf274456e1e735d6f1714c5bb135dc9d0c6f75fa9d844e2a12168fc23b049b" [label="copy{src=/apex, dest=/apex/}" shape="note"];
  "sha256:90bab8aa17ed493b3ac5dcc56eacbaa6fd91a8dc4c6938e8f93b203e79967202" [label="mkdir{path=/apex}" shape="note"];
  "sha256:135d052c5f0d971c56570366203f018d21273f8cd4abac81790140cfc5940b7b" [label="/bin/sh -c pip install -v --no-cache-dir --global-option=\"--cpp_ext\" --global-option=\"--cuda_ext\" ." shape="box"];
  "sha256:fbe9a0ad9b3451b2b9cf1438e5bdfb699cad69133fa365a56a78e3a0148dedeb" [label="sha256:fbe9a0ad9b3451b2b9cf1438e5bdfb699cad69133fa365a56a78e3a0148dedeb" shape="plaintext"];
  "sha256:8ed71a7b948151c88399f2c3433e5964f9193334228d05c58d82e2027da29740" -> "sha256:58190bc4d14c4fdb327a230b2df39a6f7f6a8bbf9f7aefe339f3e170c929382f" [label=""];
  "sha256:58190bc4d14c4fdb327a230b2df39a6f7f6a8bbf9f7aefe339f3e170c929382f" -> "sha256:ba29db871a29bffa01aa9304772f6c9dbde69007784735feeaee5915f4a60d1d" [label=""];
  "sha256:ba29db871a29bffa01aa9304772f6c9dbde69007784735feeaee5915f4a60d1d" -> "sha256:2fcf274456e1e735d6f1714c5bb135dc9d0c6f75fa9d844e2a12168fc23b049b" [label=""];
  "sha256:faff9ca098bade54b0f36cadd512202afad6297518dc234c1ce96ba93b84a51a" -> "sha256:2fcf274456e1e735d6f1714c5bb135dc9d0c6f75fa9d844e2a12168fc23b049b" [label=""];
  "sha256:2fcf274456e1e735d6f1714c5bb135dc9d0c6f75fa9d844e2a12168fc23b049b" -> "sha256:90bab8aa17ed493b3ac5dcc56eacbaa6fd91a8dc4c6938e8f93b203e79967202" [label=""];
  "sha256:90bab8aa17ed493b3ac5dcc56eacbaa6fd91a8dc4c6938e8f93b203e79967202" -> "sha256:135d052c5f0d971c56570366203f018d21273f8cd4abac81790140cfc5940b7b" [label=""];
  "sha256:135d052c5f0d971c56570366203f018d21273f8cd4abac81790140cfc5940b7b" -> "sha256:fbe9a0ad9b3451b2b9cf1438e5bdfb699cad69133fa365a56a78e3a0148dedeb" [label=""];
}

