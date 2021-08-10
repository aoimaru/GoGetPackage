[app/sources/219654988.Dockerfile]
digraph {
  "sha256:fdf69f9fcc7888502162034704ff4868f5f2e581056ecf487a890a30a075e019" [label="local://context" shape="ellipse"];
  "sha256:aaea665e90ac5ed8560f8e292b3d07d670864ff143b93eff93c8f3f3e54b5d48" [label="docker-image://docker.io/library/lighthouse.examples.base:latest" shape="ellipse"];
  "sha256:b84907e5a1189bef5165e7ad3d44435653718f3babf03230356720d194ab82ba" [label="copy{src=/configs/haproxy.yaml, dest=/etc/lighthouse/balancers/}" shape="note"];
  "sha256:313eba33b35e49750adb3de964ed2847009bed312518274be6a7384b108c172a" [label="copy{src=/configs/discovery/zookeeper.yaml, dest=/etc/lighthouse/discovery/}" shape="note"];
  "sha256:808206df76388c01246dfadfd88a61eb75dde3d04e9567a9c66bf56e54586bdb" [label="copy{src=/configs/clusters/cache.yaml, dest=/etc/lighthouse/clusters/}" shape="note"];
  "sha256:b9d538ef5d74bb5eb5541185fe1363cde71422911cf2f695ac4625b088e19a5a" [label="copy{src=/configs/services/multiapp.yaml, dest=/etc/lighthouse/services/}" shape="note"];
  "sha256:9cade92e08800ac28860b61895c83079bfe4c88071a55b4bed41d8c218550b4d" [label="/bin/sh -c virtualenv -p /usr/bin/python2.7 /opt/venvs/webapp" shape="box"];
  "sha256:0717eb83ce86adcc9fc58844f6edbad7d18598bb4c6923fa3ef2ee7fa1a99e4c" [label="/bin/sh -c . /opt/venvs/webapp/bin/activate; pip install flask redis" shape="box"];
  "sha256:4243f6d78b3aaa3177370d8415cb1a13383a90b2b757c130b34150c2a563b012" [label="copy{src=/apps/webapp.py, dest=/opt/venvs/webapp/bin/}" shape="note"];
  "sha256:333b21bf25472c3adfdd26f13794a1f4bea0e02d7805e493ff7f998d74426a1d" [label="copy{src=/supervisord/multiapp.conf, dest=/etc/supervisord/conf.d/}" shape="note"];
  "sha256:d7be4b678d0bb9e544340b8315a90238af698cc075cba5da437cf324df15a3ff" [label="sha256:d7be4b678d0bb9e544340b8315a90238af698cc075cba5da437cf324df15a3ff" shape="plaintext"];
  "sha256:aaea665e90ac5ed8560f8e292b3d07d670864ff143b93eff93c8f3f3e54b5d48" -> "sha256:b84907e5a1189bef5165e7ad3d44435653718f3babf03230356720d194ab82ba" [label=""];
  "sha256:fdf69f9fcc7888502162034704ff4868f5f2e581056ecf487a890a30a075e019" -> "sha256:b84907e5a1189bef5165e7ad3d44435653718f3babf03230356720d194ab82ba" [label=""];
  "sha256:b84907e5a1189bef5165e7ad3d44435653718f3babf03230356720d194ab82ba" -> "sha256:313eba33b35e49750adb3de964ed2847009bed312518274be6a7384b108c172a" [label=""];
  "sha256:fdf69f9fcc7888502162034704ff4868f5f2e581056ecf487a890a30a075e019" -> "sha256:313eba33b35e49750adb3de964ed2847009bed312518274be6a7384b108c172a" [label=""];
  "sha256:313eba33b35e49750adb3de964ed2847009bed312518274be6a7384b108c172a" -> "sha256:808206df76388c01246dfadfd88a61eb75dde3d04e9567a9c66bf56e54586bdb" [label=""];
  "sha256:fdf69f9fcc7888502162034704ff4868f5f2e581056ecf487a890a30a075e019" -> "sha256:808206df76388c01246dfadfd88a61eb75dde3d04e9567a9c66bf56e54586bdb" [label=""];
  "sha256:808206df76388c01246dfadfd88a61eb75dde3d04e9567a9c66bf56e54586bdb" -> "sha256:b9d538ef5d74bb5eb5541185fe1363cde71422911cf2f695ac4625b088e19a5a" [label=""];
  "sha256:fdf69f9fcc7888502162034704ff4868f5f2e581056ecf487a890a30a075e019" -> "sha256:b9d538ef5d74bb5eb5541185fe1363cde71422911cf2f695ac4625b088e19a5a" [label=""];
  "sha256:b9d538ef5d74bb5eb5541185fe1363cde71422911cf2f695ac4625b088e19a5a" -> "sha256:9cade92e08800ac28860b61895c83079bfe4c88071a55b4bed41d8c218550b4d" [label=""];
  "sha256:9cade92e08800ac28860b61895c83079bfe4c88071a55b4bed41d8c218550b4d" -> "sha256:0717eb83ce86adcc9fc58844f6edbad7d18598bb4c6923fa3ef2ee7fa1a99e4c" [label=""];
  "sha256:0717eb83ce86adcc9fc58844f6edbad7d18598bb4c6923fa3ef2ee7fa1a99e4c" -> "sha256:4243f6d78b3aaa3177370d8415cb1a13383a90b2b757c130b34150c2a563b012" [label=""];
  "sha256:fdf69f9fcc7888502162034704ff4868f5f2e581056ecf487a890a30a075e019" -> "sha256:4243f6d78b3aaa3177370d8415cb1a13383a90b2b757c130b34150c2a563b012" [label=""];
  "sha256:4243f6d78b3aaa3177370d8415cb1a13383a90b2b757c130b34150c2a563b012" -> "sha256:333b21bf25472c3adfdd26f13794a1f4bea0e02d7805e493ff7f998d74426a1d" [label=""];
  "sha256:fdf69f9fcc7888502162034704ff4868f5f2e581056ecf487a890a30a075e019" -> "sha256:333b21bf25472c3adfdd26f13794a1f4bea0e02d7805e493ff7f998d74426a1d" [label=""];
  "sha256:333b21bf25472c3adfdd26f13794a1f4bea0e02d7805e493ff7f998d74426a1d" -> "sha256:d7be4b678d0bb9e544340b8315a90238af698cc075cba5da437cf324df15a3ff" [label=""];
}

