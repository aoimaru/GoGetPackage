[app/sources/180001926.Dockerfile]
digraph {
  "sha256:ed3d5785942723f9905adbaea49633a474213518c4375a9f3acb96bc32b8ab44" [label="docker-image://docker.io/ambakshi/perforce-server:latest" shape="ellipse"];
  "sha256:8540167a92de0a99e58bf3c570264505bcf832bbdadfde4e3e9bea23ab2b13db" [label="/bin/sh -c yum install -y helix-git-fusion helix-git-fusion-3rdparty-git helix-git-fusion-trigger openssh-server" shape="box"];
  "sha256:972a4ec84ee5cf0d4e370d0f9acfa4330bb57a3035b40c8236a43aecf08c2d1f" [label="/bin/sh -c sed -i 's@session\\s*required\\s*pam_loginuid.so@session optional pam_loginuid.so@g' /etc/pam.d/sshd" shape="box"];
  "sha256:0288269579735a88a9ec82fabf754b4df56b5e8b2ea4e930e305165b64f121bb" [label="/bin/sh -c sed -i 's@session\\s*include\\s*system-auth$@session optional system-auth@g' /etc/pam.d/su" shape="box"];
  "sha256:d31b1c7e33bc84088842f0611ce17ec49367e394acc94682e7903264c21e51ea" [label="/bin/sh -c sed -i 's@PermitRootLogin without-password@PermitRootLogin yes@' /etc/ssh/sshd_config" shape="box"];
  "sha256:544e3a05e5cb52cf2f91c694e016ff5516bd8112a2d8459e589cf2352019713d" [label="local://context" shape="ellipse"];
  "sha256:b49a2c8a5d7e4e80e5e7841ec4316f9348ee22e7635c65b743e78ef107a8a991" [label="copy{src=/run.sh, dest=/}" shape="note"];
  "sha256:7ac46ac01acb830a5a69b607fd4488d366104ade01129c838af75d11181d6691" [label="copy{src=/setup-git-fusion.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:abe748c0a1b1b5dafd29d541df1078ae0aefee1e5910bb39ee3b506beb028a7d" [label="sha256:abe748c0a1b1b5dafd29d541df1078ae0aefee1e5910bb39ee3b506beb028a7d" shape="plaintext"];
  "sha256:ed3d5785942723f9905adbaea49633a474213518c4375a9f3acb96bc32b8ab44" -> "sha256:8540167a92de0a99e58bf3c570264505bcf832bbdadfde4e3e9bea23ab2b13db" [label=""];
  "sha256:8540167a92de0a99e58bf3c570264505bcf832bbdadfde4e3e9bea23ab2b13db" -> "sha256:972a4ec84ee5cf0d4e370d0f9acfa4330bb57a3035b40c8236a43aecf08c2d1f" [label=""];
  "sha256:972a4ec84ee5cf0d4e370d0f9acfa4330bb57a3035b40c8236a43aecf08c2d1f" -> "sha256:0288269579735a88a9ec82fabf754b4df56b5e8b2ea4e930e305165b64f121bb" [label=""];
  "sha256:0288269579735a88a9ec82fabf754b4df56b5e8b2ea4e930e305165b64f121bb" -> "sha256:d31b1c7e33bc84088842f0611ce17ec49367e394acc94682e7903264c21e51ea" [label=""];
  "sha256:d31b1c7e33bc84088842f0611ce17ec49367e394acc94682e7903264c21e51ea" -> "sha256:b49a2c8a5d7e4e80e5e7841ec4316f9348ee22e7635c65b743e78ef107a8a991" [label=""];
  "sha256:544e3a05e5cb52cf2f91c694e016ff5516bd8112a2d8459e589cf2352019713d" -> "sha256:b49a2c8a5d7e4e80e5e7841ec4316f9348ee22e7635c65b743e78ef107a8a991" [label=""];
  "sha256:b49a2c8a5d7e4e80e5e7841ec4316f9348ee22e7635c65b743e78ef107a8a991" -> "sha256:7ac46ac01acb830a5a69b607fd4488d366104ade01129c838af75d11181d6691" [label=""];
  "sha256:544e3a05e5cb52cf2f91c694e016ff5516bd8112a2d8459e589cf2352019713d" -> "sha256:7ac46ac01acb830a5a69b607fd4488d366104ade01129c838af75d11181d6691" [label=""];
  "sha256:7ac46ac01acb830a5a69b607fd4488d366104ade01129c838af75d11181d6691" -> "sha256:abe748c0a1b1b5dafd29d541df1078ae0aefee1e5910bb39ee3b506beb028a7d" [label=""];
}

