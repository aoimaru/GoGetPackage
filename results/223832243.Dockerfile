[app/sources/223832243.Dockerfile]
digraph {
  "sha256:3b9538fa7a5cc23e7f7811e06374d45d151b7d1e358bd6f2f43839039746b160" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:fb79694bfe7b640f51414a5a88ef5e1b706b7efdb9d187778971e175bf56ab3d" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         curl         libfreetype6-dev         libpng12-dev         libzmq3-dev         pkg-config         python         python-dev         rsync         software-properties-common         unzip         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b514185ef33d9742339d5979a9d73be9266196ae3398aca40cceed458f02225b" [label="/bin/sh -c curl -O https://bootstrap.pypa.io/get-pip.py &&     python get-pip.py &&     rm get-pip.py" shape="box"];
  "sha256:3fa80461d2ab26ca42b79ce10dcdc10c4a59648cd97bf5d85eff37c1a815ecda" [label="/bin/sh -c pip --no-cache-dir install         ipykernel         jupyter         matplotlib         numpy         scipy         sklearn         pandas         Pillow         &&     python -m ipykernel.kernelspec" shape="box"];
  "sha256:a54bffbdb29b5300ba38cbdfe50db35b793b5b71c827f8f65a13d478bc219ecc" [label="/bin/sh -c pip --no-cache-dir install     http://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.0.0-cp27-none-linux_x86_64.whl" shape="box"];
  "sha256:8ff505830d1d0b4809cc1abd8369ddbee5202267a575c41056ed82d04719beef" [label="copy{src=/jupyter_notebook_config.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:7fda18bda5dcf566bdcdcf810d7fba634f89876cc524e6c23c9352287823a0c0" [label="copy{src=/notebooks, dest=/notebooks}" shape="note"];
  "sha256:2b3fb0c2ed9a193c884b19603dc32a997ca6860ca05ee28f86c943740869b9ba" [label="copy{src=/run_jupyter.sh, dest=/}" shape="note"];
  "sha256:ea4dac0c7170eae03f5bfec249464278da92625ddeae3b762a88b78b618efa41" [label="mkdir{path=/notebooks}" shape="note"];
  "sha256:940bc13e62ca3c6ef84d0510e541b343434458bac00d047a05999152c7ab60d7" [label="sha256:940bc13e62ca3c6ef84d0510e541b343434458bac00d047a05999152c7ab60d7" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:fb79694bfe7b640f51414a5a88ef5e1b706b7efdb9d187778971e175bf56ab3d" [label=""];
  "sha256:fb79694bfe7b640f51414a5a88ef5e1b706b7efdb9d187778971e175bf56ab3d" -> "sha256:b514185ef33d9742339d5979a9d73be9266196ae3398aca40cceed458f02225b" [label=""];
  "sha256:b514185ef33d9742339d5979a9d73be9266196ae3398aca40cceed458f02225b" -> "sha256:3fa80461d2ab26ca42b79ce10dcdc10c4a59648cd97bf5d85eff37c1a815ecda" [label=""];
  "sha256:3fa80461d2ab26ca42b79ce10dcdc10c4a59648cd97bf5d85eff37c1a815ecda" -> "sha256:a54bffbdb29b5300ba38cbdfe50db35b793b5b71c827f8f65a13d478bc219ecc" [label=""];
  "sha256:a54bffbdb29b5300ba38cbdfe50db35b793b5b71c827f8f65a13d478bc219ecc" -> "sha256:8ff505830d1d0b4809cc1abd8369ddbee5202267a575c41056ed82d04719beef" [label=""];
  "sha256:3b9538fa7a5cc23e7f7811e06374d45d151b7d1e358bd6f2f43839039746b160" -> "sha256:8ff505830d1d0b4809cc1abd8369ddbee5202267a575c41056ed82d04719beef" [label=""];
  "sha256:8ff505830d1d0b4809cc1abd8369ddbee5202267a575c41056ed82d04719beef" -> "sha256:7fda18bda5dcf566bdcdcf810d7fba634f89876cc524e6c23c9352287823a0c0" [label=""];
  "sha256:3b9538fa7a5cc23e7f7811e06374d45d151b7d1e358bd6f2f43839039746b160" -> "sha256:7fda18bda5dcf566bdcdcf810d7fba634f89876cc524e6c23c9352287823a0c0" [label=""];
  "sha256:7fda18bda5dcf566bdcdcf810d7fba634f89876cc524e6c23c9352287823a0c0" -> "sha256:2b3fb0c2ed9a193c884b19603dc32a997ca6860ca05ee28f86c943740869b9ba" [label=""];
  "sha256:3b9538fa7a5cc23e7f7811e06374d45d151b7d1e358bd6f2f43839039746b160" -> "sha256:2b3fb0c2ed9a193c884b19603dc32a997ca6860ca05ee28f86c943740869b9ba" [label=""];
  "sha256:2b3fb0c2ed9a193c884b19603dc32a997ca6860ca05ee28f86c943740869b9ba" -> "sha256:ea4dac0c7170eae03f5bfec249464278da92625ddeae3b762a88b78b618efa41" [label=""];
  "sha256:ea4dac0c7170eae03f5bfec249464278da92625ddeae3b762a88b78b618efa41" -> "sha256:940bc13e62ca3c6ef84d0510e541b343434458bac00d047a05999152c7ab60d7" [label=""];
}

