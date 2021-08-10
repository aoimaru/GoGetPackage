[app/sources/324880980.Dockerfile]
digraph {
  "sha256:c639d4d4faf847625066959d577add6e414fa2766b045b4c84d0c8643ad5de55" [label="local://context" shape="ellipse"];
  "sha256:38c7d8f4ca25f84b8598129131d5f96827273ac3e79e1d5f2363ec9bd63c5206" [label="docker-image://docker.io/library/python:3.7-stretch" shape="ellipse"];
  "sha256:9a17a3f570ef43bbd58d59a91582ecc1314458ac3c39055d42c39bacc6412602" [label="copy{src=/requirements.txt, dest=/tmp/requirements.txt}" shape="note"];
  "sha256:b3aab686b4f90b2b2b7f9c53b64a2b883217c9bb7a92ed2c554ddf31947a9619" [label="/bin/sh -c pip install --upgrade -r /tmp/requirements.txt" shape="box"];
  "sha256:aad2719b0881cad208f1502cec355ae6607156d7acaefe41647bf51cd8e8c99d" [label="mkdir{path=/opt/VulntoES}" shape="note"];
  "sha256:d144128534d67904ca27df3e3e277bafdd537a23a8e24fefd512aafff510be8e" [label="copy{src=/VulntoES.py, dest=/opt/VulntoES/}" shape="note"];
  "sha256:da4923077b0ec655532b25d308cc0b3b8a2703af23edf3c5452d6db4274bace3" [label="copy{src=/ingest, dest=/opt/VulntoES/}" shape="note"];
  "sha256:a2a9ea0babb5b7d73d4602983dd4fc1d3f5526e88e3557cd75ff75e40d8decee" [label="sha256:a2a9ea0babb5b7d73d4602983dd4fc1d3f5526e88e3557cd75ff75e40d8decee" shape="plaintext"];
  "sha256:38c7d8f4ca25f84b8598129131d5f96827273ac3e79e1d5f2363ec9bd63c5206" -> "sha256:9a17a3f570ef43bbd58d59a91582ecc1314458ac3c39055d42c39bacc6412602" [label=""];
  "sha256:c639d4d4faf847625066959d577add6e414fa2766b045b4c84d0c8643ad5de55" -> "sha256:9a17a3f570ef43bbd58d59a91582ecc1314458ac3c39055d42c39bacc6412602" [label=""];
  "sha256:9a17a3f570ef43bbd58d59a91582ecc1314458ac3c39055d42c39bacc6412602" -> "sha256:b3aab686b4f90b2b2b7f9c53b64a2b883217c9bb7a92ed2c554ddf31947a9619" [label=""];
  "sha256:b3aab686b4f90b2b2b7f9c53b64a2b883217c9bb7a92ed2c554ddf31947a9619" -> "sha256:aad2719b0881cad208f1502cec355ae6607156d7acaefe41647bf51cd8e8c99d" [label=""];
  "sha256:aad2719b0881cad208f1502cec355ae6607156d7acaefe41647bf51cd8e8c99d" -> "sha256:d144128534d67904ca27df3e3e277bafdd537a23a8e24fefd512aafff510be8e" [label=""];
  "sha256:c639d4d4faf847625066959d577add6e414fa2766b045b4c84d0c8643ad5de55" -> "sha256:d144128534d67904ca27df3e3e277bafdd537a23a8e24fefd512aafff510be8e" [label=""];
  "sha256:d144128534d67904ca27df3e3e277bafdd537a23a8e24fefd512aafff510be8e" -> "sha256:da4923077b0ec655532b25d308cc0b3b8a2703af23edf3c5452d6db4274bace3" [label=""];
  "sha256:c639d4d4faf847625066959d577add6e414fa2766b045b4c84d0c8643ad5de55" -> "sha256:da4923077b0ec655532b25d308cc0b3b8a2703af23edf3c5452d6db4274bace3" [label=""];
  "sha256:da4923077b0ec655532b25d308cc0b3b8a2703af23edf3c5452d6db4274bace3" -> "sha256:a2a9ea0babb5b7d73d4602983dd4fc1d3f5526e88e3557cd75ff75e40d8decee" [label=""];
}

