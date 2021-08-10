[app/sub_sources/128531129.Dockerfile]
digraph {
  "sha256:118e7ec338a083815205248743da9c42ee87bab7e8971eed30532630186721c2" [label="docker-image://docker.io/library/golang:1.10.3@sha256:3c54fa85d6262d2ef7695ee2f8793f1f4f9809ce4a08ca2e213235ef4cfdcb66" shape="ellipse"];
  "sha256:1db224a618f47f4abe2d52550e0e4aa43a699261b7e77a43c4706e9371a5c535" [label="/bin/sh -c apt-get update && apt-get install -y apt-utils" shape="box"];
  "sha256:b73c561bd3785602c9ed1c3a8b9f76d38e4d71355467f9441f698e76268dd291" [label="/bin/sh -c apt-get install -y make" shape="box"];
  "sha256:2a099605c47d486c5a93f7c745e0c1fdfa3727d5cd8b1f2f041791e9f6a81777" [label="mkdir{path=/scratch}" shape="note"];
  "sha256:29fdb00331be87a1654d150cbed203849c44e856e8d2f4cec94aeca2df7e14eb" [label="/bin/sh -c curl -L -O \"https://github.com/kubernetes-sigs/kubebuilder/releases/download/v${version}/kubebuilder_${version}_linux_${arch}.tar.gz\"" shape="box"];
  "sha256:038f70c4a2c5334f71a36fe926199f7c687bd8ad97092dd43712bf60d85abb72" [label="/bin/sh -c tar -zxvf kubebuilder_${version}_linux_${arch}.tar.gz" shape="box"];
  "sha256:fde40e42dd17de51435dbb65a0d727893e596e2acdd6bc606c4e3b5cd7e060ec" [label="/bin/sh -c mv kubebuilder_${version}_linux_${arch} kubebuilder && mv kubebuilder /usr/local/" shape="box"];
  "sha256:e8e79c463dfea6916eeaf93ae265962700d7ace6955da4f7063d298101a94d09" [label="mkdir{path=/usr/bin}" shape="note"];
  "sha256:9703783f395290f90831833236c4a3da247b68fec9c9d1866c54179745480aaf" [label="/bin/sh -c curl -L -o opa https://github.com/open-policy-agent/opa/releases/download/v0.10.5/opa_linux_amd64" shape="box"];
  "sha256:97de702f6d8185399c7652776d2e59dee6db359f0f357d212490b8b1499997c5" [label="/bin/sh -c chmod 755 opa" shape="box"];
  "sha256:55e0a91a8db04989bc3907129b5fbfa394d6c5a7dc50d5f2021e4146942c92ae" [label="mkdir{path=/go/src/github.com/open-policy-agent/frameworks/constraint}" shape="note"];
  "sha256:44479046c6bcb7dff5829e415f6479256cde1c6ffb0f71ddc42c295de57919d7" [label="local://context" shape="ellipse"];
  "sha256:bdf2a77b1a041681f172c48ad03ee95bd0921cf5e02387684ce59679723759a5" [label="copy{src=/, dest=/go/src/github.com/open-policy-agent/frameworks/constraint/}" shape="note"];
  "sha256:cf93513d9c38849c19ebceea4584ea97d67f448f53df5936887a8245fe4dc023" [label="sha256:cf93513d9c38849c19ebceea4584ea97d67f448f53df5936887a8245fe4dc023" shape="plaintext"];
  "sha256:118e7ec338a083815205248743da9c42ee87bab7e8971eed30532630186721c2" -> "sha256:1db224a618f47f4abe2d52550e0e4aa43a699261b7e77a43c4706e9371a5c535" [label=""];
  "sha256:1db224a618f47f4abe2d52550e0e4aa43a699261b7e77a43c4706e9371a5c535" -> "sha256:b73c561bd3785602c9ed1c3a8b9f76d38e4d71355467f9441f698e76268dd291" [label=""];
  "sha256:b73c561bd3785602c9ed1c3a8b9f76d38e4d71355467f9441f698e76268dd291" -> "sha256:2a099605c47d486c5a93f7c745e0c1fdfa3727d5cd8b1f2f041791e9f6a81777" [label=""];
  "sha256:2a099605c47d486c5a93f7c745e0c1fdfa3727d5cd8b1f2f041791e9f6a81777" -> "sha256:29fdb00331be87a1654d150cbed203849c44e856e8d2f4cec94aeca2df7e14eb" [label=""];
  "sha256:29fdb00331be87a1654d150cbed203849c44e856e8d2f4cec94aeca2df7e14eb" -> "sha256:038f70c4a2c5334f71a36fe926199f7c687bd8ad97092dd43712bf60d85abb72" [label=""];
  "sha256:038f70c4a2c5334f71a36fe926199f7c687bd8ad97092dd43712bf60d85abb72" -> "sha256:fde40e42dd17de51435dbb65a0d727893e596e2acdd6bc606c4e3b5cd7e060ec" [label=""];
  "sha256:fde40e42dd17de51435dbb65a0d727893e596e2acdd6bc606c4e3b5cd7e060ec" -> "sha256:e8e79c463dfea6916eeaf93ae265962700d7ace6955da4f7063d298101a94d09" [label=""];
  "sha256:e8e79c463dfea6916eeaf93ae265962700d7ace6955da4f7063d298101a94d09" -> "sha256:9703783f395290f90831833236c4a3da247b68fec9c9d1866c54179745480aaf" [label=""];
  "sha256:9703783f395290f90831833236c4a3da247b68fec9c9d1866c54179745480aaf" -> "sha256:97de702f6d8185399c7652776d2e59dee6db359f0f357d212490b8b1499997c5" [label=""];
  "sha256:97de702f6d8185399c7652776d2e59dee6db359f0f357d212490b8b1499997c5" -> "sha256:55e0a91a8db04989bc3907129b5fbfa394d6c5a7dc50d5f2021e4146942c92ae" [label=""];
  "sha256:55e0a91a8db04989bc3907129b5fbfa394d6c5a7dc50d5f2021e4146942c92ae" -> "sha256:bdf2a77b1a041681f172c48ad03ee95bd0921cf5e02387684ce59679723759a5" [label=""];
  "sha256:44479046c6bcb7dff5829e415f6479256cde1c6ffb0f71ddc42c295de57919d7" -> "sha256:bdf2a77b1a041681f172c48ad03ee95bd0921cf5e02387684ce59679723759a5" [label=""];
  "sha256:bdf2a77b1a041681f172c48ad03ee95bd0921cf5e02387684ce59679723759a5" -> "sha256:cf93513d9c38849c19ebceea4584ea97d67f448f53df5936887a8245fe4dc023" [label=""];
}

