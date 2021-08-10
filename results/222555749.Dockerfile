[app/sources/222555749.Dockerfile]
digraph {
  "sha256:b33ef471c0dc7bf03dcfa41d54fc3458b3b3e140212f4ed4aadc31fcdfcf85a0" [label="docker-image://docker.io/library/ruby:2.5.1" shape="ellipse"];
  "sha256:54662dfcc163a8c189e82f3dbaddd431f59347fd6df473712725fb5add6138f2" [label="/bin/sh -c gem install slim tilt cuba rack" shape="box"];
  "sha256:243ec801716f19eae8a8f1c1641f22cf7ad89e4f20e348bba02bcb4995429d0e" [label="/bin/sh -c apt-get update && apt-get install --upgrade dnsutils python-pip -y" shape="box"];
  "sha256:bc324d3cfb7bffc0aea5a3840f3c3a4cf92bc78130d23eec59147084fc9b8715" [label="/bin/sh -c pip install requests PyYAML" shape="box"];
  "sha256:a4446096a9b3c72e98610cb2fad3c8c09f3637588f1bba9c505f0b4b84f0f27b" [label="local://context" shape="ellipse"];
  "sha256:294945852c70bd37ec0f08a1323083f87d22ea30603e02cd674dddf0f7072f48" [label="copy{src=/, dest=/apps/}" shape="note"];
  "sha256:dae56b6303f6ef5f9fd1e7356b7453c99c6841c1fb1ef9fb97870437ff8ab406" [label="mkdir{path=/apps/tests}" shape="note"];
  "sha256:5f5a3a54f129d5de6ef9dbcddc17fd3972f2cd4d14448731a7c6fe9cb7d91d60" [label="sha256:5f5a3a54f129d5de6ef9dbcddc17fd3972f2cd4d14448731a7c6fe9cb7d91d60" shape="plaintext"];
  "sha256:b33ef471c0dc7bf03dcfa41d54fc3458b3b3e140212f4ed4aadc31fcdfcf85a0" -> "sha256:54662dfcc163a8c189e82f3dbaddd431f59347fd6df473712725fb5add6138f2" [label=""];
  "sha256:54662dfcc163a8c189e82f3dbaddd431f59347fd6df473712725fb5add6138f2" -> "sha256:243ec801716f19eae8a8f1c1641f22cf7ad89e4f20e348bba02bcb4995429d0e" [label=""];
  "sha256:243ec801716f19eae8a8f1c1641f22cf7ad89e4f20e348bba02bcb4995429d0e" -> "sha256:bc324d3cfb7bffc0aea5a3840f3c3a4cf92bc78130d23eec59147084fc9b8715" [label=""];
  "sha256:bc324d3cfb7bffc0aea5a3840f3c3a4cf92bc78130d23eec59147084fc9b8715" -> "sha256:294945852c70bd37ec0f08a1323083f87d22ea30603e02cd674dddf0f7072f48" [label=""];
  "sha256:a4446096a9b3c72e98610cb2fad3c8c09f3637588f1bba9c505f0b4b84f0f27b" -> "sha256:294945852c70bd37ec0f08a1323083f87d22ea30603e02cd674dddf0f7072f48" [label=""];
  "sha256:294945852c70bd37ec0f08a1323083f87d22ea30603e02cd674dddf0f7072f48" -> "sha256:dae56b6303f6ef5f9fd1e7356b7453c99c6841c1fb1ef9fb97870437ff8ab406" [label=""];
  "sha256:dae56b6303f6ef5f9fd1e7356b7453c99c6841c1fb1ef9fb97870437ff8ab406" -> "sha256:5f5a3a54f129d5de6ef9dbcddc17fd3972f2cd4d14448731a7c6fe9cb7d91d60" [label=""];
}

