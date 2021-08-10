[app/sources/441017257.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:9021887acc67a6899f3a857dda690199709ca4b3360b1725c3c068a3a4487b81" [label="/bin/sh -c apt -y update" shape="box"];
  "sha256:71139cf8f8054ca60fc395fa9d917ede50e5bfc103bc9f691aa87d47c3c69bfe" [label="/bin/sh -c apt -y upgrade" shape="box"];
  "sha256:cdf4aa83da7ef56bd700dc8ecb1c37ab54695ea09f05094ad582972d7d0b077c" [label="/bin/sh -c apt install -f" shape="box"];
  "sha256:1b2b7aa39453c1158fea11b30248e36916be9112abec51ffae0f36cc58280877" [label="/bin/sh -c apt -yq install nginx" shape="box"];
  "sha256:93d71e542678694f94a544eb8ca7997c4092959949e157a3838fb0e32b723ea7" [label="/bin/sh -c mkdir /www" shape="box"];
  "sha256:fbbce5a3362ee37482423fb04686cda434749873b86fec3f1af78f4d5056a2bb" [label="/bin/sh -c chmod 0777 /www" shape="box"];
  "sha256:d533be35bc808cb796d1f186073c51f1b40e7963887933640df9b5abce900085" [label="local://context" shape="ellipse"];
  "sha256:b5eea18b95fdc5a2bc103cadc190c259216705a8061cdae75448db68e0a1ebbb" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:9f4f722fafd5766d149ce3fe044f2913d854a0be10e8cdf5d6aa1b98cf5991ee" [label="/bin/sh -c chmod 755 /*.sh" shape="box"];
  "sha256:c2dc21a7ef5c5d49fe608475e206f17ea29af1a2058b03ce878051a115e714b3" [label="sha256:c2dc21a7ef5c5d49fe608475e206f17ea29af1a2058b03ce878051a115e714b3" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:9021887acc67a6899f3a857dda690199709ca4b3360b1725c3c068a3a4487b81" [label=""];
  "sha256:9021887acc67a6899f3a857dda690199709ca4b3360b1725c3c068a3a4487b81" -> "sha256:71139cf8f8054ca60fc395fa9d917ede50e5bfc103bc9f691aa87d47c3c69bfe" [label=""];
  "sha256:71139cf8f8054ca60fc395fa9d917ede50e5bfc103bc9f691aa87d47c3c69bfe" -> "sha256:cdf4aa83da7ef56bd700dc8ecb1c37ab54695ea09f05094ad582972d7d0b077c" [label=""];
  "sha256:cdf4aa83da7ef56bd700dc8ecb1c37ab54695ea09f05094ad582972d7d0b077c" -> "sha256:1b2b7aa39453c1158fea11b30248e36916be9112abec51ffae0f36cc58280877" [label=""];
  "sha256:1b2b7aa39453c1158fea11b30248e36916be9112abec51ffae0f36cc58280877" -> "sha256:93d71e542678694f94a544eb8ca7997c4092959949e157a3838fb0e32b723ea7" [label=""];
  "sha256:93d71e542678694f94a544eb8ca7997c4092959949e157a3838fb0e32b723ea7" -> "sha256:fbbce5a3362ee37482423fb04686cda434749873b86fec3f1af78f4d5056a2bb" [label=""];
  "sha256:fbbce5a3362ee37482423fb04686cda434749873b86fec3f1af78f4d5056a2bb" -> "sha256:b5eea18b95fdc5a2bc103cadc190c259216705a8061cdae75448db68e0a1ebbb" [label=""];
  "sha256:d533be35bc808cb796d1f186073c51f1b40e7963887933640df9b5abce900085" -> "sha256:b5eea18b95fdc5a2bc103cadc190c259216705a8061cdae75448db68e0a1ebbb" [label=""];
  "sha256:b5eea18b95fdc5a2bc103cadc190c259216705a8061cdae75448db68e0a1ebbb" -> "sha256:9f4f722fafd5766d149ce3fe044f2913d854a0be10e8cdf5d6aa1b98cf5991ee" [label=""];
  "sha256:9f4f722fafd5766d149ce3fe044f2913d854a0be10e8cdf5d6aa1b98cf5991ee" -> "sha256:c2dc21a7ef5c5d49fe608475e206f17ea29af1a2058b03ce878051a115e714b3" [label=""];
}

