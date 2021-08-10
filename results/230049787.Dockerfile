[app/sources/230049787.Dockerfile]
digraph {
  "sha256:b0975f6370cec7551f54d2be010adeae977d29e35943234780c38ca2c9e27f20" [label="docker-image://docker.io/library/golang:1.7.6" shape="ellipse"];
  "sha256:5465cfdce75ffc9ec102e6941c90c61d145b875f8e5d9c710e9dd444c2fd595f" [label="/bin/sh -c set -x &&     apt-get update &&     apt-get install -y --no-install-recommends          netcat python-pip virtualenv &&     apt-get clean" shape="box"];
  "sha256:3ad4dcd37b508462f0940dfcb95c58fba2df25d8330f2ff1e4e9735d152635c7" [label="/bin/sh -c test -d ${PYTHON_ENV} || virtualenv ${PYTHON_ENV}" shape="box"];
  "sha256:9a630ac2bcbbb939b235cef6f66eca1b3d939e34966b1a3347055691ce607c73" [label="local://context" shape="ellipse"];
  "sha256:dbcd9820769325421a511b2fadcfec7fce9be1e7fa32cc53966d6a93031cc46b" [label="copy{src=/tests/system/requirements.txt, dest=/tmp/requirements.txt}" shape="note"];
  "sha256:6aebe0b75913f6d3b7bdd5817b23758173aa1f037b0dff4bce45dd5f4338b846" [label="/bin/sh -c . ${PYTHON_ENV}/bin/activate && pip install -U pip" shape="box"];
  "sha256:c6089b274673940b0be90d3b95043e2f9b5a46949614e2f8c71d1b44798f3715" [label="/bin/sh -c . ${PYTHON_ENV}/bin/activate && pip install -Ur /tmp/requirements.txt" shape="box"];
  "sha256:a57abc6f30f799d3139827b04fd3cf01815aefb0578304ec630f70e88972ae98" [label="/bin/sh -c mkdir -p /etc/pki/tls/certs" shape="box"];
  "sha256:79b3a81050cc2ed7fd95bb5e8a8716b74b5844f9bba343e557c840018b682000" [label="sha256:79b3a81050cc2ed7fd95bb5e8a8716b74b5844f9bba343e557c840018b682000" shape="plaintext"];
  "sha256:b0975f6370cec7551f54d2be010adeae977d29e35943234780c38ca2c9e27f20" -> "sha256:5465cfdce75ffc9ec102e6941c90c61d145b875f8e5d9c710e9dd444c2fd595f" [label=""];
  "sha256:5465cfdce75ffc9ec102e6941c90c61d145b875f8e5d9c710e9dd444c2fd595f" -> "sha256:3ad4dcd37b508462f0940dfcb95c58fba2df25d8330f2ff1e4e9735d152635c7" [label=""];
  "sha256:3ad4dcd37b508462f0940dfcb95c58fba2df25d8330f2ff1e4e9735d152635c7" -> "sha256:dbcd9820769325421a511b2fadcfec7fce9be1e7fa32cc53966d6a93031cc46b" [label=""];
  "sha256:9a630ac2bcbbb939b235cef6f66eca1b3d939e34966b1a3347055691ce607c73" -> "sha256:dbcd9820769325421a511b2fadcfec7fce9be1e7fa32cc53966d6a93031cc46b" [label=""];
  "sha256:dbcd9820769325421a511b2fadcfec7fce9be1e7fa32cc53966d6a93031cc46b" -> "sha256:6aebe0b75913f6d3b7bdd5817b23758173aa1f037b0dff4bce45dd5f4338b846" [label=""];
  "sha256:6aebe0b75913f6d3b7bdd5817b23758173aa1f037b0dff4bce45dd5f4338b846" -> "sha256:c6089b274673940b0be90d3b95043e2f9b5a46949614e2f8c71d1b44798f3715" [label=""];
  "sha256:c6089b274673940b0be90d3b95043e2f9b5a46949614e2f8c71d1b44798f3715" -> "sha256:a57abc6f30f799d3139827b04fd3cf01815aefb0578304ec630f70e88972ae98" [label=""];
  "sha256:a57abc6f30f799d3139827b04fd3cf01815aefb0578304ec630f70e88972ae98" -> "sha256:79b3a81050cc2ed7fd95bb5e8a8716b74b5844f9bba343e557c840018b682000" [label=""];
}

