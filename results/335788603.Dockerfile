[app/sources/335788603.Dockerfile]
digraph {
  "sha256:d9410b1b253d081511e25b330aae125c52073875e8d68b1886f41a2ac0a2de21" [label="local://context" shape="ellipse"];
  "sha256:ad2b73e23626767006637e5a72a606646938f8d0ff52b6832810b399c556624c" [label="copy{src=/airflow-prometheus-exporter, dest=/airflow-prometheus-exporter}" shape="note"];
  "sha256:1e7ddcc5aa5fa9a7ac2623cbb3a02cabe32594c252db474ccd3ba5f81e2fbbb0" [label="sha256:1e7ddcc5aa5fa9a7ac2623cbb3a02cabe32594c252db474ccd3ba5f81e2fbbb0" shape="plaintext"];
  "sha256:d9410b1b253d081511e25b330aae125c52073875e8d68b1886f41a2ac0a2de21" -> "sha256:ad2b73e23626767006637e5a72a606646938f8d0ff52b6832810b399c556624c" [label=""];
  "sha256:ad2b73e23626767006637e5a72a606646938f8d0ff52b6832810b399c556624c" -> "sha256:1e7ddcc5aa5fa9a7ac2623cbb3a02cabe32594c252db474ccd3ba5f81e2fbbb0" [label=""];
}

