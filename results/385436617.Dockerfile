[app/sources/385436617.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:ce33820bf3eafbd9716dbc231b9083baba852595071706118d0bce99b142517d" [label="/bin/sh -c apt-get upgrade -y" shape="box"];
  "sha256:38db0b417b23240dc1217f1be29fb037671ceff10e746062f2c99b5c6dd48594" [label="/bin/sh -c apt-get install software-properties-common curl -y" shape="box"];
  "sha256:f129f6d3b98b6ca5729622de6741a7af755d4c35aa59fd3a881d5b98820f0638" [label="/bin/sh -c apt-add-repository ppa:webupd8team/java -y" shape="box"];
  "sha256:a632e48d49a0a4d83ec95c9ddfab9f2d035c2ef59dccfad78d0c7be736092fe5" [label="/bin/sh -c echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections  &&     echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections" shape="box"];
  "sha256:525dc24c807602bd1231ae58ef768d20757fcf0693ddd440be24677d862b287b" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:61664bf8974031dcaf567b67b556ac09bb2044e5f61180db50571570622bc88a" [label="/bin/sh -c apt-get install oracle-java8-installer -y" shape="box"];
  "sha256:6fce8aef8e22b0af1a338abdff968c80da340e70f8de69f21f92d8689f8b502d" [label="local://context" shape="ellipse"];
  "sha256:e7ae5dd497b4117c836f70ac6d5ff49c8449071dc9b4a137022a0a36dfd85133" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:43172027fe06b8ed2b01b8a892e8d6f828a1bb9590f186c4f560705627227db8" [label="/bin/sh -c chmod +x /start.sh" shape="box"];
  "sha256:5efcc0bbde61248646556df9656c4a76cecfdea36a07535f93569307d0791eaf" [label="sha256:5efcc0bbde61248646556df9656c4a76cecfdea36a07535f93569307d0791eaf" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label=""];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" -> "sha256:ce33820bf3eafbd9716dbc231b9083baba852595071706118d0bce99b142517d" [label=""];
  "sha256:ce33820bf3eafbd9716dbc231b9083baba852595071706118d0bce99b142517d" -> "sha256:38db0b417b23240dc1217f1be29fb037671ceff10e746062f2c99b5c6dd48594" [label=""];
  "sha256:38db0b417b23240dc1217f1be29fb037671ceff10e746062f2c99b5c6dd48594" -> "sha256:f129f6d3b98b6ca5729622de6741a7af755d4c35aa59fd3a881d5b98820f0638" [label=""];
  "sha256:f129f6d3b98b6ca5729622de6741a7af755d4c35aa59fd3a881d5b98820f0638" -> "sha256:a632e48d49a0a4d83ec95c9ddfab9f2d035c2ef59dccfad78d0c7be736092fe5" [label=""];
  "sha256:a632e48d49a0a4d83ec95c9ddfab9f2d035c2ef59dccfad78d0c7be736092fe5" -> "sha256:525dc24c807602bd1231ae58ef768d20757fcf0693ddd440be24677d862b287b" [label=""];
  "sha256:525dc24c807602bd1231ae58ef768d20757fcf0693ddd440be24677d862b287b" -> "sha256:61664bf8974031dcaf567b67b556ac09bb2044e5f61180db50571570622bc88a" [label=""];
  "sha256:61664bf8974031dcaf567b67b556ac09bb2044e5f61180db50571570622bc88a" -> "sha256:e7ae5dd497b4117c836f70ac6d5ff49c8449071dc9b4a137022a0a36dfd85133" [label=""];
  "sha256:6fce8aef8e22b0af1a338abdff968c80da340e70f8de69f21f92d8689f8b502d" -> "sha256:e7ae5dd497b4117c836f70ac6d5ff49c8449071dc9b4a137022a0a36dfd85133" [label=""];
  "sha256:e7ae5dd497b4117c836f70ac6d5ff49c8449071dc9b4a137022a0a36dfd85133" -> "sha256:43172027fe06b8ed2b01b8a892e8d6f828a1bb9590f186c4f560705627227db8" [label=""];
  "sha256:43172027fe06b8ed2b01b8a892e8d6f828a1bb9590f186c4f560705627227db8" -> "sha256:5efcc0bbde61248646556df9656c4a76cecfdea36a07535f93569307d0791eaf" [label=""];
}

