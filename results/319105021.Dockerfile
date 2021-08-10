[app/sources/319105021.Dockerfile]
digraph {
  "sha256:4225a22b17b0c7155907f16e1b196360d9628a9ecb87be0e20c1dc9886c5ddbb" [label="docker-image://registry.svc.ci.openshift.org/ocp/builder:golang-1.10" shape="ellipse"];
  "sha256:3d72328a5287f1d12cadfda7d4cd9b514b283cd7b63ec32841993da3a3155178" [label="mkdir{path=/go/src/github.com/openshift/installer}" shape="note"];
  "sha256:45971a12d8915ae7381c4923bf0ed7c4eb1f53ca75001f9d5f30367998e84e1d" [label="local://context" shape="ellipse"];
  "sha256:3a9546652fbd3851a4b9b7359e1beb1c63b3c15a4d635a017a9524068936e67a" [label="copy{src=/, dest=/go/src/github.com/openshift/installer/}" shape="note"];
  "sha256:15b1d98c58d4af5dc9ad0816cb9ef1e25eec9ce7a3ce4143003972ad8f4b298d" [label="/bin/sh -c hack/build.sh" shape="box"];
  "sha256:d551b1f9c83fa02cbc464dc92f0ff80bf4f877c76a8674b08983b142dadd15ec" [label="docker-image://registry.svc.ci.openshift.org/ocp/4.1:base" shape="ellipse"];
  "sha256:b79486ca2454ece267d6c714543b1b668d2a46e402c51d5035533459669552b3" [label="docker-image://registry.svc.ci.openshift.org/ocp/4.1:cli" shape="ellipse"];
  "sha256:43373d1d7a9f3e13b17680362d91217839468e44f125afb24f4801d8b920f687" [label="copy{src=/usr/bin/oc, dest=/bin/oc}" shape="note"];
  "sha256:d1677e8bba8ef31f7ea0fc8daa614aed5bb59c79c879c22d3035960bf6e49afd" [label="copy{src=/go/src/github.com/openshift/installer/bin/openshift-install, dest=/bin/openshift-install}" shape="note"];
  "sha256:91243d8bd301d0bb39873c4083b21e73bac5dca210cb243722b9744169251f37" [label="copy{src=/go/src/github.com/openshift/installer/upi, dest=/var/lib/openshift-install/upi}" shape="note"];
  "sha256:9cfb00200a87b3c34e6e898788061c243381cfb7398d9abbfaf6568ca3b13f9d" [label="copy{src=/go/src/github.com/openshift/installer/data/data/rhcos.json, dest=/var/lib/openshift-install/rhcos.json}" shape="note"];
  "sha256:a53307505a83b840a02afb526fed9cc844381c596d701efd24f193d9ee9b2092" [label="/bin/sh -c yum install --setopt=tsflags=nodocs -y     epel-release     gettext     openssh-clients &&     yum update -y &&     yum install --setopt=tsflags=nodocs -y     unzip gzip jq awscli util-linux &&     yum clean all && rm -rf /var/cache/yum/*" shape="box"];
  "sha256:5970bffa70d1accc5d01fb70a2e0f94b682225a625d8e1fbd3c59383f2f0832d" [label="/bin/sh -c curl -O https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip &&     unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /bin/" shape="box"];
  "sha256:59276f1bfa4391f4c2513371228403c7b84a87b3f40f3ad937b496c1b409534f" [label="/bin/sh -c curl -L -O https://github.com/poseidon/terraform-provider-matchbox/releases/download/${MATCHBOX_VERSION}/terraform-provider-matchbox-${MATCHBOX_VERSION}-linux-amd64.tar.gz &&     tar xzf terraform-provider-matchbox-${MATCHBOX_VERSION}-linux-amd64.tar.gz &&     mv terraform-provider-matchbox-${MATCHBOX_VERSION}-linux-amd64/terraform-provider-matchbox /bin/terraform-provider-matchbox" shape="box"];
  "sha256:867b0a594c1856127e0e5f64ca477dcdf9c5211298526e4071a8b11f0a17c7f7" [label="/bin/sh -c curl -L -O https://github.com/vmware/govmomi/releases/download/v0.20.0/govc_linux_amd64.gz &&     gzip -d govc_linux_amd64.gz &&     chmod +x govc_linux_amd64 && mv govc_linux_amd64 /bin/govc" shape="box"];
  "sha256:180d4a76434247d0c84d97b8f7e8bc27ec8cdb9a4d7b4236ecd47e6a2738ae9a" [label="/bin/sh -c mkdir /output && chown 1000:1000 /output" shape="box"];
  "sha256:02913a3546e5c339a9a0ba147c6bb3a09219f3ef2f7a394e41877ae39e30059d" [label="mkdir{path=/output}" shape="note"];
  "sha256:849435e4e1e2f6f4c8cffadc51db40bbedf265a52be65f482a7debe05e3c5565" [label="sha256:849435e4e1e2f6f4c8cffadc51db40bbedf265a52be65f482a7debe05e3c5565" shape="plaintext"];
  "sha256:4225a22b17b0c7155907f16e1b196360d9628a9ecb87be0e20c1dc9886c5ddbb" -> "sha256:3d72328a5287f1d12cadfda7d4cd9b514b283cd7b63ec32841993da3a3155178" [label=""];
  "sha256:3d72328a5287f1d12cadfda7d4cd9b514b283cd7b63ec32841993da3a3155178" -> "sha256:3a9546652fbd3851a4b9b7359e1beb1c63b3c15a4d635a017a9524068936e67a" [label=""];
  "sha256:45971a12d8915ae7381c4923bf0ed7c4eb1f53ca75001f9d5f30367998e84e1d" -> "sha256:3a9546652fbd3851a4b9b7359e1beb1c63b3c15a4d635a017a9524068936e67a" [label=""];
  "sha256:3a9546652fbd3851a4b9b7359e1beb1c63b3c15a4d635a017a9524068936e67a" -> "sha256:15b1d98c58d4af5dc9ad0816cb9ef1e25eec9ce7a3ce4143003972ad8f4b298d" [label=""];
  "sha256:d551b1f9c83fa02cbc464dc92f0ff80bf4f877c76a8674b08983b142dadd15ec" -> "sha256:43373d1d7a9f3e13b17680362d91217839468e44f125afb24f4801d8b920f687" [label=""];
  "sha256:b79486ca2454ece267d6c714543b1b668d2a46e402c51d5035533459669552b3" -> "sha256:43373d1d7a9f3e13b17680362d91217839468e44f125afb24f4801d8b920f687" [label=""];
  "sha256:43373d1d7a9f3e13b17680362d91217839468e44f125afb24f4801d8b920f687" -> "sha256:d1677e8bba8ef31f7ea0fc8daa614aed5bb59c79c879c22d3035960bf6e49afd" [label=""];
  "sha256:15b1d98c58d4af5dc9ad0816cb9ef1e25eec9ce7a3ce4143003972ad8f4b298d" -> "sha256:d1677e8bba8ef31f7ea0fc8daa614aed5bb59c79c879c22d3035960bf6e49afd" [label=""];
  "sha256:d1677e8bba8ef31f7ea0fc8daa614aed5bb59c79c879c22d3035960bf6e49afd" -> "sha256:91243d8bd301d0bb39873c4083b21e73bac5dca210cb243722b9744169251f37" [label=""];
  "sha256:15b1d98c58d4af5dc9ad0816cb9ef1e25eec9ce7a3ce4143003972ad8f4b298d" -> "sha256:91243d8bd301d0bb39873c4083b21e73bac5dca210cb243722b9744169251f37" [label=""];
  "sha256:91243d8bd301d0bb39873c4083b21e73bac5dca210cb243722b9744169251f37" -> "sha256:9cfb00200a87b3c34e6e898788061c243381cfb7398d9abbfaf6568ca3b13f9d" [label=""];
  "sha256:15b1d98c58d4af5dc9ad0816cb9ef1e25eec9ce7a3ce4143003972ad8f4b298d" -> "sha256:9cfb00200a87b3c34e6e898788061c243381cfb7398d9abbfaf6568ca3b13f9d" [label=""];
  "sha256:9cfb00200a87b3c34e6e898788061c243381cfb7398d9abbfaf6568ca3b13f9d" -> "sha256:a53307505a83b840a02afb526fed9cc844381c596d701efd24f193d9ee9b2092" [label=""];
  "sha256:a53307505a83b840a02afb526fed9cc844381c596d701efd24f193d9ee9b2092" -> "sha256:5970bffa70d1accc5d01fb70a2e0f94b682225a625d8e1fbd3c59383f2f0832d" [label=""];
  "sha256:5970bffa70d1accc5d01fb70a2e0f94b682225a625d8e1fbd3c59383f2f0832d" -> "sha256:59276f1bfa4391f4c2513371228403c7b84a87b3f40f3ad937b496c1b409534f" [label=""];
  "sha256:59276f1bfa4391f4c2513371228403c7b84a87b3f40f3ad937b496c1b409534f" -> "sha256:867b0a594c1856127e0e5f64ca477dcdf9c5211298526e4071a8b11f0a17c7f7" [label=""];
  "sha256:867b0a594c1856127e0e5f64ca477dcdf9c5211298526e4071a8b11f0a17c7f7" -> "sha256:180d4a76434247d0c84d97b8f7e8bc27ec8cdb9a4d7b4236ecd47e6a2738ae9a" [label=""];
  "sha256:180d4a76434247d0c84d97b8f7e8bc27ec8cdb9a4d7b4236ecd47e6a2738ae9a" -> "sha256:02913a3546e5c339a9a0ba147c6bb3a09219f3ef2f7a394e41877ae39e30059d" [label=""];
  "sha256:02913a3546e5c339a9a0ba147c6bb3a09219f3ef2f7a394e41877ae39e30059d" -> "sha256:849435e4e1e2f6f4c8cffadc51db40bbedf265a52be65f482a7debe05e3c5565" [label=""];
}

