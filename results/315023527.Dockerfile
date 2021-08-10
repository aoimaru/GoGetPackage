[app/sources/315023527.Dockerfile]
digraph {
  "sha256:11aa2618b5571026619f3acb2f5f8aca3a793da83477b088ed709a3829aa57a7" [label="docker-image://docker.io/nvidia/cuda:9.0-cudnn7-runtime-ubuntu16.04" shape="ellipse"];
  "sha256:d1173731bf4ea55ae41a3e61f8eb36222380b0fabd4a2ba9cc0d910a70f745cf" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     ca-certificates     build-essential     git     python     python-pip     python-setuptools" shape="box"];
  "sha256:64cbd0050a1b3404613ad1137fc3248ed3cfe8e6442ef661cb810e35c59228da" [label="/bin/sh -c pip install tf-nightly-gpu" shape="box"];
  "sha256:13a8790b33c7b27c1a8a109bb89516a9051d43b32d02f99cf8de7b486df62954" [label="/bin/sh -c git clone https://github.com/tensorflow/models.git /tensorflow_models" shape="box"];
  "sha256:eb666f57863231aa7ff8e027684d2c3a41e737d28af950d8668e6a697f8f3bf2" [label="sha256:eb666f57863231aa7ff8e027684d2c3a41e737d28af950d8668e6a697f8f3bf2" shape="plaintext"];
  "sha256:11aa2618b5571026619f3acb2f5f8aca3a793da83477b088ed709a3829aa57a7" -> "sha256:d1173731bf4ea55ae41a3e61f8eb36222380b0fabd4a2ba9cc0d910a70f745cf" [label=""];
  "sha256:d1173731bf4ea55ae41a3e61f8eb36222380b0fabd4a2ba9cc0d910a70f745cf" -> "sha256:64cbd0050a1b3404613ad1137fc3248ed3cfe8e6442ef661cb810e35c59228da" [label=""];
  "sha256:64cbd0050a1b3404613ad1137fc3248ed3cfe8e6442ef661cb810e35c59228da" -> "sha256:13a8790b33c7b27c1a8a109bb89516a9051d43b32d02f99cf8de7b486df62954" [label=""];
  "sha256:13a8790b33c7b27c1a8a109bb89516a9051d43b32d02f99cf8de7b486df62954" -> "sha256:eb666f57863231aa7ff8e027684d2c3a41e737d28af950d8668e6a697f8f3bf2" [label=""];
}

