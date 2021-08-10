[app/sources/252791128.Dockerfile]
digraph {
  "sha256:fda832e68fc9067f9be0f43ccebb2b40764c264af49b82b558b1b8b600417776" [label="docker-image://docker.io/cybe/ps-nginx-base:alpine37" shape="ellipse"];
  "sha256:151d50cabb4881d6d9f7b13323439c1258bcbda4bbc62ec32478d749562cd9f2" [label="local://context" shape="ellipse"];
  "sha256:af53632ac628034b6a36450d62e5725a0ad413e052cb6ed2d1fdcf1539196f59" [label="copy{src=/files, dest=/etc/nginx/sites/}" shape="note"];
  "sha256:9f4c895c3f6b13871d78f974e303b292ced650b2c0c3d6a55f09fc75f7a4a3c8" [label="sha256:9f4c895c3f6b13871d78f974e303b292ced650b2c0c3d6a55f09fc75f7a4a3c8" shape="plaintext"];
  "sha256:fda832e68fc9067f9be0f43ccebb2b40764c264af49b82b558b1b8b600417776" -> "sha256:af53632ac628034b6a36450d62e5725a0ad413e052cb6ed2d1fdcf1539196f59" [label=""];
  "sha256:151d50cabb4881d6d9f7b13323439c1258bcbda4bbc62ec32478d749562cd9f2" -> "sha256:af53632ac628034b6a36450d62e5725a0ad413e052cb6ed2d1fdcf1539196f59" [label=""];
  "sha256:af53632ac628034b6a36450d62e5725a0ad413e052cb6ed2d1fdcf1539196f59" -> "sha256:9f4c895c3f6b13871d78f974e303b292ced650b2c0c3d6a55f09fc75f7a4a3c8" [label=""];
}

