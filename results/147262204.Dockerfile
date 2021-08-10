[app/sources/147262204.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:58abdef0ceb39c53ff5a9ad8085ce95548d6aa3ed3eeab7d11170b7940919ea4" [label="/bin/sh -c apt-get update && apt-get upgrade -y && apt-get install --no-install-recommends -y     python3     socat  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4d4254e8dd2c2bb75f4b2dbcdb96d2c5f1867063b222208a3acb3483320c6315" [label="local://context" shape="ellipse"];
  "sha256:9d0951315bed0e566b612eca96fcef73b45522f587546d6a25a60f2ed986c39a" [label="copy{src=/cerberus.py, dest=/}" shape="note"];
  "sha256:880d6ea79d12aea97aeb8723a756a103de4a2ee92c93095c680e098915ea6de9" [label="sha256:880d6ea79d12aea97aeb8723a756a103de4a2ee92c93095c680e098915ea6de9" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:58abdef0ceb39c53ff5a9ad8085ce95548d6aa3ed3eeab7d11170b7940919ea4" [label=""];
  "sha256:58abdef0ceb39c53ff5a9ad8085ce95548d6aa3ed3eeab7d11170b7940919ea4" -> "sha256:9d0951315bed0e566b612eca96fcef73b45522f587546d6a25a60f2ed986c39a" [label=""];
  "sha256:4d4254e8dd2c2bb75f4b2dbcdb96d2c5f1867063b222208a3acb3483320c6315" -> "sha256:9d0951315bed0e566b612eca96fcef73b45522f587546d6a25a60f2ed986c39a" [label=""];
  "sha256:9d0951315bed0e566b612eca96fcef73b45522f587546d6a25a60f2ed986c39a" -> "sha256:880d6ea79d12aea97aeb8723a756a103de4a2ee92c93095c680e098915ea6de9" [label=""];
}

