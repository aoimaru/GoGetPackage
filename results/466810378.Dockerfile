[app/sources/466810378.Dockerfile]
digraph {
  "sha256:d0479bf9d6977009977fec08a662c8ba225ea8cf403c0eb0947273a5bf0bf29c" [label="docker-image://registry.fedoraproject.org/fedora-minimal@sha256:ea229b8d92de5f20c87ff20890b1f6b27121308e018780b5721bb743f328df7e" shape="ellipse"];
  "sha256:14aff5564acd8f48ec79fa02c2a2466f3a93da9f86f966c4e8cd29a813e7652c" [label="mkdir{path=/work}" shape="note"];
  "sha256:67c510dd99b4ad188fd8eeeaba6f56091b46038bb2e2d0cc54ad059a0d492145" [label="local://context" shape="ellipse"];
  "sha256:7717f575c26c7097042885c42674755e9cb6d12e382cdcb35fdf39c29d751b08" [label="copy{src=/target/*-runner, dest=/work/application}" shape="note"];
  "sha256:483855db02da7c562ebbbb2ba531490f8a0c6ccfded8cac52d9aae6f89fb59a0" [label="/bin/sh -c chmod 775 /work" shape="box"];
  "sha256:36bccd32bc3ea09f0e06a1067963177d51b016b407add7e1b2f213c44d416c62" [label="sha256:36bccd32bc3ea09f0e06a1067963177d51b016b407add7e1b2f213c44d416c62" shape="plaintext"];
  "sha256:d0479bf9d6977009977fec08a662c8ba225ea8cf403c0eb0947273a5bf0bf29c" -> "sha256:14aff5564acd8f48ec79fa02c2a2466f3a93da9f86f966c4e8cd29a813e7652c" [label=""];
  "sha256:14aff5564acd8f48ec79fa02c2a2466f3a93da9f86f966c4e8cd29a813e7652c" -> "sha256:7717f575c26c7097042885c42674755e9cb6d12e382cdcb35fdf39c29d751b08" [label=""];
  "sha256:67c510dd99b4ad188fd8eeeaba6f56091b46038bb2e2d0cc54ad059a0d492145" -> "sha256:7717f575c26c7097042885c42674755e9cb6d12e382cdcb35fdf39c29d751b08" [label=""];
  "sha256:7717f575c26c7097042885c42674755e9cb6d12e382cdcb35fdf39c29d751b08" -> "sha256:483855db02da7c562ebbbb2ba531490f8a0c6ccfded8cac52d9aae6f89fb59a0" [label=""];
  "sha256:483855db02da7c562ebbbb2ba531490f8a0c6ccfded8cac52d9aae6f89fb59a0" -> "sha256:36bccd32bc3ea09f0e06a1067963177d51b016b407add7e1b2f213c44d416c62" [label=""];
}

