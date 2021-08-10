[app/sources/469287639.Dockerfile]
digraph {
  "sha256:50853a17cf6e7f4a159f9c668b2e9b42783037d6a19b184635f4bd1cea604615" [label="local://context" shape="ellipse"];
  "sha256:b9d8bd3685fbaa7570b37807ca09b7d94dcf51b27d3e4d63ed1f202264ee7b60" [label="docker-image://registry.svc.ci.openshift.org/openshift/release:golang-1.10" shape="ellipse"];
  "sha256:2dfaff1078e3e61a786be4b9d75f92b1cf6742de109696a08ca522a0f6ad1b89" [label="mkdir{path=/go/src/github.com/openshift/machine-api-operator}" shape="note"];
  "sha256:ad9ea65ac59d90610f2e109fe43977547af537d05892c36bccb6ad9638c86895" [label="copy{src=/, dest=/go/src/github.com/openshift/machine-api-operator/}" shape="note"];
  "sha256:aedeeb6b45d99ac43d69be9e82d7b91055462779ded126d25cb5f6b28f7a31c0" [label="/bin/sh -c NO_DOCKER=1 make build" shape="box"];
  "sha256:b6e86ebee84cb514a7c4b14e9aac384d282d9f7bf4d8e607679f6631b58e314c" [label="docker-image://registry.svc.ci.openshift.org/openshift/origin-v4.0:base" shape="ellipse"];
  "sha256:cbac0eb1fb6fca83da362cf7004dd891974509189aeb8348996280233fb2f956" [label="copy{src=/go/src/github.com/openshift/machine-api-operator/owned-manifests, dest=/owned-manifests}" shape="note"];
  "sha256:f4f11ebe2971865347cf13daf31aca7c4e6cc7c4b5cca11fbedbe91565a9acfb" [label="copy{src=/go/src/github.com/openshift/machine-api-operator/install, dest=/manifests}" shape="note"];
  "sha256:576dad38699245422b73aab9a474185ee826390cfabf038c6a5047758f3e4617" [label="copy{src=/go/src/github.com/openshift/machine-api-operator/bin/machine-api-operator, dest=/}" shape="note"];
  "sha256:c4967b200a8ac2f20b3d4b636b25a76dd2c676725c282a7df2a6263de00191d0" [label="copy{src=/go/src/github.com/openshift/machine-api-operator/bin/nodelink-controller, dest=/}" shape="note"];
  "sha256:4eee62fa870976016e02af6e59ca2ee7c508b82c04153edf35d9fbcd84150c6a" [label="copy{src=/go/src/github.com/openshift/machine-api-operator/bin/machine-healthcheck, dest=/}" shape="note"];
  "sha256:09ce62971624a3ea6f2ad2cf6eac027ebdaa00e6b24fdad4fbae8f347092a41c" [label="sha256:09ce62971624a3ea6f2ad2cf6eac027ebdaa00e6b24fdad4fbae8f347092a41c" shape="plaintext"];
  "sha256:b9d8bd3685fbaa7570b37807ca09b7d94dcf51b27d3e4d63ed1f202264ee7b60" -> "sha256:2dfaff1078e3e61a786be4b9d75f92b1cf6742de109696a08ca522a0f6ad1b89" [label=""];
  "sha256:2dfaff1078e3e61a786be4b9d75f92b1cf6742de109696a08ca522a0f6ad1b89" -> "sha256:ad9ea65ac59d90610f2e109fe43977547af537d05892c36bccb6ad9638c86895" [label=""];
  "sha256:50853a17cf6e7f4a159f9c668b2e9b42783037d6a19b184635f4bd1cea604615" -> "sha256:ad9ea65ac59d90610f2e109fe43977547af537d05892c36bccb6ad9638c86895" [label=""];
  "sha256:ad9ea65ac59d90610f2e109fe43977547af537d05892c36bccb6ad9638c86895" -> "sha256:aedeeb6b45d99ac43d69be9e82d7b91055462779ded126d25cb5f6b28f7a31c0" [label=""];
  "sha256:b6e86ebee84cb514a7c4b14e9aac384d282d9f7bf4d8e607679f6631b58e314c" -> "sha256:cbac0eb1fb6fca83da362cf7004dd891974509189aeb8348996280233fb2f956" [label=""];
  "sha256:aedeeb6b45d99ac43d69be9e82d7b91055462779ded126d25cb5f6b28f7a31c0" -> "sha256:cbac0eb1fb6fca83da362cf7004dd891974509189aeb8348996280233fb2f956" [label=""];
  "sha256:cbac0eb1fb6fca83da362cf7004dd891974509189aeb8348996280233fb2f956" -> "sha256:f4f11ebe2971865347cf13daf31aca7c4e6cc7c4b5cca11fbedbe91565a9acfb" [label=""];
  "sha256:aedeeb6b45d99ac43d69be9e82d7b91055462779ded126d25cb5f6b28f7a31c0" -> "sha256:f4f11ebe2971865347cf13daf31aca7c4e6cc7c4b5cca11fbedbe91565a9acfb" [label=""];
  "sha256:f4f11ebe2971865347cf13daf31aca7c4e6cc7c4b5cca11fbedbe91565a9acfb" -> "sha256:576dad38699245422b73aab9a474185ee826390cfabf038c6a5047758f3e4617" [label=""];
  "sha256:aedeeb6b45d99ac43d69be9e82d7b91055462779ded126d25cb5f6b28f7a31c0" -> "sha256:576dad38699245422b73aab9a474185ee826390cfabf038c6a5047758f3e4617" [label=""];
  "sha256:576dad38699245422b73aab9a474185ee826390cfabf038c6a5047758f3e4617" -> "sha256:c4967b200a8ac2f20b3d4b636b25a76dd2c676725c282a7df2a6263de00191d0" [label=""];
  "sha256:aedeeb6b45d99ac43d69be9e82d7b91055462779ded126d25cb5f6b28f7a31c0" -> "sha256:c4967b200a8ac2f20b3d4b636b25a76dd2c676725c282a7df2a6263de00191d0" [label=""];
  "sha256:c4967b200a8ac2f20b3d4b636b25a76dd2c676725c282a7df2a6263de00191d0" -> "sha256:4eee62fa870976016e02af6e59ca2ee7c508b82c04153edf35d9fbcd84150c6a" [label=""];
  "sha256:aedeeb6b45d99ac43d69be9e82d7b91055462779ded126d25cb5f6b28f7a31c0" -> "sha256:4eee62fa870976016e02af6e59ca2ee7c508b82c04153edf35d9fbcd84150c6a" [label=""];
  "sha256:4eee62fa870976016e02af6e59ca2ee7c508b82c04153edf35d9fbcd84150c6a" -> "sha256:09ce62971624a3ea6f2ad2cf6eac027ebdaa00e6b24fdad4fbae8f347092a41c" [label=""];
}

