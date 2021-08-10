[app/sources/377493401.Dockerfile]
digraph {
  "sha256:79a3c0c09260a06e9becd522edea0ec8b4b8352c967641745ecfd4c62fdf718a" [label="local://context" shape="ellipse"];
  "sha256:6deb26f03955e867146fc35d7eb4a6a900f737ea2a5a3096c43a19c7c8805fc8" [label="docker-image://docker.io/library/python:3.6-slim" shape="ellipse"];
  "sha256:ba819f8587e5bead0df4c31fdd0679b0e139279e0e954d1819bf6bdf935ee3ba" [label="/bin/sh -c mkdir -p /src/" shape="box"];
  "sha256:a3bbd198ddb8f00ccdc57b7567af615d9bedd29547561e2ec11c37997a2109c1" [label="mkdir{path=/src}" shape="note"];
  "sha256:75f12faa43acaa41ffa31ac08a07dc8f45109544fafdc665a97431a55b0ba5a0" [label="copy{src=/requirements.txt, dest=/src}" shape="note"];
  "sha256:934513fa0d3d003c834ec430b67aaf55d2ad2452a7345b75cf83d5b5c3ad2188" [label="/bin/sh -c pip3 install --upgrade pip &&     pip3 install -r requirements.txt" shape="box"];
  "sha256:ea7d222e043183549fd28591163492d798807c9387c8c058cef99e179405da88" [label="copy{src=/run_task.py, dest=/src/}" shape="note"];
  "sha256:36f09d0a947a62dae5b337f04bdd60d94aa00ffee008ce7f33ed3f50d3c77173" [label="sha256:36f09d0a947a62dae5b337f04bdd60d94aa00ffee008ce7f33ed3f50d3c77173" shape="plaintext"];
  "sha256:6deb26f03955e867146fc35d7eb4a6a900f737ea2a5a3096c43a19c7c8805fc8" -> "sha256:ba819f8587e5bead0df4c31fdd0679b0e139279e0e954d1819bf6bdf935ee3ba" [label=""];
  "sha256:ba819f8587e5bead0df4c31fdd0679b0e139279e0e954d1819bf6bdf935ee3ba" -> "sha256:a3bbd198ddb8f00ccdc57b7567af615d9bedd29547561e2ec11c37997a2109c1" [label=""];
  "sha256:a3bbd198ddb8f00ccdc57b7567af615d9bedd29547561e2ec11c37997a2109c1" -> "sha256:75f12faa43acaa41ffa31ac08a07dc8f45109544fafdc665a97431a55b0ba5a0" [label=""];
  "sha256:79a3c0c09260a06e9becd522edea0ec8b4b8352c967641745ecfd4c62fdf718a" -> "sha256:75f12faa43acaa41ffa31ac08a07dc8f45109544fafdc665a97431a55b0ba5a0" [label=""];
  "sha256:75f12faa43acaa41ffa31ac08a07dc8f45109544fafdc665a97431a55b0ba5a0" -> "sha256:934513fa0d3d003c834ec430b67aaf55d2ad2452a7345b75cf83d5b5c3ad2188" [label=""];
  "sha256:934513fa0d3d003c834ec430b67aaf55d2ad2452a7345b75cf83d5b5c3ad2188" -> "sha256:ea7d222e043183549fd28591163492d798807c9387c8c058cef99e179405da88" [label=""];
  "sha256:79a3c0c09260a06e9becd522edea0ec8b4b8352c967641745ecfd4c62fdf718a" -> "sha256:ea7d222e043183549fd28591163492d798807c9387c8c058cef99e179405da88" [label=""];
  "sha256:ea7d222e043183549fd28591163492d798807c9387c8c058cef99e179405da88" -> "sha256:36f09d0a947a62dae5b337f04bdd60d94aa00ffee008ce7f33ed3f50d3c77173" [label=""];
}

