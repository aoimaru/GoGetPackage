[app/sources/341882634.Dockerfile]
digraph {
  "sha256:3d7e0616b996f65cc3ee51795fde84032730bcf9c6bcc809ad35cc8eff0a6b58" [label="docker-image://docker.io/tensorflow/tensorflow:1.8.0" shape="ellipse"];
  "sha256:6a775663531808151d02d004302f30944d7b884f81384536782e90ddf9c085ca" [label="/bin/sh -c pip --no-cache-dir install oauth2client~=4.1.0 &&    apt-get update && apt-get install -y jq git python3-pip &&    rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ba6a04033565417f34273fe7616cc4c39e413b746aa0ec404853f178b5a03fdb" [label="/bin/sh -c pip --no-cache-dir install \ttensor2tensor~=1.10.0 \ttensorflow-hub~=0.1.1 \tsix" shape="box"];
  "sha256:b432cd68e3b72e0a50a3b69933f347f8a316fb41b942adb3014922a7be1fdc73" [label="/bin/sh -c pip3 --no-cache-dir install \ttensor2tensor~=1.10.0 \ttensorflow-hub~=0.1.1 \tsix" shape="box"];
  "sha256:8c840324a6c2c1967857383ed4c0998353f1dc2ff3ed26202d207086ca93aef8" [label="local://context" shape="ellipse"];
  "sha256:68c113d07ac7db80952494bed22babf8fb740fdaf19a424d156cbfd9e2552a05" [label="copy{src=/src/code_search, dest=/app/code_search}" shape="note"];
  "sha256:2a55904f2a99401f875c908cd5d362eac56be8f7e41ae603b42fa12c11cab271" [label="copy{src=/src, dest=/src}" shape="note"];
  "sha256:69cdd4a06a4ae85a5cc098f8841a5cc3e764bd83bfb28604a8c3a2cbb2adbcd4" [label="copy{src=/docker/t2t/t2t-entrypoint.sh, dest=/usr/local/sbin/t2t-entrypoint}" shape="note"];
  "sha256:ab904c9af33e899439e9ec49bf002f47aba9f9f3059d356333081a4073947a6f" [label="copy{src=/docker/t2t/run_and_wait.sh, dest=/usr/local/sbin/run_and_wait.sh}" shape="note"];
  "sha256:caffcdbec0bfa24d78e7ffc28fb86c8f3849fa14edc3f5aadaf290acc2c97afb" [label="/bin/sh -c chmod a+x /usr/local/sbin/run_and_wait.sh" shape="box"];
  "sha256:cbb1496a9b8cca763b31f36e5b43eb25821f9ee9b3350363593ac2770aac9ce6" [label="mkdir{path=/app}" shape="note"];
  "sha256:741cf40f828f552cb0decf5f2ab60f8d0ae420458e3b1e01bac13a05e57e1bab" [label="sha256:741cf40f828f552cb0decf5f2ab60f8d0ae420458e3b1e01bac13a05e57e1bab" shape="plaintext"];
  "sha256:3d7e0616b996f65cc3ee51795fde84032730bcf9c6bcc809ad35cc8eff0a6b58" -> "sha256:6a775663531808151d02d004302f30944d7b884f81384536782e90ddf9c085ca" [label=""];
  "sha256:6a775663531808151d02d004302f30944d7b884f81384536782e90ddf9c085ca" -> "sha256:ba6a04033565417f34273fe7616cc4c39e413b746aa0ec404853f178b5a03fdb" [label=""];
  "sha256:ba6a04033565417f34273fe7616cc4c39e413b746aa0ec404853f178b5a03fdb" -> "sha256:b432cd68e3b72e0a50a3b69933f347f8a316fb41b942adb3014922a7be1fdc73" [label=""];
  "sha256:b432cd68e3b72e0a50a3b69933f347f8a316fb41b942adb3014922a7be1fdc73" -> "sha256:68c113d07ac7db80952494bed22babf8fb740fdaf19a424d156cbfd9e2552a05" [label=""];
  "sha256:8c840324a6c2c1967857383ed4c0998353f1dc2ff3ed26202d207086ca93aef8" -> "sha256:68c113d07ac7db80952494bed22babf8fb740fdaf19a424d156cbfd9e2552a05" [label=""];
  "sha256:68c113d07ac7db80952494bed22babf8fb740fdaf19a424d156cbfd9e2552a05" -> "sha256:2a55904f2a99401f875c908cd5d362eac56be8f7e41ae603b42fa12c11cab271" [label=""];
  "sha256:8c840324a6c2c1967857383ed4c0998353f1dc2ff3ed26202d207086ca93aef8" -> "sha256:2a55904f2a99401f875c908cd5d362eac56be8f7e41ae603b42fa12c11cab271" [label=""];
  "sha256:2a55904f2a99401f875c908cd5d362eac56be8f7e41ae603b42fa12c11cab271" -> "sha256:69cdd4a06a4ae85a5cc098f8841a5cc3e764bd83bfb28604a8c3a2cbb2adbcd4" [label=""];
  "sha256:8c840324a6c2c1967857383ed4c0998353f1dc2ff3ed26202d207086ca93aef8" -> "sha256:69cdd4a06a4ae85a5cc098f8841a5cc3e764bd83bfb28604a8c3a2cbb2adbcd4" [label=""];
  "sha256:69cdd4a06a4ae85a5cc098f8841a5cc3e764bd83bfb28604a8c3a2cbb2adbcd4" -> "sha256:ab904c9af33e899439e9ec49bf002f47aba9f9f3059d356333081a4073947a6f" [label=""];
  "sha256:8c840324a6c2c1967857383ed4c0998353f1dc2ff3ed26202d207086ca93aef8" -> "sha256:ab904c9af33e899439e9ec49bf002f47aba9f9f3059d356333081a4073947a6f" [label=""];
  "sha256:ab904c9af33e899439e9ec49bf002f47aba9f9f3059d356333081a4073947a6f" -> "sha256:caffcdbec0bfa24d78e7ffc28fb86c8f3849fa14edc3f5aadaf290acc2c97afb" [label=""];
  "sha256:caffcdbec0bfa24d78e7ffc28fb86c8f3849fa14edc3f5aadaf290acc2c97afb" -> "sha256:cbb1496a9b8cca763b31f36e5b43eb25821f9ee9b3350363593ac2770aac9ce6" [label=""];
  "sha256:cbb1496a9b8cca763b31f36e5b43eb25821f9ee9b3350363593ac2770aac9ce6" -> "sha256:741cf40f828f552cb0decf5f2ab60f8d0ae420458e3b1e01bac13a05e57e1bab" [label=""];
}

