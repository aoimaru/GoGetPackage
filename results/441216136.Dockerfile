[app/sources/441216136.Dockerfile]
digraph {
  "sha256:96291e2e8da92fde05e9a32267840fa531ac4898a5544403ed47effbfdb7671d" [label="docker-image://docker.io/i386/ubuntu:xenial@sha256:2acaf9eb4e50288bbb05b8238115b0cbf6f530985f2f9fc4c990224b8fa2b175" shape="ellipse"];
  "sha256:fc73fc99e36d17eeb0c1474e5443f0a8056a80cef3e5e91345b9ed084674ebbd" [label="/bin/sh -c adduser --disabled-password --gecos '' ctf" shape="box"];
  "sha256:522231fface99902af161fbf488ad40c2141c4e3d6b5514dff0c987a0f4c0f7f" [label="/bin/sh -c apt-get update && apt-get install -y xinetd" shape="box"];
  "sha256:90406e1a86266098537cde60961e3e436ef5dc23d2596b3271c6198e12c2ed5f" [label="mkdir{path=/home/ctf}" shape="note"];
  "sha256:df027b1c3bb8cc240adfb3d765f7fe6ae89de98469041e1c315b4f46bebbde85" [label="local://context" shape="ellipse"];
  "sha256:3848eee31c37c3d267824c372e9aafaf727af0eb745799632d45fdf934b3adc8" [label="copy{src=/src/flag.txt, dest=/home/ctf}" shape="note"];
  "sha256:75c1dcc56138e91037fca4db60505932a8eaab739435b157a8b5a83aef0e1213" [label="/bin/sh -c chown root.root /home/ctf/flag.txt" shape="box"];
  "sha256:1d26867a23455d255fd07c7c8472b9cf3e005f394ec9cb5cd3a9c8daaee05e02" [label="/bin/sh -c chmod 0644 /home/ctf/flag.txt" shape="box"];
  "sha256:aa9ce14571da783962a0d0e6628d9105fdef0fffa382157494e16bfbe0057313" [label="copy{src=/src/runit, dest=/home/ctf/}" shape="note"];
  "sha256:e2a40517adc17039441c036194a4f1bdf753b04ac79cef9e04c232dc958b086d" [label="/bin/sh -c chown root.root /home/ctf/runit" shape="box"];
  "sha256:02fc2f44e5c759714b0041872cda7a5374b1df4a01de6ecd53aa82f37c26e2b4" [label="/bin/sh -c chmod 0755 /home/ctf/runit" shape="box"];
  "sha256:583ba62a1e762b2baf1bb20fcfa6f68f63a40c22ceedd3db1e152effed7af448" [label="copy{src=/xinetd.conf, dest=/etc/xinetd.conf}" shape="note"];
  "sha256:a16a22eaf6be40a8ca48b22bfc69798dca26dce8f430fdb9136ada2f162007a4" [label="/bin/sh -c mkdir /var/log/xinetd/" shape="box"];
  "sha256:2923f440161d62e840acb5a83237fc10685115cd98cc6ac2d5e6bf2aa3d9b332" [label="copy{src=/runit.xinetd, dest=/etc/xinetd.d/runit}" shape="note"];
  "sha256:6bbaf5f376f7e477f369c92e4577771fa8e078c55c54a51af3035929bc50d489" [label="sha256:6bbaf5f376f7e477f369c92e4577771fa8e078c55c54a51af3035929bc50d489" shape="plaintext"];
  "sha256:96291e2e8da92fde05e9a32267840fa531ac4898a5544403ed47effbfdb7671d" -> "sha256:fc73fc99e36d17eeb0c1474e5443f0a8056a80cef3e5e91345b9ed084674ebbd" [label=""];
  "sha256:fc73fc99e36d17eeb0c1474e5443f0a8056a80cef3e5e91345b9ed084674ebbd" -> "sha256:522231fface99902af161fbf488ad40c2141c4e3d6b5514dff0c987a0f4c0f7f" [label=""];
  "sha256:522231fface99902af161fbf488ad40c2141c4e3d6b5514dff0c987a0f4c0f7f" -> "sha256:90406e1a86266098537cde60961e3e436ef5dc23d2596b3271c6198e12c2ed5f" [label=""];
  "sha256:90406e1a86266098537cde60961e3e436ef5dc23d2596b3271c6198e12c2ed5f" -> "sha256:3848eee31c37c3d267824c372e9aafaf727af0eb745799632d45fdf934b3adc8" [label=""];
  "sha256:df027b1c3bb8cc240adfb3d765f7fe6ae89de98469041e1c315b4f46bebbde85" -> "sha256:3848eee31c37c3d267824c372e9aafaf727af0eb745799632d45fdf934b3adc8" [label=""];
  "sha256:3848eee31c37c3d267824c372e9aafaf727af0eb745799632d45fdf934b3adc8" -> "sha256:75c1dcc56138e91037fca4db60505932a8eaab739435b157a8b5a83aef0e1213" [label=""];
  "sha256:75c1dcc56138e91037fca4db60505932a8eaab739435b157a8b5a83aef0e1213" -> "sha256:1d26867a23455d255fd07c7c8472b9cf3e005f394ec9cb5cd3a9c8daaee05e02" [label=""];
  "sha256:1d26867a23455d255fd07c7c8472b9cf3e005f394ec9cb5cd3a9c8daaee05e02" -> "sha256:aa9ce14571da783962a0d0e6628d9105fdef0fffa382157494e16bfbe0057313" [label=""];
  "sha256:df027b1c3bb8cc240adfb3d765f7fe6ae89de98469041e1c315b4f46bebbde85" -> "sha256:aa9ce14571da783962a0d0e6628d9105fdef0fffa382157494e16bfbe0057313" [label=""];
  "sha256:aa9ce14571da783962a0d0e6628d9105fdef0fffa382157494e16bfbe0057313" -> "sha256:e2a40517adc17039441c036194a4f1bdf753b04ac79cef9e04c232dc958b086d" [label=""];
  "sha256:e2a40517adc17039441c036194a4f1bdf753b04ac79cef9e04c232dc958b086d" -> "sha256:02fc2f44e5c759714b0041872cda7a5374b1df4a01de6ecd53aa82f37c26e2b4" [label=""];
  "sha256:02fc2f44e5c759714b0041872cda7a5374b1df4a01de6ecd53aa82f37c26e2b4" -> "sha256:583ba62a1e762b2baf1bb20fcfa6f68f63a40c22ceedd3db1e152effed7af448" [label=""];
  "sha256:df027b1c3bb8cc240adfb3d765f7fe6ae89de98469041e1c315b4f46bebbde85" -> "sha256:583ba62a1e762b2baf1bb20fcfa6f68f63a40c22ceedd3db1e152effed7af448" [label=""];
  "sha256:583ba62a1e762b2baf1bb20fcfa6f68f63a40c22ceedd3db1e152effed7af448" -> "sha256:a16a22eaf6be40a8ca48b22bfc69798dca26dce8f430fdb9136ada2f162007a4" [label=""];
  "sha256:a16a22eaf6be40a8ca48b22bfc69798dca26dce8f430fdb9136ada2f162007a4" -> "sha256:2923f440161d62e840acb5a83237fc10685115cd98cc6ac2d5e6bf2aa3d9b332" [label=""];
  "sha256:df027b1c3bb8cc240adfb3d765f7fe6ae89de98469041e1c315b4f46bebbde85" -> "sha256:2923f440161d62e840acb5a83237fc10685115cd98cc6ac2d5e6bf2aa3d9b332" [label=""];
  "sha256:2923f440161d62e840acb5a83237fc10685115cd98cc6ac2d5e6bf2aa3d9b332" -> "sha256:6bbaf5f376f7e477f369c92e4577771fa8e078c55c54a51af3035929bc50d489" [label=""];
}

