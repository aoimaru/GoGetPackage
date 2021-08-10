[app/sources/470546793.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:b7dcb0866d30f635e1ae9021b94345cc663e471c433c226ee8930b2e19e53f5b" [label="local://context" shape="ellipse"];
  "sha256:22d63592ba8830f11e2419e89c169d2752f7a19bc553748872782a02942aeaa9" [label="copy{src=/gluster.repo, dest=/etc/yum.repos.d/}" shape="note"];
  "sha256:f3fb5db6ce555490d8806d4a063a49ac81bb57112512a059c9d2a53ed8bc2368" [label="/bin/sh -c yum -y install hostname glusterfs-server && yum clean all" shape="box"];
  "sha256:1e3748761aae1fc449d795972583b3817c13449b80a7feced11b03fea338b380" [label="copy{src=/glusterd.vol, dest=/etc/glusterfs/}" shape="note"];
  "sha256:125cce855988b6676d6ddb30ac176bb405a3f6cd82efc0de10dc65ecc38dd35d" [label="copy{src=/run_gluster.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:7310bd65c0d2bb570dc15871730ec7c1b017cfda6bd9a6ad4a00ab793d020140" [label="copy{src=/index.html, dest=/vol/}" shape="note"];
  "sha256:67bc5685ddd98a1f470d343fe5d152e18b6d48b490a362076b0ea61ea6241bc0" [label="/bin/sh -c chmod 644 /vol/index.html" shape="box"];
  "sha256:a69e217bd12328441ad9a1a891e3019b112fbdf55e1328328da602e3928ce85c" [label="sha256:a69e217bd12328441ad9a1a891e3019b112fbdf55e1328328da602e3928ce85c" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:22d63592ba8830f11e2419e89c169d2752f7a19bc553748872782a02942aeaa9" [label=""];
  "sha256:b7dcb0866d30f635e1ae9021b94345cc663e471c433c226ee8930b2e19e53f5b" -> "sha256:22d63592ba8830f11e2419e89c169d2752f7a19bc553748872782a02942aeaa9" [label=""];
  "sha256:22d63592ba8830f11e2419e89c169d2752f7a19bc553748872782a02942aeaa9" -> "sha256:f3fb5db6ce555490d8806d4a063a49ac81bb57112512a059c9d2a53ed8bc2368" [label=""];
  "sha256:f3fb5db6ce555490d8806d4a063a49ac81bb57112512a059c9d2a53ed8bc2368" -> "sha256:1e3748761aae1fc449d795972583b3817c13449b80a7feced11b03fea338b380" [label=""];
  "sha256:b7dcb0866d30f635e1ae9021b94345cc663e471c433c226ee8930b2e19e53f5b" -> "sha256:1e3748761aae1fc449d795972583b3817c13449b80a7feced11b03fea338b380" [label=""];
  "sha256:1e3748761aae1fc449d795972583b3817c13449b80a7feced11b03fea338b380" -> "sha256:125cce855988b6676d6ddb30ac176bb405a3f6cd82efc0de10dc65ecc38dd35d" [label=""];
  "sha256:b7dcb0866d30f635e1ae9021b94345cc663e471c433c226ee8930b2e19e53f5b" -> "sha256:125cce855988b6676d6ddb30ac176bb405a3f6cd82efc0de10dc65ecc38dd35d" [label=""];
  "sha256:125cce855988b6676d6ddb30ac176bb405a3f6cd82efc0de10dc65ecc38dd35d" -> "sha256:7310bd65c0d2bb570dc15871730ec7c1b017cfda6bd9a6ad4a00ab793d020140" [label=""];
  "sha256:b7dcb0866d30f635e1ae9021b94345cc663e471c433c226ee8930b2e19e53f5b" -> "sha256:7310bd65c0d2bb570dc15871730ec7c1b017cfda6bd9a6ad4a00ab793d020140" [label=""];
  "sha256:7310bd65c0d2bb570dc15871730ec7c1b017cfda6bd9a6ad4a00ab793d020140" -> "sha256:67bc5685ddd98a1f470d343fe5d152e18b6d48b490a362076b0ea61ea6241bc0" [label=""];
  "sha256:67bc5685ddd98a1f470d343fe5d152e18b6d48b490a362076b0ea61ea6241bc0" -> "sha256:a69e217bd12328441ad9a1a891e3019b112fbdf55e1328328da602e3928ce85c" [label=""];
}

