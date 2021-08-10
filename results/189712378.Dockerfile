[app/sources/189712378.Dockerfile]
digraph {
  "sha256:821712280f49b24d7354d2aef5fe64d6da852f96a7d5a96478df27ef8b788504" [label="docker-image://docker.io/bids/base_fsl:latest" shape="ellipse"];
  "sha256:43d2285903512d07050814b3be3276098eb2b8e01b45325ab487fa4071e58493" [label="/bin/sh -c apt-get update &&     apt-get install -y python3 python3-pip &&     pip3 install nibabel &&     apt-get remove -y python3-pip &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:847709552eabc29ff0f1b5d72acd9839bba648bbbb1ce7e3b8062e3e507529bf" [label="local://context" shape="ellipse"];
  "sha256:41bd73ad82f6d09ec9ea7212d402eea88e9c9d630afee8dc7e6e93bff4819a06" [label="copy{src=/run.py, dest=/run.py}" shape="note"];
  "sha256:141e2c89419fdb3babc50cf97399d71c5c4da62f3e38d3b9904d34a85fc581e9" [label="copy{src=/version, dest=/version}" shape="note"];
  "sha256:c5f40e8d1336eababc373d3e031e994c61927443769b341ac3b91b2bc78eb6d5" [label="sha256:c5f40e8d1336eababc373d3e031e994c61927443769b341ac3b91b2bc78eb6d5" shape="plaintext"];
  "sha256:821712280f49b24d7354d2aef5fe64d6da852f96a7d5a96478df27ef8b788504" -> "sha256:43d2285903512d07050814b3be3276098eb2b8e01b45325ab487fa4071e58493" [label=""];
  "sha256:43d2285903512d07050814b3be3276098eb2b8e01b45325ab487fa4071e58493" -> "sha256:41bd73ad82f6d09ec9ea7212d402eea88e9c9d630afee8dc7e6e93bff4819a06" [label=""];
  "sha256:847709552eabc29ff0f1b5d72acd9839bba648bbbb1ce7e3b8062e3e507529bf" -> "sha256:41bd73ad82f6d09ec9ea7212d402eea88e9c9d630afee8dc7e6e93bff4819a06" [label=""];
  "sha256:41bd73ad82f6d09ec9ea7212d402eea88e9c9d630afee8dc7e6e93bff4819a06" -> "sha256:141e2c89419fdb3babc50cf97399d71c5c4da62f3e38d3b9904d34a85fc581e9" [label=""];
  "sha256:847709552eabc29ff0f1b5d72acd9839bba648bbbb1ce7e3b8062e3e507529bf" -> "sha256:141e2c89419fdb3babc50cf97399d71c5c4da62f3e38d3b9904d34a85fc581e9" [label=""];
  "sha256:141e2c89419fdb3babc50cf97399d71c5c4da62f3e38d3b9904d34a85fc581e9" -> "sha256:c5f40e8d1336eababc373d3e031e994c61927443769b341ac3b91b2bc78eb6d5" [label=""];
}

