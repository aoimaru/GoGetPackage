[app/sources/252768207.Dockerfile]
digraph {
  "sha256:59f72d89161f11ba8857533f11ef4da036303e6ab426eb8a298bee0781ced2b7" [label="local://context" shape="ellipse"];
  "sha256:62fab9722184e6d82147c357e506fdbe30986091cb51cf6c8ee553dc137ba898" [label="docker-image://docker.io/library/node:8.6-alpine" shape="ellipse"];
  "sha256:5bca5db3cec05dbca781da1812626eac5e53f59c12148f774224e39d6425cccc" [label="copy{src=/run.sh, dest=/}" shape="note"];
  "sha256:7ddcdf8a4a2bb5100a3c3eb718cd8be591215cee9b50888e95245ff14d17de2d" [label="copy{src=/BackupExecV3.js, dest=/nodebackup/}" shape="note"];
  "sha256:c3508b14844d6d65270120966a801683ea23ce43448aa0798f8b083979ecf37a" [label="copy{src=/lib, dest=/nodebackup/lib/}" shape="note"];
  "sha256:efc827005c0fbfa3bc670c8bc417951a8825c6e46095a04e17b3ee5c314f4ffd" [label="copy{src=/package.json, dest=/nodebackup/package.json}" shape="note"];
  "sha256:4095bd39eb8874202d2e05234d2c8c442ab15a6d8a2d28362d01bb557a44f5ef" [label="/bin/sh -c apk update && apk upgrade && apk add --no-cache bash openssh ssmtp && touch /crontab.tmp && echo '2 0 * * * echo \"Test Test\"' >> /crontab.tmp && crontab /crontab.tmp && rm -rf /crontab.tmp && cd /nodebackup && npm install && npm update&& chmod +x /run.sh" shape="box"];
  "sha256:8b1efb65ed95cb693ccf739e86406661d40d4fa2cc320ea1bb13c7e7b905f167" [label="sha256:8b1efb65ed95cb693ccf739e86406661d40d4fa2cc320ea1bb13c7e7b905f167" shape="plaintext"];
  "sha256:62fab9722184e6d82147c357e506fdbe30986091cb51cf6c8ee553dc137ba898" -> "sha256:5bca5db3cec05dbca781da1812626eac5e53f59c12148f774224e39d6425cccc" [label=""];
  "sha256:59f72d89161f11ba8857533f11ef4da036303e6ab426eb8a298bee0781ced2b7" -> "sha256:5bca5db3cec05dbca781da1812626eac5e53f59c12148f774224e39d6425cccc" [label=""];
  "sha256:5bca5db3cec05dbca781da1812626eac5e53f59c12148f774224e39d6425cccc" -> "sha256:7ddcdf8a4a2bb5100a3c3eb718cd8be591215cee9b50888e95245ff14d17de2d" [label=""];
  "sha256:59f72d89161f11ba8857533f11ef4da036303e6ab426eb8a298bee0781ced2b7" -> "sha256:7ddcdf8a4a2bb5100a3c3eb718cd8be591215cee9b50888e95245ff14d17de2d" [label=""];
  "sha256:7ddcdf8a4a2bb5100a3c3eb718cd8be591215cee9b50888e95245ff14d17de2d" -> "sha256:c3508b14844d6d65270120966a801683ea23ce43448aa0798f8b083979ecf37a" [label=""];
  "sha256:59f72d89161f11ba8857533f11ef4da036303e6ab426eb8a298bee0781ced2b7" -> "sha256:c3508b14844d6d65270120966a801683ea23ce43448aa0798f8b083979ecf37a" [label=""];
  "sha256:c3508b14844d6d65270120966a801683ea23ce43448aa0798f8b083979ecf37a" -> "sha256:efc827005c0fbfa3bc670c8bc417951a8825c6e46095a04e17b3ee5c314f4ffd" [label=""];
  "sha256:59f72d89161f11ba8857533f11ef4da036303e6ab426eb8a298bee0781ced2b7" -> "sha256:efc827005c0fbfa3bc670c8bc417951a8825c6e46095a04e17b3ee5c314f4ffd" [label=""];
  "sha256:efc827005c0fbfa3bc670c8bc417951a8825c6e46095a04e17b3ee5c314f4ffd" -> "sha256:4095bd39eb8874202d2e05234d2c8c442ab15a6d8a2d28362d01bb557a44f5ef" [label=""];
  "sha256:4095bd39eb8874202d2e05234d2c8c442ab15a6d8a2d28362d01bb557a44f5ef" -> "sha256:8b1efb65ed95cb693ccf739e86406661d40d4fa2cc320ea1bb13c7e7b905f167" [label=""];
}

