[app/sources/252775423.Dockerfile]
digraph {
  "sha256:3050e433a37215c0d79713c5ea8d34f59f5dca979146d94b6ff1fa7ff30792e2" [label="local://context" shape="ellipse"];
  "sha256:207237cf3203f4e03c369c3ad465d289de1d5c9af831688ebcfa671433e20ccb" [label="docker-image://docker.io/library/node:4" shape="ellipse"];
  "sha256:6a3d3e1e431d9cb95ff176b6b34af3a792fb26e8562fe5b9356c1f08a0543e7f" [label="/bin/sh -c mkdir -p /srv" shape="box"];
  "sha256:c8faffcc415eb3bdce375d86f82173db0bea4eca744da2cda7a601ee7efb28e2" [label="mkdir{path=/srv}" shape="note"];
  "sha256:afb5eca916fd1243cbe53d97e04629949d255f015620c940b0bf117dfce71c32" [label="copy{src=/, dest=/srv}" shape="note"];
  "sha256:dd6cf4daa4a0d14104869a9b598d1005739a71708fd4b8dc640c5473a19d3d03" [label="/bin/sh -c npm install" shape="box"];
  "sha256:9d729f779b008a83fcbea23865e8e59d531f25b6a577175892ea405c3879a7f7" [label="sha256:9d729f779b008a83fcbea23865e8e59d531f25b6a577175892ea405c3879a7f7" shape="plaintext"];
  "sha256:207237cf3203f4e03c369c3ad465d289de1d5c9af831688ebcfa671433e20ccb" -> "sha256:6a3d3e1e431d9cb95ff176b6b34af3a792fb26e8562fe5b9356c1f08a0543e7f" [label=""];
  "sha256:6a3d3e1e431d9cb95ff176b6b34af3a792fb26e8562fe5b9356c1f08a0543e7f" -> "sha256:c8faffcc415eb3bdce375d86f82173db0bea4eca744da2cda7a601ee7efb28e2" [label=""];
  "sha256:c8faffcc415eb3bdce375d86f82173db0bea4eca744da2cda7a601ee7efb28e2" -> "sha256:afb5eca916fd1243cbe53d97e04629949d255f015620c940b0bf117dfce71c32" [label=""];
  "sha256:3050e433a37215c0d79713c5ea8d34f59f5dca979146d94b6ff1fa7ff30792e2" -> "sha256:afb5eca916fd1243cbe53d97e04629949d255f015620c940b0bf117dfce71c32" [label=""];
  "sha256:afb5eca916fd1243cbe53d97e04629949d255f015620c940b0bf117dfce71c32" -> "sha256:dd6cf4daa4a0d14104869a9b598d1005739a71708fd4b8dc640c5473a19d3d03" [label=""];
  "sha256:dd6cf4daa4a0d14104869a9b598d1005739a71708fd4b8dc640c5473a19d3d03" -> "sha256:9d729f779b008a83fcbea23865e8e59d531f25b6a577175892ea405c3879a7f7" [label=""];
}

