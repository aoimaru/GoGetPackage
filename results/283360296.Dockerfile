[app/sources/283360296.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:1eed26274bc17b3123e39ea8e0e57bd4431d7079913019871b2d6cf4f6e4c846" [label="/bin/sh -c apt-get update   && apt-get install -y ca-certificates git vim bash curl openssh-client python3-pip python3   && pip3 install requests html-testRunner html-testRunner" shape="box"];
  "sha256:faaf2af579cf7d2005dae391e8fae233e224418d7ddda716323db1506410ce52" [label="https://storage.googleapis.com/kubernetes-helm/helm-v2.10.0-linux-amd64.tar.gz" shape="ellipse"];
  "sha256:4ec622f7f7adf032d6bef2aa560b5b9dbd42daf48d40258bdcd563af18d09e29" [label="copy{src=/helm-v2.10.0-linux-amd64.tar.gz, dest=/tmp}" shape="note"];
  "sha256:c8cfda4ca4ede89bcffc0bc74168fecf6238a441fe6d4adda582c9c2c645383f" [label="https://storage.googleapis.com/kubernetes-release/release/v1.11.2/bin/linux/amd64/kubectl" shape="ellipse"];
  "sha256:8280b564eead31962ffaa9b7d23db68774fa5d8492cef5dccd7d80989e993b9b" [label="copy{src=/kubectl, dest=/bin/}" shape="note"];
  "sha256:cf8581fc30e661e483a54edce8ec9b11787cc041483333a5b33b4a040a0f3288" [label="https://raw.githubusercontent.com/ahmetb/kubectx/master/kubens" shape="ellipse"];
  "sha256:6548468f1dc5112e9b6c5ccb1945a61cd9a31c37c05f24c0504f6e5e874ed325" [label="copy{src=/kubens, dest=/bin/}" shape="note"];
  "sha256:afcf2ca352c3d070b47af57e69dfda49d7ea697e8c113a7d1e8f9d33e0c6c38a" [label="https://raw.githubusercontent.com/ahmetb/kubectx/master/kubectx" shape="ellipse"];
  "sha256:b5671f997dc3fdbdc1edf57964ef9c84accf274f15f8402de2458186ce032817" [label="copy{src=/kubectx, dest=/bin/}" shape="note"];
  "sha256:04e0c109942add2967611c08f8b7d02313ddb80efd2b2832393eb63dae491b75" [label="/bin/sh -c tar -zxvf /tmp/helm*.tar.gz -C /tmp   && mv /tmp/linux-amd64/helm /bin/helm   && chmod +x  /bin/*   && rm -rf /tmp   && mkdir -p /opt/toolbox/bin   && git config --global user.email \"forgeops-auto-export@forgerock.net\"   && git config --global user.name \"ForgeRock Auto export user\"   && helm init --client-only" shape="box"];
  "sha256:d799921e2e8bd536b150ca22ac9090329349c985f66889da4e1011b4cb3b9a42" [label="/bin/sh -c mkdir forgeops-ui" shape="box"];
  "sha256:44bd17818a33e31dd08b5c4c453628f9ac3bde176feadce1319811695aa8fdb6" [label="local://context" shape="ellipse"];
  "sha256:2fe7cbb8a407873b06f12b5451ecb2e25071665d20beee5a752fd2c35f34ba15" [label="copy{src=/*.sh, dest=/}" shape="note"];
  "sha256:e86ea39a50f2f37c23f7518315d48ce7a4fc786cea79c6ec7b2d15194d32fa63" [label="copy{src=/requirements.txt, dest=/}" shape="note"];
  "sha256:f8cdb792ec278e3ba8e625206ce129352492be533010be868d0d9b77783d31f3" [label="copy{src=/app, dest=/forgeops-ui/app}" shape="note"];
  "sha256:cc84f63fecab84cb97e8e9867f0b515548b8c86095c042cb9c65a1eef2a6bb7a" [label="copy{src=/foui.py, dest=/forgeops-ui/}" shape="note"];
  "sha256:de3eec16ea80eca2e838a21407322ed39b08d7922c24a6cfa070df8108c0c333" [label="/bin/sh -c pip3 install -r requirements.txt" shape="box"];
  "sha256:8d6468502b5b77201244e66c2fdecf58a8a31bb3538c04a3e04eb71b04e190b6" [label="sha256:8d6468502b5b77201244e66c2fdecf58a8a31bb3538c04a3e04eb71b04e190b6" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:1eed26274bc17b3123e39ea8e0e57bd4431d7079913019871b2d6cf4f6e4c846" [label=""];
  "sha256:1eed26274bc17b3123e39ea8e0e57bd4431d7079913019871b2d6cf4f6e4c846" -> "sha256:4ec622f7f7adf032d6bef2aa560b5b9dbd42daf48d40258bdcd563af18d09e29" [label=""];
  "sha256:faaf2af579cf7d2005dae391e8fae233e224418d7ddda716323db1506410ce52" -> "sha256:4ec622f7f7adf032d6bef2aa560b5b9dbd42daf48d40258bdcd563af18d09e29" [label=""];
  "sha256:4ec622f7f7adf032d6bef2aa560b5b9dbd42daf48d40258bdcd563af18d09e29" -> "sha256:8280b564eead31962ffaa9b7d23db68774fa5d8492cef5dccd7d80989e993b9b" [label=""];
  "sha256:c8cfda4ca4ede89bcffc0bc74168fecf6238a441fe6d4adda582c9c2c645383f" -> "sha256:8280b564eead31962ffaa9b7d23db68774fa5d8492cef5dccd7d80989e993b9b" [label=""];
  "sha256:8280b564eead31962ffaa9b7d23db68774fa5d8492cef5dccd7d80989e993b9b" -> "sha256:6548468f1dc5112e9b6c5ccb1945a61cd9a31c37c05f24c0504f6e5e874ed325" [label=""];
  "sha256:cf8581fc30e661e483a54edce8ec9b11787cc041483333a5b33b4a040a0f3288" -> "sha256:6548468f1dc5112e9b6c5ccb1945a61cd9a31c37c05f24c0504f6e5e874ed325" [label=""];
  "sha256:6548468f1dc5112e9b6c5ccb1945a61cd9a31c37c05f24c0504f6e5e874ed325" -> "sha256:b5671f997dc3fdbdc1edf57964ef9c84accf274f15f8402de2458186ce032817" [label=""];
  "sha256:afcf2ca352c3d070b47af57e69dfda49d7ea697e8c113a7d1e8f9d33e0c6c38a" -> "sha256:b5671f997dc3fdbdc1edf57964ef9c84accf274f15f8402de2458186ce032817" [label=""];
  "sha256:b5671f997dc3fdbdc1edf57964ef9c84accf274f15f8402de2458186ce032817" -> "sha256:04e0c109942add2967611c08f8b7d02313ddb80efd2b2832393eb63dae491b75" [label=""];
  "sha256:04e0c109942add2967611c08f8b7d02313ddb80efd2b2832393eb63dae491b75" -> "sha256:d799921e2e8bd536b150ca22ac9090329349c985f66889da4e1011b4cb3b9a42" [label=""];
  "sha256:d799921e2e8bd536b150ca22ac9090329349c985f66889da4e1011b4cb3b9a42" -> "sha256:2fe7cbb8a407873b06f12b5451ecb2e25071665d20beee5a752fd2c35f34ba15" [label=""];
  "sha256:44bd17818a33e31dd08b5c4c453628f9ac3bde176feadce1319811695aa8fdb6" -> "sha256:2fe7cbb8a407873b06f12b5451ecb2e25071665d20beee5a752fd2c35f34ba15" [label=""];
  "sha256:2fe7cbb8a407873b06f12b5451ecb2e25071665d20beee5a752fd2c35f34ba15" -> "sha256:e86ea39a50f2f37c23f7518315d48ce7a4fc786cea79c6ec7b2d15194d32fa63" [label=""];
  "sha256:44bd17818a33e31dd08b5c4c453628f9ac3bde176feadce1319811695aa8fdb6" -> "sha256:e86ea39a50f2f37c23f7518315d48ce7a4fc786cea79c6ec7b2d15194d32fa63" [label=""];
  "sha256:e86ea39a50f2f37c23f7518315d48ce7a4fc786cea79c6ec7b2d15194d32fa63" -> "sha256:f8cdb792ec278e3ba8e625206ce129352492be533010be868d0d9b77783d31f3" [label=""];
  "sha256:44bd17818a33e31dd08b5c4c453628f9ac3bde176feadce1319811695aa8fdb6" -> "sha256:f8cdb792ec278e3ba8e625206ce129352492be533010be868d0d9b77783d31f3" [label=""];
  "sha256:f8cdb792ec278e3ba8e625206ce129352492be533010be868d0d9b77783d31f3" -> "sha256:cc84f63fecab84cb97e8e9867f0b515548b8c86095c042cb9c65a1eef2a6bb7a" [label=""];
  "sha256:44bd17818a33e31dd08b5c4c453628f9ac3bde176feadce1319811695aa8fdb6" -> "sha256:cc84f63fecab84cb97e8e9867f0b515548b8c86095c042cb9c65a1eef2a6bb7a" [label=""];
  "sha256:cc84f63fecab84cb97e8e9867f0b515548b8c86095c042cb9c65a1eef2a6bb7a" -> "sha256:de3eec16ea80eca2e838a21407322ed39b08d7922c24a6cfa070df8108c0c333" [label=""];
  "sha256:de3eec16ea80eca2e838a21407322ed39b08d7922c24a6cfa070df8108c0c333" -> "sha256:8d6468502b5b77201244e66c2fdecf58a8a31bb3538c04a3e04eb71b04e190b6" [label=""];
}

