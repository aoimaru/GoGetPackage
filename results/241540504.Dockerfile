[app/sources/241540504.Dockerfile]
digraph {
  "sha256:bf80f3ad339bfbe6935383fd4e32cc81b90a0a95720d4c0383bc6f6310983847" [label="docker-image://gcr.io/tensorflow/tensorflow:latest" shape="ellipse"];
  "sha256:b7498e7277b3949ac35a60c7d7a30540cb8900588ddd776849093782cc2926d7" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         libjpeg8-dev         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:cdb97341d75f7c32db6cfd6e070792d3ebbed987fb6c34f0801ce41dc2c23786" [label="/bin/sh -c pip install scikit-learn pyreadline Pillow" shape="box"];
  "sha256:abc30bf8ad3470ab8d733bb4567174d60a48bd51378e37ac2b4d78e1fac46fe3" [label="/bin/sh -c rm -rf /notebooks/*" shape="box"];
  "sha256:e3aa5698ace16f8a8a1542780abb97bc4582997b0de99ed864586cad71e1fc84" [label="local://context" shape="ellipse"];
  "sha256:e9b87d404352d4e6e68f68804284352022a03a40c0fc8240d04ef94a82655b5f" [label="copy{src=/*.ipynb, dest=/notebooks/}" shape="note"];
  "sha256:f79d4e0849612e832991e10d724adc71c005527703d3ef676c17f4676dfb37fe" [label="mkdir{path=/notebooks}" shape="note"];
  "sha256:ff870d7af1313b4e1e879df6024616bdaffa0b8a461d97fcba192383963f7dfe" [label="sha256:ff870d7af1313b4e1e879df6024616bdaffa0b8a461d97fcba192383963f7dfe" shape="plaintext"];
  "sha256:bf80f3ad339bfbe6935383fd4e32cc81b90a0a95720d4c0383bc6f6310983847" -> "sha256:b7498e7277b3949ac35a60c7d7a30540cb8900588ddd776849093782cc2926d7" [label=""];
  "sha256:b7498e7277b3949ac35a60c7d7a30540cb8900588ddd776849093782cc2926d7" -> "sha256:cdb97341d75f7c32db6cfd6e070792d3ebbed987fb6c34f0801ce41dc2c23786" [label=""];
  "sha256:cdb97341d75f7c32db6cfd6e070792d3ebbed987fb6c34f0801ce41dc2c23786" -> "sha256:abc30bf8ad3470ab8d733bb4567174d60a48bd51378e37ac2b4d78e1fac46fe3" [label=""];
  "sha256:abc30bf8ad3470ab8d733bb4567174d60a48bd51378e37ac2b4d78e1fac46fe3" -> "sha256:e9b87d404352d4e6e68f68804284352022a03a40c0fc8240d04ef94a82655b5f" [label=""];
  "sha256:e3aa5698ace16f8a8a1542780abb97bc4582997b0de99ed864586cad71e1fc84" -> "sha256:e9b87d404352d4e6e68f68804284352022a03a40c0fc8240d04ef94a82655b5f" [label=""];
  "sha256:e9b87d404352d4e6e68f68804284352022a03a40c0fc8240d04ef94a82655b5f" -> "sha256:f79d4e0849612e832991e10d724adc71c005527703d3ef676c17f4676dfb37fe" [label=""];
  "sha256:f79d4e0849612e832991e10d724adc71c005527703d3ef676c17f4676dfb37fe" -> "sha256:ff870d7af1313b4e1e879df6024616bdaffa0b8a461d97fcba192383963f7dfe" [label=""];
}

