[app/sources/460642052.Dockerfile]
digraph {
  "sha256:bf80f3ad339bfbe6935383fd4e32cc81b90a0a95720d4c0383bc6f6310983847" [label="docker-image://gcr.io/tensorflow/tensorflow:latest" shape="ellipse"];
  "sha256:b7498e7277b3949ac35a60c7d7a30540cb8900588ddd776849093782cc2926d7" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         libjpeg8-dev         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:cdb97341d75f7c32db6cfd6e070792d3ebbed987fb6c34f0801ce41dc2c23786" [label="/bin/sh -c pip install scikit-learn pyreadline Pillow" shape="box"];
  "sha256:abc30bf8ad3470ab8d733bb4567174d60a48bd51378e37ac2b4d78e1fac46fe3" [label="/bin/sh -c rm -rf /notebooks/*" shape="box"];
  "sha256:cf02dc56c2b1bdfab559ccfca1398c99365107675eb2c3f038cd2bc85db6d391" [label="local://context" shape="ellipse"];
  "sha256:85e75fd6c8db8a78850903e1614afabcb3408aa581cf27483fe985c93e9341a5" [label="copy{src=/*.ipynb, dest=/notebooks/}" shape="note"];
  "sha256:8cecb986cb009028ea8429085fffa4b0e673a1ba269b7a431435bf0c33b16c70" [label="mkdir{path=/notebooks}" shape="note"];
  "sha256:bc6de2f61e476a3379a38991ddb1fa42e3e8d40e0d938d66d147025cdc63234e" [label="sha256:bc6de2f61e476a3379a38991ddb1fa42e3e8d40e0d938d66d147025cdc63234e" shape="plaintext"];
  "sha256:bf80f3ad339bfbe6935383fd4e32cc81b90a0a95720d4c0383bc6f6310983847" -> "sha256:b7498e7277b3949ac35a60c7d7a30540cb8900588ddd776849093782cc2926d7" [label=""];
  "sha256:b7498e7277b3949ac35a60c7d7a30540cb8900588ddd776849093782cc2926d7" -> "sha256:cdb97341d75f7c32db6cfd6e070792d3ebbed987fb6c34f0801ce41dc2c23786" [label=""];
  "sha256:cdb97341d75f7c32db6cfd6e070792d3ebbed987fb6c34f0801ce41dc2c23786" -> "sha256:abc30bf8ad3470ab8d733bb4567174d60a48bd51378e37ac2b4d78e1fac46fe3" [label=""];
  "sha256:abc30bf8ad3470ab8d733bb4567174d60a48bd51378e37ac2b4d78e1fac46fe3" -> "sha256:85e75fd6c8db8a78850903e1614afabcb3408aa581cf27483fe985c93e9341a5" [label=""];
  "sha256:cf02dc56c2b1bdfab559ccfca1398c99365107675eb2c3f038cd2bc85db6d391" -> "sha256:85e75fd6c8db8a78850903e1614afabcb3408aa581cf27483fe985c93e9341a5" [label=""];
  "sha256:85e75fd6c8db8a78850903e1614afabcb3408aa581cf27483fe985c93e9341a5" -> "sha256:8cecb986cb009028ea8429085fffa4b0e673a1ba269b7a431435bf0c33b16c70" [label=""];
  "sha256:8cecb986cb009028ea8429085fffa4b0e673a1ba269b7a431435bf0c33b16c70" -> "sha256:bc6de2f61e476a3379a38991ddb1fa42e3e8d40e0d938d66d147025cdc63234e" [label=""];
}

