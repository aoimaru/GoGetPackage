[app/sources/426855413.Dockerfile]
digraph {
  "sha256:a5d39839c39cd4bd7fb960856a647e2bb12c7b06ec949f6bf97790e3436e389c" [label="docker-image://docker.io/library/mysql:latest" shape="ellipse"];
  "sha256:1e17e8cdae84a559fdbbb9f8a9b1dd4e15faef9797c9dd865094948cf7c373af" [label="local://context" shape="ellipse"];
  "sha256:10273d01a59055400514d55724a47814b7e206bf8998b52356cb027855efd739" [label="copy{src=/world.sql, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:e244296249a5e312247bb6c9318a17e63c0de297430ddd45b897fddba7ec0551" [label="sha256:e244296249a5e312247bb6c9318a17e63c0de297430ddd45b897fddba7ec0551" shape="plaintext"];
  "sha256:a5d39839c39cd4bd7fb960856a647e2bb12c7b06ec949f6bf97790e3436e389c" -> "sha256:10273d01a59055400514d55724a47814b7e206bf8998b52356cb027855efd739" [label=""];
  "sha256:1e17e8cdae84a559fdbbb9f8a9b1dd4e15faef9797c9dd865094948cf7c373af" -> "sha256:10273d01a59055400514d55724a47814b7e206bf8998b52356cb027855efd739" [label=""];
  "sha256:10273d01a59055400514d55724a47814b7e206bf8998b52356cb027855efd739" -> "sha256:e244296249a5e312247bb6c9318a17e63c0de297430ddd45b897fddba7ec0551" [label=""];
}

