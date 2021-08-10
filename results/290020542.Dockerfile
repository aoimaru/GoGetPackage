[app/sources/290020542.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:fe884f4da1d06cd7b9ba3e6fef2101f51bb8c092c0a56e689598449cd40fa06a" [label="/bin/sh -c yum -y install hostname centos-release-gluster && yum -y install glusterfs-server && yum clean all" shape="box"];
  "sha256:3ea16b6d079dc734c3c0509dd734b6bb0d05872c5d13ea3dbc4addd72c7386b2" [label="local://context" shape="ellipse"];
  "sha256:728cc95a2cc14ca2aeca9a1572db8b1feff90891bcfad202b2a6b397d0410634" [label="copy{src=/glusterd.vol, dest=/etc/glusterfs/}" shape="note"];
  "sha256:abcb5ad58f718d158d8de87e76c8354e07b9d7d79f1855c88b89560a99f04372" [label="copy{src=/run_gluster.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:fa8db8dcca91f6a51bd518c363a61ce6ef3a5d41ccda046debec70ad23aa3d4f" [label="copy{src=/index.html, dest=/vol/}" shape="note"];
  "sha256:a7b9162b7efa5ab4b7e5b1ece7a3d766376f52a74ee97fee0d71f936710fb81d" [label="/bin/sh -c chmod 644 /vol/index.html" shape="box"];
  "sha256:ee1cc114ca94ba4afecb85f2330fcaf9d4ff2f0d49b971ea5573b60b18cc85ca" [label="sha256:ee1cc114ca94ba4afecb85f2330fcaf9d4ff2f0d49b971ea5573b60b18cc85ca" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:fe884f4da1d06cd7b9ba3e6fef2101f51bb8c092c0a56e689598449cd40fa06a" [label=""];
  "sha256:fe884f4da1d06cd7b9ba3e6fef2101f51bb8c092c0a56e689598449cd40fa06a" -> "sha256:728cc95a2cc14ca2aeca9a1572db8b1feff90891bcfad202b2a6b397d0410634" [label=""];
  "sha256:3ea16b6d079dc734c3c0509dd734b6bb0d05872c5d13ea3dbc4addd72c7386b2" -> "sha256:728cc95a2cc14ca2aeca9a1572db8b1feff90891bcfad202b2a6b397d0410634" [label=""];
  "sha256:728cc95a2cc14ca2aeca9a1572db8b1feff90891bcfad202b2a6b397d0410634" -> "sha256:abcb5ad58f718d158d8de87e76c8354e07b9d7d79f1855c88b89560a99f04372" [label=""];
  "sha256:3ea16b6d079dc734c3c0509dd734b6bb0d05872c5d13ea3dbc4addd72c7386b2" -> "sha256:abcb5ad58f718d158d8de87e76c8354e07b9d7d79f1855c88b89560a99f04372" [label=""];
  "sha256:abcb5ad58f718d158d8de87e76c8354e07b9d7d79f1855c88b89560a99f04372" -> "sha256:fa8db8dcca91f6a51bd518c363a61ce6ef3a5d41ccda046debec70ad23aa3d4f" [label=""];
  "sha256:3ea16b6d079dc734c3c0509dd734b6bb0d05872c5d13ea3dbc4addd72c7386b2" -> "sha256:fa8db8dcca91f6a51bd518c363a61ce6ef3a5d41ccda046debec70ad23aa3d4f" [label=""];
  "sha256:fa8db8dcca91f6a51bd518c363a61ce6ef3a5d41ccda046debec70ad23aa3d4f" -> "sha256:a7b9162b7efa5ab4b7e5b1ece7a3d766376f52a74ee97fee0d71f936710fb81d" [label=""];
  "sha256:a7b9162b7efa5ab4b7e5b1ece7a3d766376f52a74ee97fee0d71f936710fb81d" -> "sha256:ee1cc114ca94ba4afecb85f2330fcaf9d4ff2f0d49b971ea5573b60b18cc85ca" [label=""];
}

