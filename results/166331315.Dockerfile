[app/sources/166331315.Dockerfile]
digraph {
  "sha256:0d61ba26522b24ee7308064e7916b7f7ba90eb1da4e9121ee2939a543b4272ee" [label="docker-image://docker.io/voxxit/base:alpine" shape="ellipse"];
  "sha256:96f65b8c2ce338774f7be5cfdd968ab2fc5411f2f32de4e525d2b1b73f187fca" [label="mkdir{path=/usr/local/gogs}" shape="note"];
  "sha256:68a4b935000165a67d82df25af6334c1653d3a980d1fdcf981a4c0e5bd9d9e44" [label="/bin/sh -c apk add --update libc-dev gcc curl go git openssh   && curl -fsSL -o /usr/local/gogs.zip http://git.io/mAWxew   && unzip -o /usr/local/gogs.zip   && export GOPATH=\"/go\"   && go get -v -tags $GOGS_TAGS $GOGS_REPO   && go build -v -tags $GOGS_TAGS $GOGS_REPO   && adduser -h /usr/local/gogs -s /bin/bash -D -H git   && apk del libc-dev gcc go curl   && rm -rf /usr/local/gogs.zip /go /var/cache/apk/*" shape="box"];
  "sha256:ce41628b1747aed2ff9a3bdc30548e7d8322a2ef9972c64ade4087d2376ce70b" [label="local://context" shape="ellipse"];
  "sha256:33bc018312651880792fcc9328b63fe04c41f8ae33f95901ad9739435de784ba" [label="copy{src=/run.sh, dest=/usr/local/gogs/scripts/}" shape="note"];
  "sha256:4d3c40ccdefa34b6f816cea1e3fb44f3209128ea7a61e44c8209d3973b5fea64" [label="sha256:4d3c40ccdefa34b6f816cea1e3fb44f3209128ea7a61e44c8209d3973b5fea64" shape="plaintext"];
  "sha256:0d61ba26522b24ee7308064e7916b7f7ba90eb1da4e9121ee2939a543b4272ee" -> "sha256:96f65b8c2ce338774f7be5cfdd968ab2fc5411f2f32de4e525d2b1b73f187fca" [label=""];
  "sha256:96f65b8c2ce338774f7be5cfdd968ab2fc5411f2f32de4e525d2b1b73f187fca" -> "sha256:68a4b935000165a67d82df25af6334c1653d3a980d1fdcf981a4c0e5bd9d9e44" [label=""];
  "sha256:68a4b935000165a67d82df25af6334c1653d3a980d1fdcf981a4c0e5bd9d9e44" -> "sha256:33bc018312651880792fcc9328b63fe04c41f8ae33f95901ad9739435de784ba" [label=""];
  "sha256:ce41628b1747aed2ff9a3bdc30548e7d8322a2ef9972c64ade4087d2376ce70b" -> "sha256:33bc018312651880792fcc9328b63fe04c41f8ae33f95901ad9739435de784ba" [label=""];
  "sha256:33bc018312651880792fcc9328b63fe04c41f8ae33f95901ad9739435de784ba" -> "sha256:4d3c40ccdefa34b6f816cea1e3fb44f3209128ea7a61e44c8209d3973b5fea64" [label=""];
}

