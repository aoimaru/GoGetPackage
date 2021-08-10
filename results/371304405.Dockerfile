[app/sources/371304405.Dockerfile]
digraph {
  "sha256:0b211d5bf6e7df16ee76a5fb55644d187fabcf394e73dc6802e72939776a5bb8" [label="docker-image://docker.io/k8spracticalguide/debian:9-slim" shape="ellipse"];
  "sha256:34bfec151f9e3007ac5b38e62c37ce4ddb5470b4d0be4e572f7af9b61b0f5642" [label="mkdir{path=/mm}" shape="note"];
  "sha256:05880ee0c7575af8bd6fd7ed77fe67f082e9252a640e85893f2909f3a6ba5df9" [label="local://context" shape="ellipse"];
  "sha256:c40c76ff4b9886ee804e908d5adfe76bf5c5dd86d9253ebe0099f787340e8ff9" [label="copy{src=/mm_entrypoint.sh, dest=/}" shape="note"];
  "sha256:2dda243a007bf0478ea0360aabd7924baa760974b9fb0732c28a85b6b6cee052" [label="https://releases.mattermost.com/4.10.2/mattermost-team-4.10.2-linux-amd64.tar.gz" shape="ellipse"];
  "sha256:317123cf064e990b582c7c2896d0e1be1d7d6d26c844cf83b733b1c5c247ce5e" [label="copy{src=/mattermost-team-4.10.2-linux-amd64.tar.gz, dest=/}" shape="note"];
  "sha256:2f6052d38b2f1943fbf33a9d6708996551eb695d18a86482b5923e0a6102c820" [label="/bin/sh -c tar -zxvf ./mattermost-team-$MM_VERSION-linux-amd64.tar.gz" shape="box"];
  "sha256:1ceaecb563b45ef94137456410fc653c2bfea490ce36cd1b4f645ab2add585db" [label="copy{src=/mattermost, dest=/mm/},copy{src=/mm_entrypoint.sh, dest=/mm/}" shape="note"];
  "sha256:b48f3263a1f824cc9f0c75118f5981d8b0258b311be5b0a5862b61e78e2a92aa" [label="/bin/sh -c apt-get update && apt-get install -y procps" shape="box"];
  "sha256:6059cbb6158c814a58728dadb7906d3f36a681d51af300e61aa729f136abe695" [label="/bin/sh -c chmod +x mm_entrypoint.sh   && groupadd -g 2000 mattermost   && useradd -u 1000 -g mattermost mattermost   && chown -R mattermost:mattermost ./" shape="box"];
  "sha256:7d483405bb301ee535ac8a76211c5bef278313785fa6a4b828236dd664cbebb0" [label="sha256:7d483405bb301ee535ac8a76211c5bef278313785fa6a4b828236dd664cbebb0" shape="plaintext"];
  "sha256:0b211d5bf6e7df16ee76a5fb55644d187fabcf394e73dc6802e72939776a5bb8" -> "sha256:34bfec151f9e3007ac5b38e62c37ce4ddb5470b4d0be4e572f7af9b61b0f5642" [label=""];
  "sha256:0b211d5bf6e7df16ee76a5fb55644d187fabcf394e73dc6802e72939776a5bb8" -> "sha256:c40c76ff4b9886ee804e908d5adfe76bf5c5dd86d9253ebe0099f787340e8ff9" [label=""];
  "sha256:05880ee0c7575af8bd6fd7ed77fe67f082e9252a640e85893f2909f3a6ba5df9" -> "sha256:c40c76ff4b9886ee804e908d5adfe76bf5c5dd86d9253ebe0099f787340e8ff9" [label=""];
  "sha256:c40c76ff4b9886ee804e908d5adfe76bf5c5dd86d9253ebe0099f787340e8ff9" -> "sha256:317123cf064e990b582c7c2896d0e1be1d7d6d26c844cf83b733b1c5c247ce5e" [label=""];
  "sha256:2dda243a007bf0478ea0360aabd7924baa760974b9fb0732c28a85b6b6cee052" -> "sha256:317123cf064e990b582c7c2896d0e1be1d7d6d26c844cf83b733b1c5c247ce5e" [label=""];
  "sha256:317123cf064e990b582c7c2896d0e1be1d7d6d26c844cf83b733b1c5c247ce5e" -> "sha256:2f6052d38b2f1943fbf33a9d6708996551eb695d18a86482b5923e0a6102c820" [label=""];
  "sha256:34bfec151f9e3007ac5b38e62c37ce4ddb5470b4d0be4e572f7af9b61b0f5642" -> "sha256:1ceaecb563b45ef94137456410fc653c2bfea490ce36cd1b4f645ab2add585db" [label=""];
  "sha256:2f6052d38b2f1943fbf33a9d6708996551eb695d18a86482b5923e0a6102c820" -> "sha256:1ceaecb563b45ef94137456410fc653c2bfea490ce36cd1b4f645ab2add585db" [label=""];
  "sha256:1ceaecb563b45ef94137456410fc653c2bfea490ce36cd1b4f645ab2add585db" -> "sha256:b48f3263a1f824cc9f0c75118f5981d8b0258b311be5b0a5862b61e78e2a92aa" [label=""];
  "sha256:b48f3263a1f824cc9f0c75118f5981d8b0258b311be5b0a5862b61e78e2a92aa" -> "sha256:6059cbb6158c814a58728dadb7906d3f36a681d51af300e61aa729f136abe695" [label=""];
  "sha256:6059cbb6158c814a58728dadb7906d3f36a681d51af300e61aa729f136abe695" -> "sha256:7d483405bb301ee535ac8a76211c5bef278313785fa6a4b828236dd664cbebb0" [label=""];
}

