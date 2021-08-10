[app/sources/252783681.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:25a30997e7360d86f6ad197784d3a243d8450dea60dcdbca379814aebfaa604c" [label="/bin/sh -c useradd docker && mkdir /home/docker && chown docker:docker /home/docker && addgroup docker staff" shape="box"];
  "sha256:725cb4f43e15552f75db4c4d20589d5d5c6bb5e86f39a97e250c2a6b05fe2b54" [label="/bin/sh -c apt-get update && apt-get install -y make wget nano curl sqlite3 libsqlite3-dev flex ruby-full ruby-rubyforge && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:dd1e6d14ac4033ac96c3feff43489052abbfcd864df0b2a4c9bf181f6fd6fc5c" [label="/bin/sh -c wget https://colebrokamp-dropbox.s3.amazonaws.com/geocoder.db -P /opt" shape="box"];
  "sha256:2118709f9e355521b1d29692b5630d302b2fc218b4e77c2bb17c6866b1e96bdc" [label="/bin/sh -c apt-get update && apt-get install -y apt-file && apt-file update && apt-get install software-properties-common -y && apt-add-repository ppa:brightbox/ruby-ng && apt-get update && apt-get install ruby2.2 ruby2.2-dev -y && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:4eca9a5ce784c007c8be8e02ee72341d0a1a081363e66c2947e963ce2f1dac90" [label="/bin/sh -c gem install sqlite3" shape="box"];
  "sha256:d2a0ec89e2693c1605893c5fc79f4a44896ad431d69c46e3ca55a387ff8cc8a9" [label="/bin/sh -c mkdir /root/geocoder" shape="box"];
  "sha256:04593674041c82b3d899d24858e440580afa34830176c4e1e0a0e8c92ab6b072" [label="local://context" shape="ellipse"];
  "sha256:772887e38f9d116c663ed4e1a3fdf4c05809a38cc637acc1003d94d1ce19b497" [label="copy{src=/, dest=/root/geocoder}" shape="note"];
  "sha256:9bbf30627433377259bab74e214f08821b0ad2bdd356cc4dad50aa47d550c0c8" [label="/bin/sh -c chmod +x /root/geocoder/geocode.rb" shape="box"];
  "sha256:030ed7035804d8ab7b6bcc2bbf59eb138663aff30d5a8de3aeb700c3b74d2f6b" [label="/bin/sh -c cd /root/geocoder && make install && gem install Geocoder-US-2.0.4.gem" shape="box"];
  "sha256:1c285c91972e35cce5184b10a3940b089af8fc1f9157691e3342689482153e4d" [label="sha256:1c285c91972e35cce5184b10a3940b089af8fc1f9157691e3342689482153e4d" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:25a30997e7360d86f6ad197784d3a243d8450dea60dcdbca379814aebfaa604c" [label=""];
  "sha256:25a30997e7360d86f6ad197784d3a243d8450dea60dcdbca379814aebfaa604c" -> "sha256:725cb4f43e15552f75db4c4d20589d5d5c6bb5e86f39a97e250c2a6b05fe2b54" [label=""];
  "sha256:725cb4f43e15552f75db4c4d20589d5d5c6bb5e86f39a97e250c2a6b05fe2b54" -> "sha256:dd1e6d14ac4033ac96c3feff43489052abbfcd864df0b2a4c9bf181f6fd6fc5c" [label=""];
  "sha256:dd1e6d14ac4033ac96c3feff43489052abbfcd864df0b2a4c9bf181f6fd6fc5c" -> "sha256:2118709f9e355521b1d29692b5630d302b2fc218b4e77c2bb17c6866b1e96bdc" [label=""];
  "sha256:2118709f9e355521b1d29692b5630d302b2fc218b4e77c2bb17c6866b1e96bdc" -> "sha256:4eca9a5ce784c007c8be8e02ee72341d0a1a081363e66c2947e963ce2f1dac90" [label=""];
  "sha256:4eca9a5ce784c007c8be8e02ee72341d0a1a081363e66c2947e963ce2f1dac90" -> "sha256:d2a0ec89e2693c1605893c5fc79f4a44896ad431d69c46e3ca55a387ff8cc8a9" [label=""];
  "sha256:d2a0ec89e2693c1605893c5fc79f4a44896ad431d69c46e3ca55a387ff8cc8a9" -> "sha256:772887e38f9d116c663ed4e1a3fdf4c05809a38cc637acc1003d94d1ce19b497" [label=""];
  "sha256:04593674041c82b3d899d24858e440580afa34830176c4e1e0a0e8c92ab6b072" -> "sha256:772887e38f9d116c663ed4e1a3fdf4c05809a38cc637acc1003d94d1ce19b497" [label=""];
  "sha256:772887e38f9d116c663ed4e1a3fdf4c05809a38cc637acc1003d94d1ce19b497" -> "sha256:9bbf30627433377259bab74e214f08821b0ad2bdd356cc4dad50aa47d550c0c8" [label=""];
  "sha256:9bbf30627433377259bab74e214f08821b0ad2bdd356cc4dad50aa47d550c0c8" -> "sha256:030ed7035804d8ab7b6bcc2bbf59eb138663aff30d5a8de3aeb700c3b74d2f6b" [label=""];
  "sha256:030ed7035804d8ab7b6bcc2bbf59eb138663aff30d5a8de3aeb700c3b74d2f6b" -> "sha256:1c285c91972e35cce5184b10a3940b089af8fc1f9157691e3342689482153e4d" [label=""];
}

