[app/sources/199797358.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:c8a48636934d51f03899deeb0cb6a07d7e4325251833af206d91505f24c5ecb5" [label="/bin/sh -c apt-get update     && apt-get install subversion apache2 libapache2-svn apache2-utils -y" shape="box"];
  "sha256:cd230c0257d4994e9407794f0dc624a3ff4ec1e96573b0df4e305658d42ad743" [label="/bin/sh -c mkdir -p /svn/repos" shape="box"];
  "sha256:c3a8578700a4b98f4f70d17e738cb74fbdb95cc156690c5bb7b356f1d165328b" [label="local://context" shape="ellipse"];
  "sha256:ad6fb3c6b1fb278c2cf2c981293ef8daa63b35483c906a36a5490a6ab5df3813" [label="copy{src=/repo_template.conf, dest=/etc/apache2/sites-available/}" shape="note"];
  "sha256:7e416a0e781fc4aa899935e62065243309ea1a04532e9d2396cdba3a573dbf28" [label="copy{src=/run_apache.sh, dest=/var/www/}" shape="note"];
  "sha256:dc8e5a30a989ed693b0e19768b3435816a59d128eb5d06cf13d121ac947a068d" [label="/bin/sh -c chmod 755 /var/www/run_apache.sh" shape="box"];
  "sha256:f4cd7ee2ec7f965eb6e984419dd51ca0a1fb8be149d13e5eb72645e9d7174069" [label="sha256:f4cd7ee2ec7f965eb6e984419dd51ca0a1fb8be149d13e5eb72645e9d7174069" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:c8a48636934d51f03899deeb0cb6a07d7e4325251833af206d91505f24c5ecb5" [label=""];
  "sha256:c8a48636934d51f03899deeb0cb6a07d7e4325251833af206d91505f24c5ecb5" -> "sha256:cd230c0257d4994e9407794f0dc624a3ff4ec1e96573b0df4e305658d42ad743" [label=""];
  "sha256:cd230c0257d4994e9407794f0dc624a3ff4ec1e96573b0df4e305658d42ad743" -> "sha256:ad6fb3c6b1fb278c2cf2c981293ef8daa63b35483c906a36a5490a6ab5df3813" [label=""];
  "sha256:c3a8578700a4b98f4f70d17e738cb74fbdb95cc156690c5bb7b356f1d165328b" -> "sha256:ad6fb3c6b1fb278c2cf2c981293ef8daa63b35483c906a36a5490a6ab5df3813" [label=""];
  "sha256:ad6fb3c6b1fb278c2cf2c981293ef8daa63b35483c906a36a5490a6ab5df3813" -> "sha256:7e416a0e781fc4aa899935e62065243309ea1a04532e9d2396cdba3a573dbf28" [label=""];
  "sha256:c3a8578700a4b98f4f70d17e738cb74fbdb95cc156690c5bb7b356f1d165328b" -> "sha256:7e416a0e781fc4aa899935e62065243309ea1a04532e9d2396cdba3a573dbf28" [label=""];
  "sha256:7e416a0e781fc4aa899935e62065243309ea1a04532e9d2396cdba3a573dbf28" -> "sha256:dc8e5a30a989ed693b0e19768b3435816a59d128eb5d06cf13d121ac947a068d" [label=""];
  "sha256:dc8e5a30a989ed693b0e19768b3435816a59d128eb5d06cf13d121ac947a068d" -> "sha256:f4cd7ee2ec7f965eb6e984419dd51ca0a1fb8be149d13e5eb72645e9d7174069" [label=""];
}

