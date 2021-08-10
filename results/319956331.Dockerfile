[app/sources/319956331.Dockerfile]
digraph {
  "sha256:f7ca40a421372cfba586482f432bde258bf377a3a7cc932ad25cd89e82583053" [label="docker-image://docker.io/library/golang:1.10" shape="ellipse"];
  "sha256:f92d66c9b2aa484ab5ca306370cc1fbf0e6faeb37a8957e96c0692d16edec522" [label="/bin/sh -c useradd -r lnd   && go get -u github.com/golang/dep/cmd/dep   && git clone https://github.com/lightningnetwork/lnd $GOPATH/src/github.com/lightningnetwork/lnd" shape="box"];
  "sha256:4d8dd71cc1a14f491fb78223ca406c6cfe0c50bb265fafced6ef4d98aa401575" [label="mkdir{path=/src/github.com/lightningnetwork/lnd}" shape="note"];
  "sha256:807c0640bf7917b5b1734efef795063fb077f4ba82b730ca411b33c6f430e582" [label="/bin/sh -c dep ensure" shape="box"];
  "sha256:cfcebe7e8909f0b182488be48548a0f280504a23cc885b8411496d18cee49e38" [label="/bin/sh -c go install . ./cmd/..." shape="box"];
  "sha256:1516ab43b64ec48bb5127d9220847f806edb8e82bdd5bfa797ba03cab0677e24" [label="/bin/sh -c mkdir -p /home/lnd/.lnd" shape="box"];
  "sha256:fbf9fc7c5d5cd85c38dbab10f7b7b3cde21bb6a7fda8925d470021ef1038604c" [label="/bin/sh -c mkdir -p /home/lnd/.bitcoin" shape="box"];
  "sha256:c8e1da6428f4d3ed8955b793b2f3e85e2898c013dd3ad4784818b34f4139ba30" [label="/bin/sh -c chown -R lnd /home/lnd/.lnd" shape="box"];
  "sha256:fe58612f35f0b74469bef9c53d1f525a896aa4cbe476144fe846066e3a57ea4c" [label="/bin/sh -c chown -R lnd /home/lnd/.bitcoin" shape="box"];
  "sha256:87d29d9489b9e769f2734ba4cfd907117c3c0b61ab808bf2e1f560d46cf37716" [label="local://context" shape="ellipse"];
  "sha256:369956cbd74779ff97b99228d526744655856eb5ff83962e8ee9e3841ea37210" [label="copy{src=/start-lnd.sh, dest=/src/github.com/lightningnetwork/lnd/}" shape="note"];
  "sha256:3f5fc20fbe5a52fd339c406a63126df0df1277f4ea29f03d7a08c1de1a837336" [label="/bin/sh -c chmod +x start-lnd.sh" shape="box"];
  "sha256:3f53b7deeb6f61549109af75072c5337e5906f34d60b7852bcd0f3ef4138eedf" [label="sha256:3f53b7deeb6f61549109af75072c5337e5906f34d60b7852bcd0f3ef4138eedf" shape="plaintext"];
  "sha256:f7ca40a421372cfba586482f432bde258bf377a3a7cc932ad25cd89e82583053" -> "sha256:f92d66c9b2aa484ab5ca306370cc1fbf0e6faeb37a8957e96c0692d16edec522" [label=""];
  "sha256:f92d66c9b2aa484ab5ca306370cc1fbf0e6faeb37a8957e96c0692d16edec522" -> "sha256:4d8dd71cc1a14f491fb78223ca406c6cfe0c50bb265fafced6ef4d98aa401575" [label=""];
  "sha256:4d8dd71cc1a14f491fb78223ca406c6cfe0c50bb265fafced6ef4d98aa401575" -> "sha256:807c0640bf7917b5b1734efef795063fb077f4ba82b730ca411b33c6f430e582" [label=""];
  "sha256:807c0640bf7917b5b1734efef795063fb077f4ba82b730ca411b33c6f430e582" -> "sha256:cfcebe7e8909f0b182488be48548a0f280504a23cc885b8411496d18cee49e38" [label=""];
  "sha256:cfcebe7e8909f0b182488be48548a0f280504a23cc885b8411496d18cee49e38" -> "sha256:1516ab43b64ec48bb5127d9220847f806edb8e82bdd5bfa797ba03cab0677e24" [label=""];
  "sha256:1516ab43b64ec48bb5127d9220847f806edb8e82bdd5bfa797ba03cab0677e24" -> "sha256:fbf9fc7c5d5cd85c38dbab10f7b7b3cde21bb6a7fda8925d470021ef1038604c" [label=""];
  "sha256:fbf9fc7c5d5cd85c38dbab10f7b7b3cde21bb6a7fda8925d470021ef1038604c" -> "sha256:c8e1da6428f4d3ed8955b793b2f3e85e2898c013dd3ad4784818b34f4139ba30" [label=""];
  "sha256:c8e1da6428f4d3ed8955b793b2f3e85e2898c013dd3ad4784818b34f4139ba30" -> "sha256:fe58612f35f0b74469bef9c53d1f525a896aa4cbe476144fe846066e3a57ea4c" [label=""];
  "sha256:fe58612f35f0b74469bef9c53d1f525a896aa4cbe476144fe846066e3a57ea4c" -> "sha256:369956cbd74779ff97b99228d526744655856eb5ff83962e8ee9e3841ea37210" [label=""];
  "sha256:87d29d9489b9e769f2734ba4cfd907117c3c0b61ab808bf2e1f560d46cf37716" -> "sha256:369956cbd74779ff97b99228d526744655856eb5ff83962e8ee9e3841ea37210" [label=""];
  "sha256:369956cbd74779ff97b99228d526744655856eb5ff83962e8ee9e3841ea37210" -> "sha256:3f5fc20fbe5a52fd339c406a63126df0df1277f4ea29f03d7a08c1de1a837336" [label=""];
  "sha256:3f5fc20fbe5a52fd339c406a63126df0df1277f4ea29f03d7a08c1de1a837336" -> "sha256:3f53b7deeb6f61549109af75072c5337e5906f34d60b7852bcd0f3ef4138eedf" [label=""];
}

