[app/sources/321807746.Dockerfile]
digraph {
  "sha256:234fe5dbfcbdc109e5a0ad5efa377f332089623d39587d03b796e2a4c3e64881" [label="local://context" shape="ellipse"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:da7b473d8bdd3dcab468894953a6d33de97b4b3d01b091c50b76bd21d1cdcf29" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:34b034cf117a7a53c61d7554c7a1c1520ba08d66aa90d09025b131d2877f8a77" [label="/bin/sh -c apt-get upgrade -y" shape="box"];
  "sha256:983a3d064a27d0dc7d2de2f2929bcdc8a0d1ad1fc41fc3c6b30445b35a40ae30" [label="/bin/sh -c set -e -x;         groupadd -g 1337 user;         useradd -g 1337 -u 1337 -m user" shape="box"];
  "sha256:f02ef0613a9418d29ddbb1de96107c661d43df86be264c6d9fcf9b1d402b9924" [label="/bin/sh -c apt-get install -y python3 python3-pip" shape="box"];
  "sha256:a70d82d4b5af7dacc977ba53107ab701730d5315881d9b43b10eba925963e58d" [label="/bin/sh -c pip3 install virtualenv" shape="box"];
  "sha256:0d2ab376c23b0534b778e94519831c5ec075d7caac4209dd0851c665b4638429" [label="/bin/sh -c apt-get install -y gdbserver" shape="box"];
  "sha256:36e0840d73de7833cfdb44e4d04d03462b28e67be3c83281ae368821a81202b7" [label="/bin/sh -c virtualenv /env -p python3" shape="box"];
  "sha256:84404bad29362e7b8f34f9d00779d072f2d25774063fec7fc6039e365aaaaa2c" [label="copy{src=/challenge/requirements.txt, dest=/home/user/}" shape="note"];
  "sha256:fd2ff901b48dcd7ebc590a3268b5c478abedd1fba3161be4aacc6c0c6eb5d2c6" [label="copy{src=/challenge/gunicorn.conf.py, dest=/home/user/}" shape="note"];
  "sha256:4ff9b74b96512a128d6e8a627f4e3954c16b19eaa403b133d17ddb62a25a4e4f" [label="copy{src=/challenge/gaas.py, dest=/home/user/}" shape="note"];
  "sha256:c57c3fcd6faa3206efd0f0786af41e3db6f31a8f5b9018a20586839d3cf08ca4" [label="copy{src=/challenge/gdbproc.py, dest=/home/user/}" shape="note"];
  "sha256:71e75b5c85b9ffd12e50c74537ece242b6f43494d24ecbe0e0c5ef0cfed036b2" [label="copy{src=/challenge/index.html, dest=/home/user/}" shape="note"];
  "sha256:d8bbf07bf62955d58dc893bf61ec0baf681c52c97828e1acb8d060530903b98c" [label="copy{src=/challenge/printwebflag, dest=/home/user/}" shape="note"];
  "sha256:1a5ea8b41b13c3408c12fce98d923a09e95c34b3616777f530d5f8a955b1319c" [label="/bin/sh -c set -e -x;         chown -R root:root /home/user;         chmod 0555 /home/user/gunicorn.conf.py;         chmod 0555 /home/user/gaas.py;         chmod 0555 /home/user/gdbproc.py;         chmod 0555 /home/user/printwebflag;         chmod 0444 /home/user/index.html" shape="box"];
  "sha256:8d6e150a107b9a2175c3e4863b895132343b8e1064288575a652f886c353a5ec" [label="/bin/sh -c pip install -r /home/user/requirements.txt" shape="box"];
  "sha256:ce2f6e234751a678f3fbbbc4401660c0e455e5464dcf4e53e923552344d07613" [label="sha256:ce2f6e234751a678f3fbbbc4401660c0e455e5464dcf4e53e923552344d07613" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:da7b473d8bdd3dcab468894953a6d33de97b4b3d01b091c50b76bd21d1cdcf29" [label=""];
  "sha256:da7b473d8bdd3dcab468894953a6d33de97b4b3d01b091c50b76bd21d1cdcf29" -> "sha256:34b034cf117a7a53c61d7554c7a1c1520ba08d66aa90d09025b131d2877f8a77" [label=""];
  "sha256:34b034cf117a7a53c61d7554c7a1c1520ba08d66aa90d09025b131d2877f8a77" -> "sha256:983a3d064a27d0dc7d2de2f2929bcdc8a0d1ad1fc41fc3c6b30445b35a40ae30" [label=""];
  "sha256:983a3d064a27d0dc7d2de2f2929bcdc8a0d1ad1fc41fc3c6b30445b35a40ae30" -> "sha256:f02ef0613a9418d29ddbb1de96107c661d43df86be264c6d9fcf9b1d402b9924" [label=""];
  "sha256:f02ef0613a9418d29ddbb1de96107c661d43df86be264c6d9fcf9b1d402b9924" -> "sha256:a70d82d4b5af7dacc977ba53107ab701730d5315881d9b43b10eba925963e58d" [label=""];
  "sha256:a70d82d4b5af7dacc977ba53107ab701730d5315881d9b43b10eba925963e58d" -> "sha256:0d2ab376c23b0534b778e94519831c5ec075d7caac4209dd0851c665b4638429" [label=""];
  "sha256:0d2ab376c23b0534b778e94519831c5ec075d7caac4209dd0851c665b4638429" -> "sha256:36e0840d73de7833cfdb44e4d04d03462b28e67be3c83281ae368821a81202b7" [label=""];
  "sha256:36e0840d73de7833cfdb44e4d04d03462b28e67be3c83281ae368821a81202b7" -> "sha256:84404bad29362e7b8f34f9d00779d072f2d25774063fec7fc6039e365aaaaa2c" [label=""];
  "sha256:234fe5dbfcbdc109e5a0ad5efa377f332089623d39587d03b796e2a4c3e64881" -> "sha256:84404bad29362e7b8f34f9d00779d072f2d25774063fec7fc6039e365aaaaa2c" [label=""];
  "sha256:84404bad29362e7b8f34f9d00779d072f2d25774063fec7fc6039e365aaaaa2c" -> "sha256:fd2ff901b48dcd7ebc590a3268b5c478abedd1fba3161be4aacc6c0c6eb5d2c6" [label=""];
  "sha256:234fe5dbfcbdc109e5a0ad5efa377f332089623d39587d03b796e2a4c3e64881" -> "sha256:fd2ff901b48dcd7ebc590a3268b5c478abedd1fba3161be4aacc6c0c6eb5d2c6" [label=""];
  "sha256:fd2ff901b48dcd7ebc590a3268b5c478abedd1fba3161be4aacc6c0c6eb5d2c6" -> "sha256:4ff9b74b96512a128d6e8a627f4e3954c16b19eaa403b133d17ddb62a25a4e4f" [label=""];
  "sha256:234fe5dbfcbdc109e5a0ad5efa377f332089623d39587d03b796e2a4c3e64881" -> "sha256:4ff9b74b96512a128d6e8a627f4e3954c16b19eaa403b133d17ddb62a25a4e4f" [label=""];
  "sha256:4ff9b74b96512a128d6e8a627f4e3954c16b19eaa403b133d17ddb62a25a4e4f" -> "sha256:c57c3fcd6faa3206efd0f0786af41e3db6f31a8f5b9018a20586839d3cf08ca4" [label=""];
  "sha256:234fe5dbfcbdc109e5a0ad5efa377f332089623d39587d03b796e2a4c3e64881" -> "sha256:c57c3fcd6faa3206efd0f0786af41e3db6f31a8f5b9018a20586839d3cf08ca4" [label=""];
  "sha256:c57c3fcd6faa3206efd0f0786af41e3db6f31a8f5b9018a20586839d3cf08ca4" -> "sha256:71e75b5c85b9ffd12e50c74537ece242b6f43494d24ecbe0e0c5ef0cfed036b2" [label=""];
  "sha256:234fe5dbfcbdc109e5a0ad5efa377f332089623d39587d03b796e2a4c3e64881" -> "sha256:71e75b5c85b9ffd12e50c74537ece242b6f43494d24ecbe0e0c5ef0cfed036b2" [label=""];
  "sha256:71e75b5c85b9ffd12e50c74537ece242b6f43494d24ecbe0e0c5ef0cfed036b2" -> "sha256:d8bbf07bf62955d58dc893bf61ec0baf681c52c97828e1acb8d060530903b98c" [label=""];
  "sha256:234fe5dbfcbdc109e5a0ad5efa377f332089623d39587d03b796e2a4c3e64881" -> "sha256:d8bbf07bf62955d58dc893bf61ec0baf681c52c97828e1acb8d060530903b98c" [label=""];
  "sha256:d8bbf07bf62955d58dc893bf61ec0baf681c52c97828e1acb8d060530903b98c" -> "sha256:1a5ea8b41b13c3408c12fce98d923a09e95c34b3616777f530d5f8a955b1319c" [label=""];
  "sha256:1a5ea8b41b13c3408c12fce98d923a09e95c34b3616777f530d5f8a955b1319c" -> "sha256:8d6e150a107b9a2175c3e4863b895132343b8e1064288575a652f886c353a5ec" [label=""];
  "sha256:8d6e150a107b9a2175c3e4863b895132343b8e1064288575a652f886c353a5ec" -> "sha256:ce2f6e234751a678f3fbbbc4401660c0e455e5464dcf4e53e923552344d07613" [label=""];
}

