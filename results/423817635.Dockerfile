[app/sources/423817635.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:69c677b0927a1ee753ab2a8187a3748a8798a10447b11b130eb1b5287644c0e0" [label="/bin/sh -c apt-get update -y &&     apt-get install -y wget                    curl                    python                    git" shape="box"];
  "sha256:e0f6c7b435b30cdd57048474c1f0bf94f4e614e85c165cfa6516821160c4fda2" [label="/bin/sh -c curl https://bootstrap.pypa.io/get-pip.py | python - &&     pip install msgen==0.9.0" shape="box"];
  "sha256:6fac63c26fc8462f9173edb30f9605a8ebca2fc7c248c9bf8a8d8aa2e32958c1" [label="sha256:6fac63c26fc8462f9173edb30f9605a8ebca2fc7c248c9bf8a8d8aa2e32958c1" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:69c677b0927a1ee753ab2a8187a3748a8798a10447b11b130eb1b5287644c0e0" [label=""];
  "sha256:69c677b0927a1ee753ab2a8187a3748a8798a10447b11b130eb1b5287644c0e0" -> "sha256:e0f6c7b435b30cdd57048474c1f0bf94f4e614e85c165cfa6516821160c4fda2" [label=""];
  "sha256:e0f6c7b435b30cdd57048474c1f0bf94f4e614e85c165cfa6516821160c4fda2" -> "sha256:6fac63c26fc8462f9173edb30f9605a8ebca2fc7c248c9bf8a8d8aa2e32958c1" [label=""];
}

