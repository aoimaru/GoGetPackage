[app/sources/252797073.Dockerfile]
digraph {
  "sha256:07c7ab6b0feaae8d7b19505eaa124f1cbc7cf52ddb48bfa1bae346d678575594" [label="docker-image://docker.io/library/node:slim" shape="ellipse"];
  "sha256:dd543a4a0d54e743b5ee52fd20baabb066b3987f4afe5b61c38778a51e0dba6f" [label="/bin/sh -c apt-get update && apt-get install -y git-core python make g++" shape="box"];
  "sha256:7bcf55ebb0fedb4d35b0304e2af6de53d65de58d1457841a2df1354331c39b53" [label="mkdir{path=/opt/cloudfleet/app}" shape="note"];
  "sha256:0c0257c834477c7fbad40544e1eba684d7599bf8a59c196936658aa8c73bd00b" [label="local://context" shape="ellipse"];
  "sha256:f50f81ca03abc8e5549d9f3e89cff794eaf403df30564e9053ebf84eb167c8fe" [label="copy{src=/package.json, dest=/opt/cloudfleet/app/}" shape="note"];
  "sha256:fa3cef690c4db4d7a8fff3c29a299b1e0fdee52bceb5439710d7a4eaf559668c" [label="/bin/sh -c npm install" shape="box"];
  "sha256:d49e460868f5a8bcd7e05b80118660841bf40dcd2b9ef0c7e784ca6d21464e4b" [label="copy{src=/, dest=/opt/cloudfleet/app}" shape="note"];
  "sha256:925c35c9c94ded5d45800464610a9d4e5c6a512c1f056af13d00e03362a505b7" [label="sha256:925c35c9c94ded5d45800464610a9d4e5c6a512c1f056af13d00e03362a505b7" shape="plaintext"];
  "sha256:07c7ab6b0feaae8d7b19505eaa124f1cbc7cf52ddb48bfa1bae346d678575594" -> "sha256:dd543a4a0d54e743b5ee52fd20baabb066b3987f4afe5b61c38778a51e0dba6f" [label=""];
  "sha256:dd543a4a0d54e743b5ee52fd20baabb066b3987f4afe5b61c38778a51e0dba6f" -> "sha256:7bcf55ebb0fedb4d35b0304e2af6de53d65de58d1457841a2df1354331c39b53" [label=""];
  "sha256:7bcf55ebb0fedb4d35b0304e2af6de53d65de58d1457841a2df1354331c39b53" -> "sha256:f50f81ca03abc8e5549d9f3e89cff794eaf403df30564e9053ebf84eb167c8fe" [label=""];
  "sha256:0c0257c834477c7fbad40544e1eba684d7599bf8a59c196936658aa8c73bd00b" -> "sha256:f50f81ca03abc8e5549d9f3e89cff794eaf403df30564e9053ebf84eb167c8fe" [label=""];
  "sha256:f50f81ca03abc8e5549d9f3e89cff794eaf403df30564e9053ebf84eb167c8fe" -> "sha256:fa3cef690c4db4d7a8fff3c29a299b1e0fdee52bceb5439710d7a4eaf559668c" [label=""];
  "sha256:fa3cef690c4db4d7a8fff3c29a299b1e0fdee52bceb5439710d7a4eaf559668c" -> "sha256:d49e460868f5a8bcd7e05b80118660841bf40dcd2b9ef0c7e784ca6d21464e4b" [label=""];
  "sha256:0c0257c834477c7fbad40544e1eba684d7599bf8a59c196936658aa8c73bd00b" -> "sha256:d49e460868f5a8bcd7e05b80118660841bf40dcd2b9ef0c7e784ca6d21464e4b" [label=""];
  "sha256:d49e460868f5a8bcd7e05b80118660841bf40dcd2b9ef0c7e784ca6d21464e4b" -> "sha256:925c35c9c94ded5d45800464610a9d4e5c6a512c1f056af13d00e03362a505b7" [label=""];
}

