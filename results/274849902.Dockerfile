[app/sources/274849902.Dockerfile]
digraph {
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" [label="docker-image://docker.io/library/centos:6" shape="ellipse"];
  "sha256:14bff3f0c62bfbc885ad3bb781ba35a888609333ad58d8aed6c33af6cb24c720" [label="/bin/sh -c yum install -y curl" shape="box"];
  "sha256:b05bd8df573635e1d99095fb90166e188a54d9843b527dcccf9874756da4099f" [label="/bin/sh -c yum install -y tar which" shape="box"];
  "sha256:12896a2dbdc60c4bdb62e0cbf46b6402dac99f166dc606b56f17f80eaa479fb1" [label="/bin/sh -c gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3" shape="box"];
  "sha256:c00239772f65e177c1724614cbd21c638c60f9c7db9363fe23b0fb646d198b7e" [label="/bin/sh -c (curl -sSL https://get.rvm.io | bash -s stable --ruby) || (curl -sSL https://get.rvm.io | bash -s stable --ruby)" shape="box"];
  "sha256:32967d170b08011d5882ae3b5c62e0c0a3695705678339132eb05d9fd4b4b54f" [label="/bin/sh -c /bin/bash -l -c \"echo '. /etc/profile.d/rvm.sh' >> ~/.bashrc\"" shape="box"];
  "sha256:7289ede02510f7d249a506f967c2ec9c749919e0571aa9b463035602313f5685" [label="/bin/sh -c /bin/bash -l -c \"gem install --update bundler\"" shape="box"];
  "sha256:aa9282a54a36d63f361796ba5f93aba6785a7105184bd74ecc1dc2299b3ac517" [label="sha256:aa9282a54a36d63f361796ba5f93aba6785a7105184bd74ecc1dc2299b3ac517" shape="plaintext"];
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" -> "sha256:14bff3f0c62bfbc885ad3bb781ba35a888609333ad58d8aed6c33af6cb24c720" [label=""];
  "sha256:14bff3f0c62bfbc885ad3bb781ba35a888609333ad58d8aed6c33af6cb24c720" -> "sha256:b05bd8df573635e1d99095fb90166e188a54d9843b527dcccf9874756da4099f" [label=""];
  "sha256:b05bd8df573635e1d99095fb90166e188a54d9843b527dcccf9874756da4099f" -> "sha256:12896a2dbdc60c4bdb62e0cbf46b6402dac99f166dc606b56f17f80eaa479fb1" [label=""];
  "sha256:12896a2dbdc60c4bdb62e0cbf46b6402dac99f166dc606b56f17f80eaa479fb1" -> "sha256:c00239772f65e177c1724614cbd21c638c60f9c7db9363fe23b0fb646d198b7e" [label=""];
  "sha256:c00239772f65e177c1724614cbd21c638c60f9c7db9363fe23b0fb646d198b7e" -> "sha256:32967d170b08011d5882ae3b5c62e0c0a3695705678339132eb05d9fd4b4b54f" [label=""];
  "sha256:32967d170b08011d5882ae3b5c62e0c0a3695705678339132eb05d9fd4b4b54f" -> "sha256:7289ede02510f7d249a506f967c2ec9c749919e0571aa9b463035602313f5685" [label=""];
  "sha256:7289ede02510f7d249a506f967c2ec9c749919e0571aa9b463035602313f5685" -> "sha256:aa9282a54a36d63f361796ba5f93aba6785a7105184bd74ecc1dc2299b3ac517" [label=""];
}

