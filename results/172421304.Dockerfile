[app/sources/172421304.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:255b69c6c4422db0426ff313dee48c55fae35bccca4803c081df81d6119a9a7d" [label="/bin/sh -c apt-get update &&     apt-get install -y gcc ca-certificates git wget curl vim less file &&     rm -f /bin/sh && ln -s /bin/bash /bin/sh" shape="box"];
  "sha256:f1f623c076f8be4aed92857d14c8fac49e650a02d77857aace9a12cd0a961a95" [label="/bin/sh -c wget -O - ${!DOCKER_URL} > /usr/bin/docker && chmod +x /usr/bin/docker" shape="box"];
  "sha256:5aae1e9ce35f5ca178d3ac180213ae1ccaf95f2ae7c3a3ccb4a6baf2fa05316a" [label="/bin/sh -c wget -O - https://storage.googleapis.com/golang/go1.7.linux-${!GOLANG_ARCH}.tar.gz | tar -xzf - -C /usr/local &&     go get github.com/rancher/trash && go get github.com/golang/lint/golint" shape="box"];
  "sha256:129a022b1bd9f9deaf827bf4b89adf25f0ea098fa2f5422241c9ae4f2fe6cd39" [label="/bin/sh -c apt-get install -y iptables" shape="box"];
  "sha256:4298101d6c6bd5efe7ae2d60344aadea5796cbcc4d98423ea3454e0950430a78" [label="local://context" shape="ellipse"];
  "sha256:37224dd19007db72d0dad563ba5775d3dbbbf379f2a29b7344bf098af4c308ad" [label="copy{src=/scripts/wrapdocker, dest=/usr/local/bin/}" shape="note"];
  "sha256:a833f1daf345dfb9eacab8918c70988001325264861e10ffe6a27419b71869da" [label="mkdir{path=/go/src/github.com/rancher/host-api}" shape="note"];
  "sha256:62cae925fc5cf698d585698875c7992dc4595e293728da2ad7de98c8c2407d41" [label="sha256:62cae925fc5cf698d585698875c7992dc4595e293728da2ad7de98c8c2407d41" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:255b69c6c4422db0426ff313dee48c55fae35bccca4803c081df81d6119a9a7d" [label=""];
  "sha256:255b69c6c4422db0426ff313dee48c55fae35bccca4803c081df81d6119a9a7d" -> "sha256:f1f623c076f8be4aed92857d14c8fac49e650a02d77857aace9a12cd0a961a95" [label=""];
  "sha256:f1f623c076f8be4aed92857d14c8fac49e650a02d77857aace9a12cd0a961a95" -> "sha256:5aae1e9ce35f5ca178d3ac180213ae1ccaf95f2ae7c3a3ccb4a6baf2fa05316a" [label=""];
  "sha256:5aae1e9ce35f5ca178d3ac180213ae1ccaf95f2ae7c3a3ccb4a6baf2fa05316a" -> "sha256:129a022b1bd9f9deaf827bf4b89adf25f0ea098fa2f5422241c9ae4f2fe6cd39" [label=""];
  "sha256:129a022b1bd9f9deaf827bf4b89adf25f0ea098fa2f5422241c9ae4f2fe6cd39" -> "sha256:37224dd19007db72d0dad563ba5775d3dbbbf379f2a29b7344bf098af4c308ad" [label=""];
  "sha256:4298101d6c6bd5efe7ae2d60344aadea5796cbcc4d98423ea3454e0950430a78" -> "sha256:37224dd19007db72d0dad563ba5775d3dbbbf379f2a29b7344bf098af4c308ad" [label=""];
  "sha256:37224dd19007db72d0dad563ba5775d3dbbbf379f2a29b7344bf098af4c308ad" -> "sha256:a833f1daf345dfb9eacab8918c70988001325264861e10ffe6a27419b71869da" [label=""];
  "sha256:a833f1daf345dfb9eacab8918c70988001325264861e10ffe6a27419b71869da" -> "sha256:62cae925fc5cf698d585698875c7992dc4595e293728da2ad7de98c8c2407d41" [label=""];
}

