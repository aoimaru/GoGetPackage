[app/sources/347208606.Dockerfile]
digraph {
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" [label="docker-image://docker.io/library/centos:centos7" shape="ellipse"];
  "sha256:2d9d3ea10083c77e88a387621bb927bf53b6bdd135a76c229d4f571efa1ee7f5" [label="/bin/sh -c yum -y install epel-release" shape="box"];
  "sha256:7b43563b90e9909a4052f1add08e6b54d7dc9df2c3cafd517d7c95b724e0f385" [label="/bin/sh -c yum -y install python-pip python-devel make gcc supervisor" shape="box"];
  "sha256:fb5bc0e26c22691d87c0b0c6745f0cbb6ebeaf7cf2cea6b655fb496833233d1e" [label="/bin/sh -c yum -y update" shape="box"];
  "sha256:a22e8b0cff2ae3e65dc50ecde7ad95cc4d1eac83911d43bcaf8182ed0a003e75" [label="/bin/sh -c mkdir -p /opt/sensu-grid" shape="box"];
  "sha256:d0d69f838258793230c8a23c847a4983406b29ef547fb40ca0bcd6dfae6f738e" [label="local://context" shape="ellipse"];
  "sha256:25815fb600ee78025d7025de2fc8c646ea56a7620ad8eb045d6d20eadec5c733" [label="copy{src=/templates, dest=/opt/sensu-grid/templates}" shape="note"];
  "sha256:b5bb75d7bd92837498fda4f26c1ad9732b0407dcf6720018e8f927aa5a92ed73" [label="copy{src=/static, dest=/opt/sensu-grid/static}" shape="note"];
  "sha256:afb120babaca81b4dab6e8a07c2928771f092565bf35ab664eabe5dba3567538" [label="copy{src=/conf, dest=/opt/sensu-grid/conf}" shape="note"];
  "sha256:cb02dff1ec7059d6a321d2bfa1c3a1b07eeb7ceef5af524ded6cc81208d0fc70" [label="copy{src=/requirements.txt, dest=/opt/sensu-grid/requirements.txt}" shape="note"];
  "sha256:b732d6d770a03fcd884c9fe21616062b78ddabe43957cf02d4360566fa283784" [label="copy{src=/*.py, dest=/opt/sensu-grid/}" shape="note"];
  "sha256:1a92e89bec45649e81d31c8127b12a63161530378077d75cd3e296788d6bb66e" [label="copy{src=/docker-start.sh, dest=/opt/sensu-grid/docker-start.sh}" shape="note"];
  "sha256:04d4f22054ba76c7cf28e07b39d2bbfd6d3aaff1a06421b8adff1032837c76a5" [label="/bin/sh -c pip install -U pip &&     pip install -r /opt/sensu-grid/requirements.txt" shape="box"];
  "sha256:df4b148292eb34670a0c0c6ef5993da7229927a4feda91524416ef46ba72acd0" [label="/bin/sh -c useradd -r sensu-grid" shape="box"];
  "sha256:408a380f44f8092555d3610f335b1dc2de786ae4ec236413ccf67a043c9751fc" [label="/bin/sh -c chown -R sensu-grid:sensu-grid /opt/sensu-grid" shape="box"];
  "sha256:ac67955aebf0983b158a38231e096c7828ed0522eed86c1739b6a36c6ebba298" [label="/bin/sh -c chmod 640 /opt/sensu-grid/conf/config.yaml && chmod 755 /opt/sensu-grid/docker-start.sh" shape="box"];
  "sha256:018f2dc6086d3df0b9712177239b1858490a071090fabfdc58f160509d3024d6" [label="/bin/sh -c touch /var/log/sensu-grid.log     && touch /var/log/sensu-grid.http.log     && chown sensu-grid:sensu-grid /var/log/sensu-grid.log /var/log/sensu-grid.http.log" shape="box"];
  "sha256:53310c7e44200f90d3838098e31c73a01030e4416ccca9935a2e43818b6744f7" [label="mkdir{path=/opt/sensu-grid}" shape="note"];
  "sha256:3fb361fa457c4d29a02507440ecfd43e89ae98fc6337ed221b33e9c3fdaa99de" [label="sha256:3fb361fa457c4d29a02507440ecfd43e89ae98fc6337ed221b33e9c3fdaa99de" shape="plaintext"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:2d9d3ea10083c77e88a387621bb927bf53b6bdd135a76c229d4f571efa1ee7f5" [label=""];
  "sha256:2d9d3ea10083c77e88a387621bb927bf53b6bdd135a76c229d4f571efa1ee7f5" -> "sha256:7b43563b90e9909a4052f1add08e6b54d7dc9df2c3cafd517d7c95b724e0f385" [label=""];
  "sha256:7b43563b90e9909a4052f1add08e6b54d7dc9df2c3cafd517d7c95b724e0f385" -> "sha256:fb5bc0e26c22691d87c0b0c6745f0cbb6ebeaf7cf2cea6b655fb496833233d1e" [label=""];
  "sha256:fb5bc0e26c22691d87c0b0c6745f0cbb6ebeaf7cf2cea6b655fb496833233d1e" -> "sha256:a22e8b0cff2ae3e65dc50ecde7ad95cc4d1eac83911d43bcaf8182ed0a003e75" [label=""];
  "sha256:a22e8b0cff2ae3e65dc50ecde7ad95cc4d1eac83911d43bcaf8182ed0a003e75" -> "sha256:25815fb600ee78025d7025de2fc8c646ea56a7620ad8eb045d6d20eadec5c733" [label=""];
  "sha256:d0d69f838258793230c8a23c847a4983406b29ef547fb40ca0bcd6dfae6f738e" -> "sha256:25815fb600ee78025d7025de2fc8c646ea56a7620ad8eb045d6d20eadec5c733" [label=""];
  "sha256:25815fb600ee78025d7025de2fc8c646ea56a7620ad8eb045d6d20eadec5c733" -> "sha256:b5bb75d7bd92837498fda4f26c1ad9732b0407dcf6720018e8f927aa5a92ed73" [label=""];
  "sha256:d0d69f838258793230c8a23c847a4983406b29ef547fb40ca0bcd6dfae6f738e" -> "sha256:b5bb75d7bd92837498fda4f26c1ad9732b0407dcf6720018e8f927aa5a92ed73" [label=""];
  "sha256:b5bb75d7bd92837498fda4f26c1ad9732b0407dcf6720018e8f927aa5a92ed73" -> "sha256:afb120babaca81b4dab6e8a07c2928771f092565bf35ab664eabe5dba3567538" [label=""];
  "sha256:d0d69f838258793230c8a23c847a4983406b29ef547fb40ca0bcd6dfae6f738e" -> "sha256:afb120babaca81b4dab6e8a07c2928771f092565bf35ab664eabe5dba3567538" [label=""];
  "sha256:afb120babaca81b4dab6e8a07c2928771f092565bf35ab664eabe5dba3567538" -> "sha256:cb02dff1ec7059d6a321d2bfa1c3a1b07eeb7ceef5af524ded6cc81208d0fc70" [label=""];
  "sha256:d0d69f838258793230c8a23c847a4983406b29ef547fb40ca0bcd6dfae6f738e" -> "sha256:cb02dff1ec7059d6a321d2bfa1c3a1b07eeb7ceef5af524ded6cc81208d0fc70" [label=""];
  "sha256:cb02dff1ec7059d6a321d2bfa1c3a1b07eeb7ceef5af524ded6cc81208d0fc70" -> "sha256:b732d6d770a03fcd884c9fe21616062b78ddabe43957cf02d4360566fa283784" [label=""];
  "sha256:d0d69f838258793230c8a23c847a4983406b29ef547fb40ca0bcd6dfae6f738e" -> "sha256:b732d6d770a03fcd884c9fe21616062b78ddabe43957cf02d4360566fa283784" [label=""];
  "sha256:b732d6d770a03fcd884c9fe21616062b78ddabe43957cf02d4360566fa283784" -> "sha256:1a92e89bec45649e81d31c8127b12a63161530378077d75cd3e296788d6bb66e" [label=""];
  "sha256:d0d69f838258793230c8a23c847a4983406b29ef547fb40ca0bcd6dfae6f738e" -> "sha256:1a92e89bec45649e81d31c8127b12a63161530378077d75cd3e296788d6bb66e" [label=""];
  "sha256:1a92e89bec45649e81d31c8127b12a63161530378077d75cd3e296788d6bb66e" -> "sha256:04d4f22054ba76c7cf28e07b39d2bbfd6d3aaff1a06421b8adff1032837c76a5" [label=""];
  "sha256:04d4f22054ba76c7cf28e07b39d2bbfd6d3aaff1a06421b8adff1032837c76a5" -> "sha256:df4b148292eb34670a0c0c6ef5993da7229927a4feda91524416ef46ba72acd0" [label=""];
  "sha256:df4b148292eb34670a0c0c6ef5993da7229927a4feda91524416ef46ba72acd0" -> "sha256:408a380f44f8092555d3610f335b1dc2de786ae4ec236413ccf67a043c9751fc" [label=""];
  "sha256:408a380f44f8092555d3610f335b1dc2de786ae4ec236413ccf67a043c9751fc" -> "sha256:ac67955aebf0983b158a38231e096c7828ed0522eed86c1739b6a36c6ebba298" [label=""];
  "sha256:ac67955aebf0983b158a38231e096c7828ed0522eed86c1739b6a36c6ebba298" -> "sha256:018f2dc6086d3df0b9712177239b1858490a071090fabfdc58f160509d3024d6" [label=""];
  "sha256:018f2dc6086d3df0b9712177239b1858490a071090fabfdc58f160509d3024d6" -> "sha256:53310c7e44200f90d3838098e31c73a01030e4416ccca9935a2e43818b6744f7" [label=""];
  "sha256:53310c7e44200f90d3838098e31c73a01030e4416ccca9935a2e43818b6744f7" -> "sha256:3fb361fa457c4d29a02507440ecfd43e89ae98fc6337ed221b33e9c3fdaa99de" [label=""];
}

