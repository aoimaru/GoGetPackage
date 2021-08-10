[app/sources/358386323.Dockerfile]
digraph {
  "sha256:1aeb0e359c38e241a0e724b440c9153af9a52281d3a0aed6c882c4b9e3027264" [label="docker-image://docker.io/faucet/test-base:latest" shape="ellipse"];
  "sha256:8efa42245e1fdc53ce4cb3b4157c9f9e172e3815f5f5e27bcefe380982541e47" [label="local://context" shape="ellipse"];
  "sha256:28f1bf3e56e53b6583d1533adae2e540c00c00b8fcb49845a47c566712fc8b24" [label="copy{src=/, dest=/faucet-src/}" shape="note"];
  "sha256:6bcf160c6025b71b8ecd48b9a27a2675a311bcffb9106630482585347f3a7d31" [label="mkdir{path=/faucet-src}" shape="note"];
  "sha256:361180a29ab50ef84463b4f9e5c4806d4aa313fb8795996c705333272e08b64b" [label="/bin/sh -c apt-get update &&   apt-get install -y afl cython3 &&   $PIP3 -r requirements.txt &&   $PIP3 -r fuzz-requirements.txt &&   $PIP3 ." shape="box"];
  "sha256:070274532c1a4bb1e168030802b16c60a2161f60c2b128bd7a2590cee2470574" [label="sha256:070274532c1a4bb1e168030802b16c60a2161f60c2b128bd7a2590cee2470574" shape="plaintext"];
  "sha256:1aeb0e359c38e241a0e724b440c9153af9a52281d3a0aed6c882c4b9e3027264" -> "sha256:28f1bf3e56e53b6583d1533adae2e540c00c00b8fcb49845a47c566712fc8b24" [label=""];
  "sha256:8efa42245e1fdc53ce4cb3b4157c9f9e172e3815f5f5e27bcefe380982541e47" -> "sha256:28f1bf3e56e53b6583d1533adae2e540c00c00b8fcb49845a47c566712fc8b24" [label=""];
  "sha256:28f1bf3e56e53b6583d1533adae2e540c00c00b8fcb49845a47c566712fc8b24" -> "sha256:6bcf160c6025b71b8ecd48b9a27a2675a311bcffb9106630482585347f3a7d31" [label=""];
  "sha256:6bcf160c6025b71b8ecd48b9a27a2675a311bcffb9106630482585347f3a7d31" -> "sha256:361180a29ab50ef84463b4f9e5c4806d4aa313fb8795996c705333272e08b64b" [label=""];
  "sha256:361180a29ab50ef84463b4f9e5c4806d4aa313fb8795996c705333272e08b64b" -> "sha256:070274532c1a4bb1e168030802b16c60a2161f60c2b128bd7a2590cee2470574" [label=""];
}

