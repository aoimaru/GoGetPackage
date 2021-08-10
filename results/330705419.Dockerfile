[app/sources/330705419.Dockerfile]
digraph {
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:f7e858a3b9e4a0dc88c95b62453bfd586350243a0b8001569f4cc452d9e783fe" [label="local://context" shape="ellipse"];
  "sha256:8db3ad0399076abe3339fb58d444af006a7212787a241b486fa43b3473266b2d" [label="copy{src=/qanary_component-QB-Sina-0.0.1.jar, dest=/app.jar}" shape="note"];
  "sha256:ceb6bc79fb659c7bdf4d532f69316697515840e1ea3007bc79ee5e13dd31d7a7" [label="/bin/sh -c sh -c 'touch /app.jar'" shape="box"];
  "sha256:54d5431c132a620df990f6b6ad84384816153477e68293afe652617f354869ba" [label="sha256:54d5431c132a620df990f6b6ad84384816153477e68293afe652617f354869ba" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:8db3ad0399076abe3339fb58d444af006a7212787a241b486fa43b3473266b2d" [label=""];
  "sha256:f7e858a3b9e4a0dc88c95b62453bfd586350243a0b8001569f4cc452d9e783fe" -> "sha256:8db3ad0399076abe3339fb58d444af006a7212787a241b486fa43b3473266b2d" [label=""];
  "sha256:8db3ad0399076abe3339fb58d444af006a7212787a241b486fa43b3473266b2d" -> "sha256:ceb6bc79fb659c7bdf4d532f69316697515840e1ea3007bc79ee5e13dd31d7a7" [label=""];
  "sha256:ceb6bc79fb659c7bdf4d532f69316697515840e1ea3007bc79ee5e13dd31d7a7" -> "sha256:54d5431c132a620df990f6b6ad84384816153477e68293afe652617f354869ba" [label=""];
}

