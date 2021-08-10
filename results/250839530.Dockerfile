[app/sources/250839530.Dockerfile]
digraph {
  "sha256:8e56deee2bc48026d599d6b5da5a4f3eff0aef0ba4abe630e573fde21230a8e3" [label="docker-image://docker.io/confluentinc/cp-kafka-connect-base:4.1.2" shape="ellipse"];
  "sha256:85706b855acad3d370469e4be77e0db449f63e01c10aba5a14ab7146b85a278c" [label="local://context" shape="ellipse"];
  "sha256:64f971b317bdb16ddd625a06578c69d05814a0c6dc254806c75395b1b8464d3d" [label="copy{src=/connect-docker.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:276e4bfe3ae7e7fc4fa64bf570f9ef5f6af620391e445649e0299d418a1c855e" [label="chmod +x /usr/local/bin/connect-docker.sh" shape="box"];
  "sha256:6edeabffd5e8c79b6e3133c4d35ff7636457250c352f53d80f9d129df7aab87d" [label="mkdir /usr/logs" shape="box"];
  "sha256:6b1542deea484250f4036b9d59d4b15dccf96c5ac6777fca8ba92734c712813c" [label="chmod a+rwx /usr/logs" shape="box"];
  "sha256:e51316ed86797acb554bce5f3b48fa21a066cb5d6cdd516e2974a9bb5c38525e" [label="mkdir -p /usr/local/share/kafka/plugins/kafka-connect-bigquery" shape="box"];
  "sha256:8e334fe81e15ea67995414f9a1038d07940e4fdd84b6ae564d04afdf91639864" [label="chmod a+rwx /usr/local/share/kafka/plugins/kafka-connect-bigquery" shape="box"];
  "sha256:07816895931ed5712a893d77bc5986b377c79b03b4b8fb0266702caf1f1952fa" [label="sha256:07816895931ed5712a893d77bc5986b377c79b03b4b8fb0266702caf1f1952fa" shape="plaintext"];
  "sha256:8e56deee2bc48026d599d6b5da5a4f3eff0aef0ba4abe630e573fde21230a8e3" -> "sha256:64f971b317bdb16ddd625a06578c69d05814a0c6dc254806c75395b1b8464d3d" [label=""];
  "sha256:85706b855acad3d370469e4be77e0db449f63e01c10aba5a14ab7146b85a278c" -> "sha256:64f971b317bdb16ddd625a06578c69d05814a0c6dc254806c75395b1b8464d3d" [label=""];
  "sha256:64f971b317bdb16ddd625a06578c69d05814a0c6dc254806c75395b1b8464d3d" -> "sha256:276e4bfe3ae7e7fc4fa64bf570f9ef5f6af620391e445649e0299d418a1c855e" [label=""];
  "sha256:276e4bfe3ae7e7fc4fa64bf570f9ef5f6af620391e445649e0299d418a1c855e" -> "sha256:6edeabffd5e8c79b6e3133c4d35ff7636457250c352f53d80f9d129df7aab87d" [label=""];
  "sha256:6edeabffd5e8c79b6e3133c4d35ff7636457250c352f53d80f9d129df7aab87d" -> "sha256:6b1542deea484250f4036b9d59d4b15dccf96c5ac6777fca8ba92734c712813c" [label=""];
  "sha256:6b1542deea484250f4036b9d59d4b15dccf96c5ac6777fca8ba92734c712813c" -> "sha256:e51316ed86797acb554bce5f3b48fa21a066cb5d6cdd516e2974a9bb5c38525e" [label=""];
  "sha256:e51316ed86797acb554bce5f3b48fa21a066cb5d6cdd516e2974a9bb5c38525e" -> "sha256:8e334fe81e15ea67995414f9a1038d07940e4fdd84b6ae564d04afdf91639864" [label=""];
  "sha256:8e334fe81e15ea67995414f9a1038d07940e4fdd84b6ae564d04afdf91639864" -> "sha256:07816895931ed5712a893d77bc5986b377c79b03b4b8fb0266702caf1f1952fa" [label=""];
}

