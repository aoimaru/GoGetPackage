[app/sources/252791603.Dockerfile]
digraph {
  "sha256:9d8c2960e39507acfa0b3b44e4d2d1cbe115712c78984ca74be7df63bd1c2c24" [label="local://context" shape="ellipse"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:40e031ac1c919ab3b3e6b7c5e6219ce7c6b8249db926ada131b1df46e8b0d59c" [label="/bin/sh -c apk add --no-cache curl bash git ca-certificates wget && update-ca-certificates && curl -sSO https://raw.githubusercontent.com/pote/gpm/v1.4.0/bin/gpm && chmod +x gpm && mv gpm /usr/local/bin" shape="box"];
  "sha256:a896fc58ab2f2dc554cd2b73ab2e85ef8785d007ec3d6be1b18e1506e09bf987" [label="copy{src=/, dest=/src/github.com/linkedin/Burrow}" shape="note"];
  "sha256:77d6d3fe7a9a013b86ddcf76e6335b446bac62e6032df26297228a279fdea41a" [label="/bin/sh -c cd $GOPATH/src/github.com/linkedin/Burrow && gpm install && go install && mv $GOPATH/bin/Burrow $GOPATH/bin/burrow && apk del git curl wget" shape="box"];
  "sha256:78c25da5b1938864f76fd64a62b04eec349e6e66b41155bbd01e8b92b38bedcb" [label="copy{src=/docker-config, dest=/etc/burrow}" shape="note"];
  "sha256:3aab5115f79a79862d79436a3e66b44e5af0b5e4c0aad7e055f4dfeaf6c5c7e8" [label="mkdir{path=/var/tmp/burrow}" shape="note"];
  "sha256:63d817d75b04ed9e9b9ab492c0a61591eea6262241619d5e37a695f4178935a9" [label="sha256:63d817d75b04ed9e9b9ab492c0a61591eea6262241619d5e37a695f4178935a9" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:40e031ac1c919ab3b3e6b7c5e6219ce7c6b8249db926ada131b1df46e8b0d59c" [label=""];
  "sha256:40e031ac1c919ab3b3e6b7c5e6219ce7c6b8249db926ada131b1df46e8b0d59c" -> "sha256:a896fc58ab2f2dc554cd2b73ab2e85ef8785d007ec3d6be1b18e1506e09bf987" [label=""];
  "sha256:9d8c2960e39507acfa0b3b44e4d2d1cbe115712c78984ca74be7df63bd1c2c24" -> "sha256:a896fc58ab2f2dc554cd2b73ab2e85ef8785d007ec3d6be1b18e1506e09bf987" [label=""];
  "sha256:a896fc58ab2f2dc554cd2b73ab2e85ef8785d007ec3d6be1b18e1506e09bf987" -> "sha256:77d6d3fe7a9a013b86ddcf76e6335b446bac62e6032df26297228a279fdea41a" [label=""];
  "sha256:77d6d3fe7a9a013b86ddcf76e6335b446bac62e6032df26297228a279fdea41a" -> "sha256:78c25da5b1938864f76fd64a62b04eec349e6e66b41155bbd01e8b92b38bedcb" [label=""];
  "sha256:9d8c2960e39507acfa0b3b44e4d2d1cbe115712c78984ca74be7df63bd1c2c24" -> "sha256:78c25da5b1938864f76fd64a62b04eec349e6e66b41155bbd01e8b92b38bedcb" [label=""];
  "sha256:78c25da5b1938864f76fd64a62b04eec349e6e66b41155bbd01e8b92b38bedcb" -> "sha256:3aab5115f79a79862d79436a3e66b44e5af0b5e4c0aad7e055f4dfeaf6c5c7e8" [label=""];
  "sha256:3aab5115f79a79862d79436a3e66b44e5af0b5e4c0aad7e055f4dfeaf6c5c7e8" -> "sha256:63d817d75b04ed9e9b9ab492c0a61591eea6262241619d5e37a695f4178935a9" [label=""];
}

