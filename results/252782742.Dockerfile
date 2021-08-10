[app/sources/252782742.Dockerfile]
digraph {
  "sha256:611dadfe9eba54df1a5da0b78d8825f99f466351d57db3b3ed2f6f33bde77bcb" [label="local://context" shape="ellipse"];
  "sha256:94c8e155129cd9767fcd688ce4e6d01de022fe45f85ce389b65ef62b1bad18d7" [label="docker-image://docker.io/library/python:3.6@sha256:2f164d0ac525779ce1f3b1e27422fb099c013270f88e2cbfa96f110b0858fa55" shape="ellipse"];
  "sha256:fc56deb1acc33f2d8577d82b6fd9d7afc7975127eb365406d48ca965ab40cb2c" [label="mkdir{path=/src}" shape="note"];
  "sha256:4bba1a7de705c2e0553d7564e6036c394c2f6dad34eae95e8e349796da0113e6" [label="copy{src=/Pipfile*, dest=/src/},copy{src=/pipenv.txt, dest=/src/}" shape="note"];
  "sha256:e2117635f9caf3d5122cd6c45a0f014b82b5e68e9b10d37278fabc3da6d988a4" [label="/bin/sh -c pip install -r pipenv.txt && pipenv install --system --deploy" shape="box"];
  "sha256:2115753115128e412891786304c7383eee37cd46c05f7e648aee1d042b7d14ab" [label="copy{src=/active_data.py, dest=/src/},copy{src=/generate.py, dest=/src/},copy{src=/template.html, dest=/src/}" shape="note"];
  "sha256:524826d86ffa4ffa639173d4b99dd944a84bee40ffb16663075152f585a69cdb" [label="copy{src=/queries, dest=/src/queries/}" shape="note"];
  "sha256:ae6664023014e1cd4a038cb2d7315bc7e12b33d00d28bf867d90c81a4d040443" [label="sha256:ae6664023014e1cd4a038cb2d7315bc7e12b33d00d28bf867d90c81a4d040443" shape="plaintext"];
  "sha256:94c8e155129cd9767fcd688ce4e6d01de022fe45f85ce389b65ef62b1bad18d7" -> "sha256:fc56deb1acc33f2d8577d82b6fd9d7afc7975127eb365406d48ca965ab40cb2c" [label=""];
  "sha256:fc56deb1acc33f2d8577d82b6fd9d7afc7975127eb365406d48ca965ab40cb2c" -> "sha256:4bba1a7de705c2e0553d7564e6036c394c2f6dad34eae95e8e349796da0113e6" [label=""];
  "sha256:611dadfe9eba54df1a5da0b78d8825f99f466351d57db3b3ed2f6f33bde77bcb" -> "sha256:4bba1a7de705c2e0553d7564e6036c394c2f6dad34eae95e8e349796da0113e6" [label=""];
  "sha256:4bba1a7de705c2e0553d7564e6036c394c2f6dad34eae95e8e349796da0113e6" -> "sha256:e2117635f9caf3d5122cd6c45a0f014b82b5e68e9b10d37278fabc3da6d988a4" [label=""];
  "sha256:e2117635f9caf3d5122cd6c45a0f014b82b5e68e9b10d37278fabc3da6d988a4" -> "sha256:2115753115128e412891786304c7383eee37cd46c05f7e648aee1d042b7d14ab" [label=""];
  "sha256:611dadfe9eba54df1a5da0b78d8825f99f466351d57db3b3ed2f6f33bde77bcb" -> "sha256:2115753115128e412891786304c7383eee37cd46c05f7e648aee1d042b7d14ab" [label=""];
  "sha256:2115753115128e412891786304c7383eee37cd46c05f7e648aee1d042b7d14ab" -> "sha256:524826d86ffa4ffa639173d4b99dd944a84bee40ffb16663075152f585a69cdb" [label=""];
  "sha256:611dadfe9eba54df1a5da0b78d8825f99f466351d57db3b3ed2f6f33bde77bcb" -> "sha256:524826d86ffa4ffa639173d4b99dd944a84bee40ffb16663075152f585a69cdb" [label=""];
  "sha256:524826d86ffa4ffa639173d4b99dd944a84bee40ffb16663075152f585a69cdb" -> "sha256:ae6664023014e1cd4a038cb2d7315bc7e12b33d00d28bf867d90c81a4d040443" [label=""];
}

