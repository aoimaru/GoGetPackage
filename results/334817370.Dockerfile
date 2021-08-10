[app/sources/334817370.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:b4dd523cbbe4732c5bbb188665d85b348403f369aae89be8fb092a9e3926b3c4" [label="/bin/sh -c apt-get update  && apt-get install -y python3-h5py python3-numpy python3-yaml" shape="box"];
  "sha256:a467e96c739c625f3e958d0df2f06a2f45d5850de11a653788aace27ced533d2" [label="local://context" shape="ellipse"];
  "sha256:d004590b9c05e3d42eb3287ccc2610dc289e50e1023d328c790ccb85b605712f" [label="copy{src=/merge_h5py.py, dest=/scripts/merge_h5py.py}" shape="note"];
  "sha256:4b7814682be72a18ed559d193dd3140d9ad0af120aab1cd23b01c721dd854d9c" [label="sha256:4b7814682be72a18ed559d193dd3140d9ad0af120aab1cd23b01c721dd854d9c" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:b4dd523cbbe4732c5bbb188665d85b348403f369aae89be8fb092a9e3926b3c4" [label=""];
  "sha256:b4dd523cbbe4732c5bbb188665d85b348403f369aae89be8fb092a9e3926b3c4" -> "sha256:d004590b9c05e3d42eb3287ccc2610dc289e50e1023d328c790ccb85b605712f" [label=""];
  "sha256:a467e96c739c625f3e958d0df2f06a2f45d5850de11a653788aace27ced533d2" -> "sha256:d004590b9c05e3d42eb3287ccc2610dc289e50e1023d328c790ccb85b605712f" [label=""];
  "sha256:d004590b9c05e3d42eb3287ccc2610dc289e50e1023d328c790ccb85b605712f" -> "sha256:4b7814682be72a18ed559d193dd3140d9ad0af120aab1cd23b01c721dd854d9c" [label=""];
}

