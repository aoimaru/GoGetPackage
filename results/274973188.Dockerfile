[app/sources/274973188.Dockerfile]
digraph {
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:b7557f14dc3ae34c7e99fd3fd7eacc0c69a2bc77e634593a9098d12c71cf014d" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     apt-transport-https     ca-certificates     curl     iproute2     iputils-ping     systemd  &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d4088884a10abf65255e2d7c891746acb7fa1e13798f00be2ae4afac5816abe4" [label="/bin/sh -c curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list > ./microsoft-prod.list &&     cp ./microsoft-prod.list /etc/apt/sources.list.d/ &&     curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg &&     cp ./microsoft.gpg /etc/apt/trusted.gpg.d/" shape="box"];
  "sha256:b95d7c39daa2d1e5345433102980aabd5bda8e339e742910b4dd4a2127a7e24f" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     moby-cli     moby-engine &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7663c9e746b29341879f4bf95b91dbfb943822448e2cf75db0f56eafef06210b" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     iotedge &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:30a8ecb676b7e63f2ac2fdbb739c39da72319c622ce2d85d203892dc2d9a9bec" [label="local://context" shape="ellipse"];
  "sha256:5033f9161d4c531f329d10dee0792c7991e5f0f42966e41b1ac67604ddeff5f8" [label="copy{src=/rund.sh, dest=/rund.sh}" shape="note"];
  "sha256:dbeacf840c847715e82ce47c26cd46030ae5b2582c88b54e79409c2b17e219e6" [label="/bin/sh -c sed -i 's/\\r//' ./rund.sh &&     chmod u+x rund.sh" shape="box"];
  "sha256:3ffa3227f4940faccd8231a5c0c6af3cf770c02177382428ad9399fa353e2973" [label="sha256:3ffa3227f4940faccd8231a5c0c6af3cf770c02177382428ad9399fa353e2973" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:b7557f14dc3ae34c7e99fd3fd7eacc0c69a2bc77e634593a9098d12c71cf014d" [label=""];
  "sha256:b7557f14dc3ae34c7e99fd3fd7eacc0c69a2bc77e634593a9098d12c71cf014d" -> "sha256:d4088884a10abf65255e2d7c891746acb7fa1e13798f00be2ae4afac5816abe4" [label=""];
  "sha256:d4088884a10abf65255e2d7c891746acb7fa1e13798f00be2ae4afac5816abe4" -> "sha256:b95d7c39daa2d1e5345433102980aabd5bda8e339e742910b4dd4a2127a7e24f" [label=""];
  "sha256:b95d7c39daa2d1e5345433102980aabd5bda8e339e742910b4dd4a2127a7e24f" -> "sha256:7663c9e746b29341879f4bf95b91dbfb943822448e2cf75db0f56eafef06210b" [label=""];
  "sha256:7663c9e746b29341879f4bf95b91dbfb943822448e2cf75db0f56eafef06210b" -> "sha256:5033f9161d4c531f329d10dee0792c7991e5f0f42966e41b1ac67604ddeff5f8" [label=""];
  "sha256:30a8ecb676b7e63f2ac2fdbb739c39da72319c622ce2d85d203892dc2d9a9bec" -> "sha256:5033f9161d4c531f329d10dee0792c7991e5f0f42966e41b1ac67604ddeff5f8" [label=""];
  "sha256:5033f9161d4c531f329d10dee0792c7991e5f0f42966e41b1ac67604ddeff5f8" -> "sha256:dbeacf840c847715e82ce47c26cd46030ae5b2582c88b54e79409c2b17e219e6" [label=""];
  "sha256:dbeacf840c847715e82ce47c26cd46030ae5b2582c88b54e79409c2b17e219e6" -> "sha256:3ffa3227f4940faccd8231a5c0c6af3cf770c02177382428ad9399fa353e2973" [label=""];
}

