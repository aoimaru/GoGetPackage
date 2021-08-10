[app/sources/310753676.Dockerfile]
digraph {
  "sha256:11aa2618b5571026619f3acb2f5f8aca3a793da83477b088ed709a3829aa57a7" [label="docker-image://docker.io/nvidia/cuda:9.0-cudnn7-runtime-ubuntu16.04" shape="ellipse"];
  "sha256:eb8a34aeb8331fe7b560607f83e66f25e26af39a41d72f231a103be3d0913b2c" [label="mkdir{path=/research}" shape="note"];
  "sha256:3aabf6a148f696c1b243937451f0889c5882b93accb95db0469413bb76a07dee" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:d7747e7419d94ac2e8ff3db4705140625b77663d817145283c1c9f56b0137cf9" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     ca-certificates     build-essential     git     python     python-pip" shape="box"];
  "sha256:54ecf220b8f340941b0f3fb9aecdbfab0eb9e3e631c95d3408b536affcbbb48a" [label="/bin/sh -c apt-get install -y python-setuptools" shape="box"];
  "sha256:50b4aaf54a952ff28c3baf049727783fe5df0527b74d705c205ad1b9ad9ddbb6" [label="/bin/sh -c apt-get install -y python-pip python3-pip virtualenv htop" shape="box"];
  "sha256:7f9a8a5b574287a467b0fb169ebdcd45835417bd37a75dec16c25e2b6b0dc96c" [label="/bin/sh -c pip3 install virtualenv" shape="box"];
  "sha256:8150ba2bbb12393882c41b4e9bf294955ab5f1e1483408e5f14abc8e8bcebd3c" [label="/bin/sh -c pip3 install virtualenvwrapper" shape="box"];
  "sha256:d83e8abbef490b38b48e95c39e3a4a6aee0f7aa35d178961a6ee431177e24275" [label="/bin/sh -c pip3 install --upgrade numpy scipy sklearn tf-nightly-gpu" shape="box"];
  "sha256:4eef2a5d9ba666f2b6506f27eee778da438b7d4719e8f99b827f3f397e09217d" [label="local://context" shape="ellipse"];
  "sha256:a8e595133a1700eb2c16879cc2ca93bc2231bd69b37f79d28dc874f96745ceba" [label="copy{src=/, dest=/research/reinforcement}" shape="note"];
  "sha256:5f3ac6a130a0e70e2abafdf2ab5f97c2df1d18c81b1bb8d99a0b2989a08487c3" [label="mkdir{path=/research/reinforcement}" shape="note"];
  "sha256:c4f3dcbce34a706ca8ae92e4e224abe51d8bb784cc0d23cf37de51376cb10071" [label="/bin/sh -c pip3 install --upgrade pip" shape="box"];
  "sha256:987bd9594727e15829b129af5297f0c670197c77d7805a21c737fff06b78ec68" [label="/bin/sh -c pip3 install --upgrade setuptools" shape="box"];
  "sha256:952289763f48d623558a3beb768b2e35dd279776615ba19d817860fedaf92cd1" [label="/bin/sh -c pip3 install -r minigo/requirements.txt" shape="box"];
  "sha256:c32c557603289eaef94a160557bcffcc44a3bfd9cd4f870fb51b6580a2929cf8" [label="sha256:c32c557603289eaef94a160557bcffcc44a3bfd9cd4f870fb51b6580a2929cf8" shape="plaintext"];
  "sha256:11aa2618b5571026619f3acb2f5f8aca3a793da83477b088ed709a3829aa57a7" -> "sha256:eb8a34aeb8331fe7b560607f83e66f25e26af39a41d72f231a103be3d0913b2c" [label=""];
  "sha256:eb8a34aeb8331fe7b560607f83e66f25e26af39a41d72f231a103be3d0913b2c" -> "sha256:3aabf6a148f696c1b243937451f0889c5882b93accb95db0469413bb76a07dee" [label=""];
  "sha256:3aabf6a148f696c1b243937451f0889c5882b93accb95db0469413bb76a07dee" -> "sha256:d7747e7419d94ac2e8ff3db4705140625b77663d817145283c1c9f56b0137cf9" [label=""];
  "sha256:d7747e7419d94ac2e8ff3db4705140625b77663d817145283c1c9f56b0137cf9" -> "sha256:54ecf220b8f340941b0f3fb9aecdbfab0eb9e3e631c95d3408b536affcbbb48a" [label=""];
  "sha256:54ecf220b8f340941b0f3fb9aecdbfab0eb9e3e631c95d3408b536affcbbb48a" -> "sha256:50b4aaf54a952ff28c3baf049727783fe5df0527b74d705c205ad1b9ad9ddbb6" [label=""];
  "sha256:50b4aaf54a952ff28c3baf049727783fe5df0527b74d705c205ad1b9ad9ddbb6" -> "sha256:7f9a8a5b574287a467b0fb169ebdcd45835417bd37a75dec16c25e2b6b0dc96c" [label=""];
  "sha256:7f9a8a5b574287a467b0fb169ebdcd45835417bd37a75dec16c25e2b6b0dc96c" -> "sha256:8150ba2bbb12393882c41b4e9bf294955ab5f1e1483408e5f14abc8e8bcebd3c" [label=""];
  "sha256:8150ba2bbb12393882c41b4e9bf294955ab5f1e1483408e5f14abc8e8bcebd3c" -> "sha256:d83e8abbef490b38b48e95c39e3a4a6aee0f7aa35d178961a6ee431177e24275" [label=""];
  "sha256:d83e8abbef490b38b48e95c39e3a4a6aee0f7aa35d178961a6ee431177e24275" -> "sha256:a8e595133a1700eb2c16879cc2ca93bc2231bd69b37f79d28dc874f96745ceba" [label=""];
  "sha256:4eef2a5d9ba666f2b6506f27eee778da438b7d4719e8f99b827f3f397e09217d" -> "sha256:a8e595133a1700eb2c16879cc2ca93bc2231bd69b37f79d28dc874f96745ceba" [label=""];
  "sha256:a8e595133a1700eb2c16879cc2ca93bc2231bd69b37f79d28dc874f96745ceba" -> "sha256:5f3ac6a130a0e70e2abafdf2ab5f97c2df1d18c81b1bb8d99a0b2989a08487c3" [label=""];
  "sha256:5f3ac6a130a0e70e2abafdf2ab5f97c2df1d18c81b1bb8d99a0b2989a08487c3" -> "sha256:c4f3dcbce34a706ca8ae92e4e224abe51d8bb784cc0d23cf37de51376cb10071" [label=""];
  "sha256:c4f3dcbce34a706ca8ae92e4e224abe51d8bb784cc0d23cf37de51376cb10071" -> "sha256:987bd9594727e15829b129af5297f0c670197c77d7805a21c737fff06b78ec68" [label=""];
  "sha256:987bd9594727e15829b129af5297f0c670197c77d7805a21c737fff06b78ec68" -> "sha256:952289763f48d623558a3beb768b2e35dd279776615ba19d817860fedaf92cd1" [label=""];
  "sha256:952289763f48d623558a3beb768b2e35dd279776615ba19d817860fedaf92cd1" -> "sha256:c32c557603289eaef94a160557bcffcc44a3bfd9cd4f870fb51b6580a2929cf8" [label=""];
}

