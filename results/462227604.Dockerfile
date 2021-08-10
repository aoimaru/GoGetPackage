[app/sources/462227604.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:5dec89d76035f5de560caed91d8274d638cea92fbdef7729e59884b4da2f5ef8" [label="mkdir{path=/app}" shape="note"];
  "sha256:fdab3f3c12c6f7dc42a9809a7c147d20b2451a4b1593545fa1276058960a8b10" [label="local://context" shape="ellipse"];
  "sha256:060d9e76f2ac3b70243fac6713bb5249abddb67bac987d441871195277f50372" [label="copy{src=/app/tcp-server.linux, dest=/app/}" shape="note"];
  "sha256:24e5c547a71ef4fbfe0030a3a11c98680328d4eb51690fb95c3842b6b8e8c12f" [label="copy{src=/config, dest=/app/}" shape="note"];
  "sha256:451f87d72c55b842002b6a6ba294eb0522b45f4aeaa6e5178f731d8fa0e502f1" [label="sha256:451f87d72c55b842002b6a6ba294eb0522b45f4aeaa6e5178f731d8fa0e502f1" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:5dec89d76035f5de560caed91d8274d638cea92fbdef7729e59884b4da2f5ef8" [label=""];
  "sha256:5dec89d76035f5de560caed91d8274d638cea92fbdef7729e59884b4da2f5ef8" -> "sha256:060d9e76f2ac3b70243fac6713bb5249abddb67bac987d441871195277f50372" [label=""];
  "sha256:fdab3f3c12c6f7dc42a9809a7c147d20b2451a4b1593545fa1276058960a8b10" -> "sha256:060d9e76f2ac3b70243fac6713bb5249abddb67bac987d441871195277f50372" [label=""];
  "sha256:060d9e76f2ac3b70243fac6713bb5249abddb67bac987d441871195277f50372" -> "sha256:24e5c547a71ef4fbfe0030a3a11c98680328d4eb51690fb95c3842b6b8e8c12f" [label=""];
  "sha256:fdab3f3c12c6f7dc42a9809a7c147d20b2451a4b1593545fa1276058960a8b10" -> "sha256:24e5c547a71ef4fbfe0030a3a11c98680328d4eb51690fb95c3842b6b8e8c12f" [label=""];
  "sha256:24e5c547a71ef4fbfe0030a3a11c98680328d4eb51690fb95c3842b6b8e8c12f" -> "sha256:451f87d72c55b842002b6a6ba294eb0522b45f4aeaa6e5178f731d8fa0e502f1" [label=""];
}

