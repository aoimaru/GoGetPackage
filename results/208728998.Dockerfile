[app/sources/208728998.Dockerfile]
digraph {
  "sha256:14b11f43a6960ebcbf2d45325914f9c78dee525ac8e233a07bdf390c74008718" [label="docker-image://docker.io/library/ubuntu:12.04.5@sha256:18305429afa14ea462f810146ba44d4363ae76e4c8dfc38288cf73aa07485005" shape="ellipse"];
  "sha256:784c5bd295d87d96cc796bb105c165b58f90da76007294a01353df69836ba5e8" [label="/bin/sh -c apt-get update -y" shape="box"];
  "sha256:b1c418538116047ee60c5484c32fc3f44219b4a52006f004f33dcae38334a21a" [label="/bin/sh -c apt-get install python-software-properties -y" shape="box"];
  "sha256:f471e9f2bde864af1c07173d1a7b8a8ab9b302ce98edb85e5127c4b4720fb397" [label="/bin/sh -c add-apt-repository ppa:fcavalieri/zorba -y" shape="box"];
  "sha256:e081937c6946b285c85ab8b0bbc7baba6c6dcd9a0a64eccc683d67f88d684fd2" [label="/bin/sh -c apt-get update -y" shape="box"];
  "sha256:d0c6ba7361163d2183defb159bb60ee9908b5af34128b4ec8104c7a8d29080ad" [label="/bin/sh -c apt-get install zorba.* -y" shape="box"];
  "sha256:049c020d407468633361a1c4d06196f0bf23efac3856224d2067fc83eca4723c" [label="mkdir{path=/queries}" shape="note"];
  "sha256:8bd20bd963baf0f483fa17dd4a253fff43959011b564a9df6b31e1d54c3f052e" [label="sha256:8bd20bd963baf0f483fa17dd4a253fff43959011b564a9df6b31e1d54c3f052e" shape="plaintext"];
  "sha256:14b11f43a6960ebcbf2d45325914f9c78dee525ac8e233a07bdf390c74008718" -> "sha256:784c5bd295d87d96cc796bb105c165b58f90da76007294a01353df69836ba5e8" [label=""];
  "sha256:784c5bd295d87d96cc796bb105c165b58f90da76007294a01353df69836ba5e8" -> "sha256:b1c418538116047ee60c5484c32fc3f44219b4a52006f004f33dcae38334a21a" [label=""];
  "sha256:b1c418538116047ee60c5484c32fc3f44219b4a52006f004f33dcae38334a21a" -> "sha256:f471e9f2bde864af1c07173d1a7b8a8ab9b302ce98edb85e5127c4b4720fb397" [label=""];
  "sha256:f471e9f2bde864af1c07173d1a7b8a8ab9b302ce98edb85e5127c4b4720fb397" -> "sha256:e081937c6946b285c85ab8b0bbc7baba6c6dcd9a0a64eccc683d67f88d684fd2" [label=""];
  "sha256:e081937c6946b285c85ab8b0bbc7baba6c6dcd9a0a64eccc683d67f88d684fd2" -> "sha256:d0c6ba7361163d2183defb159bb60ee9908b5af34128b4ec8104c7a8d29080ad" [label=""];
  "sha256:d0c6ba7361163d2183defb159bb60ee9908b5af34128b4ec8104c7a8d29080ad" -> "sha256:049c020d407468633361a1c4d06196f0bf23efac3856224d2067fc83eca4723c" [label=""];
  "sha256:049c020d407468633361a1c4d06196f0bf23efac3856224d2067fc83eca4723c" -> "sha256:8bd20bd963baf0f483fa17dd4a253fff43959011b564a9df6b31e1d54c3f052e" [label=""];
}

