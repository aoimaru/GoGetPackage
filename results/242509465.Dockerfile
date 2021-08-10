[app/sources/242509465.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:841e9cf57738ba3f7c5c4ed84bbe34b40df743d32ed4ad99eba7afc30f0f3792" [label="local://context" shape="ellipse"];
  "sha256:5c4416a96f720346afdf8aac7b8957baf79ead99c17c2e4052999da32a078187" [label="copy{src=/*.war, dest=/app.war}" shape="note"];
  "sha256:8633359f8c9ea40e82339fab4f7161445cd1c5be2e4d627087e302a7239d3e1c" [label="sha256:8633359f8c9ea40e82339fab4f7161445cd1c5be2e4d627087e302a7239d3e1c" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:5c4416a96f720346afdf8aac7b8957baf79ead99c17c2e4052999da32a078187" [label=""];
  "sha256:841e9cf57738ba3f7c5c4ed84bbe34b40df743d32ed4ad99eba7afc30f0f3792" -> "sha256:5c4416a96f720346afdf8aac7b8957baf79ead99c17c2e4052999da32a078187" [label=""];
  "sha256:5c4416a96f720346afdf8aac7b8957baf79ead99c17c2e4052999da32a078187" -> "sha256:8633359f8c9ea40e82339fab4f7161445cd1c5be2e4d627087e302a7239d3e1c" [label=""];
}

