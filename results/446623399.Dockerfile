[app/sources/446623399.Dockerfile]
digraph {
  "sha256:d287cf5c49d32e1b1cb502a945e85d86a82c8299fc0293dfcf60b198bc81a274" [label="local://context" shape="ellipse"];
  "sha256:39aa437146e3055f34586ce4ffc3a9d3434547e0952fcb92edf4ad7bd84abd9c" [label="docker-image://docker.io/library/base-0.1.0:latest" shape="ellipse"];
  "sha256:88db99db8b45a542a6b09dfe22b8386b348bae245ac98912f43791b3b70d4c4e" [label="copy{src=/, dest=/startupdeathclock}" shape="note"];
  "sha256:c5c4de54839d8f5af43f66b5e293b904e2dd2250d91a1f30d4e83583eed9a036" [label="/bin/sh -c mkdir -p /startupdeathclock/data/hist" shape="box"];
  "sha256:78e538c5834390790bb9182803688e3e1492959d49442a62df1575a2258b00da" [label="mkdir{path=/startupdeathclock/srv}" shape="note"];
  "sha256:8097878aa333920005f8592c6db73b898fdfd67611e7b2ed05c20fbd07424f01" [label="sha256:8097878aa333920005f8592c6db73b898fdfd67611e7b2ed05c20fbd07424f01" shape="plaintext"];
  "sha256:39aa437146e3055f34586ce4ffc3a9d3434547e0952fcb92edf4ad7bd84abd9c" -> "sha256:88db99db8b45a542a6b09dfe22b8386b348bae245ac98912f43791b3b70d4c4e" [label=""];
  "sha256:d287cf5c49d32e1b1cb502a945e85d86a82c8299fc0293dfcf60b198bc81a274" -> "sha256:88db99db8b45a542a6b09dfe22b8386b348bae245ac98912f43791b3b70d4c4e" [label=""];
  "sha256:88db99db8b45a542a6b09dfe22b8386b348bae245ac98912f43791b3b70d4c4e" -> "sha256:c5c4de54839d8f5af43f66b5e293b904e2dd2250d91a1f30d4e83583eed9a036" [label=""];
  "sha256:c5c4de54839d8f5af43f66b5e293b904e2dd2250d91a1f30d4e83583eed9a036" -> "sha256:78e538c5834390790bb9182803688e3e1492959d49442a62df1575a2258b00da" [label=""];
  "sha256:78e538c5834390790bb9182803688e3e1492959d49442a62df1575a2258b00da" -> "sha256:8097878aa333920005f8592c6db73b898fdfd67611e7b2ed05c20fbd07424f01" [label=""];
}

