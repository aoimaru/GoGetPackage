[app/sources/220320412.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:a645b4e1b447986b92945620b40c1e00a7b09eec5864bbebdf53844d29c8818d" [label="local://context" shape="ellipse"];
  "sha256:e5f8316f6d601f9c05b2af9b419c598edc8fd62c45672e2f19a1c770262f9c8b" [label="copy{src=/requirements.txt, dest=/package/},copy{src=/setup.py, dest=/package/}" shape="note"];
  "sha256:c9ecf9a35b19fda9832d49340e37da927a320ef2dfb11708b1ade45fac19b4d3" [label="copy{src=/tmsc, dest=/package/tmsc}" shape="note"];
  "sha256:6613c18aa3ba857d480675cd6f32c00ca93b3eb95ce63a0f2a4506f06dd773a4" [label="/bin/sh -c apt-get update &&     apt-get install -y git python3 python3-dev libxml2 libxml2-dev make gcc g++ curl &&     apt-get clean &&     curl https://bootstrap.pypa.io/get-pip.py | python3 &&     pip3 install --no-cache-dir -r package/requirements.txt &&     apt-get remove -y python3-dev libxml2-dev make gcc g++ curl &&     apt-get autoremove -y" shape="box"];
  "sha256:e491a5020b19d062abccda28dddf1007509d069bfef13050457425b06c7aa8e4" [label="/bin/sh -c pip3 install --no-cache-dir ./package && rm -rf package" shape="box"];
  "sha256:c5b575b1fee5a881843e86eeaaf3e7f8dd89a1d75353a1659cecca283301126a" [label="sha256:c5b575b1fee5a881843e86eeaaf3e7f8dd89a1d75353a1659cecca283301126a" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:e5f8316f6d601f9c05b2af9b419c598edc8fd62c45672e2f19a1c770262f9c8b" [label=""];
  "sha256:a645b4e1b447986b92945620b40c1e00a7b09eec5864bbebdf53844d29c8818d" -> "sha256:e5f8316f6d601f9c05b2af9b419c598edc8fd62c45672e2f19a1c770262f9c8b" [label=""];
  "sha256:e5f8316f6d601f9c05b2af9b419c598edc8fd62c45672e2f19a1c770262f9c8b" -> "sha256:c9ecf9a35b19fda9832d49340e37da927a320ef2dfb11708b1ade45fac19b4d3" [label=""];
  "sha256:a645b4e1b447986b92945620b40c1e00a7b09eec5864bbebdf53844d29c8818d" -> "sha256:c9ecf9a35b19fda9832d49340e37da927a320ef2dfb11708b1ade45fac19b4d3" [label=""];
  "sha256:c9ecf9a35b19fda9832d49340e37da927a320ef2dfb11708b1ade45fac19b4d3" -> "sha256:6613c18aa3ba857d480675cd6f32c00ca93b3eb95ce63a0f2a4506f06dd773a4" [label=""];
  "sha256:6613c18aa3ba857d480675cd6f32c00ca93b3eb95ce63a0f2a4506f06dd773a4" -> "sha256:e491a5020b19d062abccda28dddf1007509d069bfef13050457425b06c7aa8e4" [label=""];
  "sha256:e491a5020b19d062abccda28dddf1007509d069bfef13050457425b06c7aa8e4" -> "sha256:c5b575b1fee5a881843e86eeaaf3e7f8dd89a1d75353a1659cecca283301126a" [label=""];
}

