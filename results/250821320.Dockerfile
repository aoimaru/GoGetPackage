[app/sources/250821320.Dockerfile]
digraph {
  "sha256:7f491ed4b606f07936dfd6d901ca447c0889765701a73b14cda91c8e685aa948" [label="local://context" shape="ellipse"];
  "sha256:09e65add3baf6049f8100c4c89894a2c42c1218d03a1edd2e7c1bcd29cd01264" [label="docker-image://docker.io/nvidia/cuda:7.5-runtime-centos7" shape="ellipse"];
  "sha256:68c36824f44a640fd0823cfb6c1fc50be26ba1e788f173db24d4d9141a479451" [label="copy{src=/ssh_config, dest=/root/.ssh/config}" shape="note"];
  "sha256:3c9a35cd770b33fd6cb6439df157f80d8ed567d7f50980598affb7613660ff42" [label="/bin/sh -c yum install -y openssh-clients openssh-server net-tools     && yum clean all     && mkdir -p /var/run/sshd     && ssh-keygen -A     && sed -i 's/UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config     && sed -i 's/#PermitRootLogin yes/PermitRootLogin yes/g' /etc/ssh/sshd_config     && sed -i 's/#RSAAuthentication yes/RSAAuthentication yes/g' /etc/ssh/sshd_config     && sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/g' /etc/ssh/sshd_config     && ssh-keygen -f /root/.ssh/id_rsa -t rsa -N ''     && chmod 600 /root/.ssh/config     && chmod 700 /root/.ssh     && cp /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys" shape="box"];
  "sha256:9e1d3b03ab1f649090a1acb513a9150cf61263290f3949aab36a42687dad756d" [label="copy{src=/NAMD_2.11_Linux-x86_64-multicore-CUDA.tar.gz, dest=/sw}" shape="note"];
  "sha256:1f4697a641f7e56beefd901caacd13d982c5ba9980830c2069600a9303d4b047" [label="copy{src=/apoa1.tar.gz, dest=/sw/NAMD_2.11_Linux-x86_64-multicore-CUDA/},copy{src=/stmv.tar.gz, dest=/sw/NAMD_2.11_Linux-x86_64-multicore-CUDA/}" shape="note"];
  "sha256:154ed430e75d3f8562f52c71a1c9bb757c15a955798b0d6edea223caf05e34ed" [label="copy{src=/run_namd.sh, dest=/sw/}" shape="note"];
  "sha256:127d1f7cd614e69b7070bff9726f8e9dda2b8e3ff5c36ae7aab71f95588909ba" [label="sha256:127d1f7cd614e69b7070bff9726f8e9dda2b8e3ff5c36ae7aab71f95588909ba" shape="plaintext"];
  "sha256:09e65add3baf6049f8100c4c89894a2c42c1218d03a1edd2e7c1bcd29cd01264" -> "sha256:68c36824f44a640fd0823cfb6c1fc50be26ba1e788f173db24d4d9141a479451" [label=""];
  "sha256:7f491ed4b606f07936dfd6d901ca447c0889765701a73b14cda91c8e685aa948" -> "sha256:68c36824f44a640fd0823cfb6c1fc50be26ba1e788f173db24d4d9141a479451" [label=""];
  "sha256:68c36824f44a640fd0823cfb6c1fc50be26ba1e788f173db24d4d9141a479451" -> "sha256:3c9a35cd770b33fd6cb6439df157f80d8ed567d7f50980598affb7613660ff42" [label=""];
  "sha256:3c9a35cd770b33fd6cb6439df157f80d8ed567d7f50980598affb7613660ff42" -> "sha256:9e1d3b03ab1f649090a1acb513a9150cf61263290f3949aab36a42687dad756d" [label=""];
  "sha256:7f491ed4b606f07936dfd6d901ca447c0889765701a73b14cda91c8e685aa948" -> "sha256:9e1d3b03ab1f649090a1acb513a9150cf61263290f3949aab36a42687dad756d" [label=""];
  "sha256:9e1d3b03ab1f649090a1acb513a9150cf61263290f3949aab36a42687dad756d" -> "sha256:1f4697a641f7e56beefd901caacd13d982c5ba9980830c2069600a9303d4b047" [label=""];
  "sha256:7f491ed4b606f07936dfd6d901ca447c0889765701a73b14cda91c8e685aa948" -> "sha256:1f4697a641f7e56beefd901caacd13d982c5ba9980830c2069600a9303d4b047" [label=""];
  "sha256:1f4697a641f7e56beefd901caacd13d982c5ba9980830c2069600a9303d4b047" -> "sha256:154ed430e75d3f8562f52c71a1c9bb757c15a955798b0d6edea223caf05e34ed" [label=""];
  "sha256:7f491ed4b606f07936dfd6d901ca447c0889765701a73b14cda91c8e685aa948" -> "sha256:154ed430e75d3f8562f52c71a1c9bb757c15a955798b0d6edea223caf05e34ed" [label=""];
  "sha256:154ed430e75d3f8562f52c71a1c9bb757c15a955798b0d6edea223caf05e34ed" -> "sha256:127d1f7cd614e69b7070bff9726f8e9dda2b8e3ff5c36ae7aab71f95588909ba" [label=""];
}

