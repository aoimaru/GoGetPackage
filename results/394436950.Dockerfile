[app/sources/394436950.Dockerfile]
digraph {
  "sha256:94c1ec0682224b810dbd0cc478bee42d91323c4ab5474681063f250bc44f194d" [label="docker-image://docker.io/jenkinsci/slave:3.19-1-alpine" shape="ellipse"];
  "sha256:13b39c9ba1aab1c183650d80e1cfe318f289776e07c75e765d3f340d16c638a7" [label="/bin/sh -c apk add --update --no-cache openssh" shape="box"];
  "sha256:854d72e27b23ceaee914a5a6f9fa7a11c826f370ee9bf461298c5e0eedd60551" [label="/bin/sh -c ssh-keygen -A" shape="box"];
  "sha256:2ee6041ba1993436f6da71c24b906735af62041b0fdcfb4ed3d3f13b88eac986" [label="/bin/sh -c adduser -D test -h /home/test &&     mkdir -p /home/test/.ssh &&     echo \"test:test\" | chpasswd &&     chown -R test:test /home/test" shape="box"];
  "sha256:9c064b5237ac22a2f0395eda4238d9473c60c75a4c0847dd95c4a2140c0989e4" [label="sha256:9c064b5237ac22a2f0395eda4238d9473c60c75a4c0847dd95c4a2140c0989e4" shape="plaintext"];
  "sha256:94c1ec0682224b810dbd0cc478bee42d91323c4ab5474681063f250bc44f194d" -> "sha256:13b39c9ba1aab1c183650d80e1cfe318f289776e07c75e765d3f340d16c638a7" [label=""];
  "sha256:13b39c9ba1aab1c183650d80e1cfe318f289776e07c75e765d3f340d16c638a7" -> "sha256:854d72e27b23ceaee914a5a6f9fa7a11c826f370ee9bf461298c5e0eedd60551" [label=""];
  "sha256:854d72e27b23ceaee914a5a6f9fa7a11c826f370ee9bf461298c5e0eedd60551" -> "sha256:2ee6041ba1993436f6da71c24b906735af62041b0fdcfb4ed3d3f13b88eac986" [label=""];
  "sha256:2ee6041ba1993436f6da71c24b906735af62041b0fdcfb4ed3d3f13b88eac986" -> "sha256:9c064b5237ac22a2f0395eda4238d9473c60c75a4c0847dd95c4a2140c0989e4" [label=""];
}

