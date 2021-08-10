[app/sources/144420638.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:2c67e5c8b2eaeb9366b0b09b279ebedfa41148a9275143b97ea7410ea8099d7f" [label="/bin/sh -c apt-get -qq update &&     apt-get -qqy install \tgit \tsudo" shape="box"];
  "sha256:fe79c18e626a8497bcf297db5505196386676373740a1a4058a2bab5cbdbc619" [label="local://context" shape="ellipse"];
  "sha256:2e715ab946c67cf3b5854d4332fe8c34afc060c5c73fa26705ebfecd691b28bf" [label="copy{src=/peercoin.tar.gz, dest=/peercoin.tar.gz}" shape="note"];
  "sha256:0772dbafbf72801811ab49c6cf7562a6fd1808c7528e0a872281ee78b54cf18c" [label="/bin/sh -c tar -xvf /peercoin.tar.gz" shape="box"];
  "sha256:e924c02a0a8f0052511c777fcea995dbeb6b13728f8ec458d3853ce3aae8386b" [label="/bin/sh -c cd /peercoin && ./scripts/dependencies-ubuntu.sh && ./scripts/install-ubuntu.sh && \tapt-get purge git build-essential -qy && \tapt-get autoremove -qy && \tapt-get clean" shape="box"];
  "sha256:8fa3bdc9ecef23545b471f85fbae04394c85bd95f5860090f2cf2fa913d78e21" [label="sha256:8fa3bdc9ecef23545b471f85fbae04394c85bd95f5860090f2cf2fa913d78e21" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:2c67e5c8b2eaeb9366b0b09b279ebedfa41148a9275143b97ea7410ea8099d7f" [label=""];
  "sha256:2c67e5c8b2eaeb9366b0b09b279ebedfa41148a9275143b97ea7410ea8099d7f" -> "sha256:2e715ab946c67cf3b5854d4332fe8c34afc060c5c73fa26705ebfecd691b28bf" [label=""];
  "sha256:fe79c18e626a8497bcf297db5505196386676373740a1a4058a2bab5cbdbc619" -> "sha256:2e715ab946c67cf3b5854d4332fe8c34afc060c5c73fa26705ebfecd691b28bf" [label=""];
  "sha256:2e715ab946c67cf3b5854d4332fe8c34afc060c5c73fa26705ebfecd691b28bf" -> "sha256:0772dbafbf72801811ab49c6cf7562a6fd1808c7528e0a872281ee78b54cf18c" [label=""];
  "sha256:0772dbafbf72801811ab49c6cf7562a6fd1808c7528e0a872281ee78b54cf18c" -> "sha256:e924c02a0a8f0052511c777fcea995dbeb6b13728f8ec458d3853ce3aae8386b" [label=""];
  "sha256:e924c02a0a8f0052511c777fcea995dbeb6b13728f8ec458d3853ce3aae8386b" -> "sha256:8fa3bdc9ecef23545b471f85fbae04394c85bd95f5860090f2cf2fa913d78e21" [label=""];
}

