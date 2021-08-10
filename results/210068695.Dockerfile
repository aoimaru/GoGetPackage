[app/sources/210068695.Dockerfile]
digraph {
  "sha256:3f50400d5a86a05d26309fc63fe9252150e1c73a1c47821e878d6fd877e0836f" [label="docker-image://docker.io/tensorflow/tensorflow:1.1.0-py3" shape="ellipse"];
  "sha256:11a0df5d983a0b07bfa647a0a68a7849475cfef4e38d6eb70a880c125b83f010" [label="/bin/sh -c sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/' /etc/apt/sources.list" shape="box"];
  "sha256:87c21aa713857e40729336809705b4fd6d35db76e86f08945d5baee7e7a471ec" [label="local://context" shape="ellipse"];
  "sha256:fada3a26f89002c423765aa68060906c3c0e5578362d6adc2b404ec2c97720ec" [label="copy{src=/pip.conf, dest=/root/.pip/pip.conf}" shape="note"];
  "sha256:4c3170d0e12eeda0915be4d4cb7afbb30203dfcec55e1537f5f0dba81ac7068b" [label="sha256:4c3170d0e12eeda0915be4d4cb7afbb30203dfcec55e1537f5f0dba81ac7068b" shape="plaintext"];
  "sha256:3f50400d5a86a05d26309fc63fe9252150e1c73a1c47821e878d6fd877e0836f" -> "sha256:11a0df5d983a0b07bfa647a0a68a7849475cfef4e38d6eb70a880c125b83f010" [label=""];
  "sha256:11a0df5d983a0b07bfa647a0a68a7849475cfef4e38d6eb70a880c125b83f010" -> "sha256:fada3a26f89002c423765aa68060906c3c0e5578362d6adc2b404ec2c97720ec" [label=""];
  "sha256:87c21aa713857e40729336809705b4fd6d35db76e86f08945d5baee7e7a471ec" -> "sha256:fada3a26f89002c423765aa68060906c3c0e5578362d6adc2b404ec2c97720ec" [label=""];
  "sha256:fada3a26f89002c423765aa68060906c3c0e5578362d6adc2b404ec2c97720ec" -> "sha256:4c3170d0e12eeda0915be4d4cb7afbb30203dfcec55e1537f5f0dba81ac7068b" [label=""];
}

