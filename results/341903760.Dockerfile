[app/sources/341903760.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:8ce0ee9353d0d91390a0644e7fcdd2b9f05e23aa6cd5fd8e999faaf31f1b8d21" [label="local://context" shape="ellipse"];
  "sha256:14695acb087dc234caade50870a36ab53be484e845755f396f45066a559e9ece" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:15ae7301febe49f196f05c8c12ac0284dce30fddf54fb2afd391c3ca8f71e6dc" [label="pip install twython" shape="box"];
  "sha256:99194ac63db9383445db7e0a89c4eb7e01e09130622cd75d99dc89e51b092094" [label="pip install unicodecsv" shape="box"];
  "sha256:fba01d9a0a1f6c2c609e8fb363dd8ff8d1b8a825dd435456c27f5b37e47a4289" [label="sha256:fba01d9a0a1f6c2c609e8fb363dd8ff8d1b8a825dd435456c27f5b37e47a4289" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:14695acb087dc234caade50870a36ab53be484e845755f396f45066a559e9ece" [label=""];
  "sha256:8ce0ee9353d0d91390a0644e7fcdd2b9f05e23aa6cd5fd8e999faaf31f1b8d21" -> "sha256:14695acb087dc234caade50870a36ab53be484e845755f396f45066a559e9ece" [label=""];
  "sha256:14695acb087dc234caade50870a36ab53be484e845755f396f45066a559e9ece" -> "sha256:15ae7301febe49f196f05c8c12ac0284dce30fddf54fb2afd391c3ca8f71e6dc" [label=""];
  "sha256:15ae7301febe49f196f05c8c12ac0284dce30fddf54fb2afd391c3ca8f71e6dc" -> "sha256:99194ac63db9383445db7e0a89c4eb7e01e09130622cd75d99dc89e51b092094" [label=""];
  "sha256:99194ac63db9383445db7e0a89c4eb7e01e09130622cd75d99dc89e51b092094" -> "sha256:fba01d9a0a1f6c2c609e8fb363dd8ff8d1b8a825dd435456c27f5b37e47a4289" [label=""];
}

