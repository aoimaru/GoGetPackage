[app/sources/267402491.Dockerfile]
digraph {
  "sha256:9823df752b062521ed4122617ef30e850155832e532f93468751c81ade5ccc5f" [label="docker-image://docker.io/library/jenkins:2.60.3" shape="ellipse"];
  "sha256:ae0e51788c0e350fa9fb5a502478cc3b7d144699e974e0c632467a05b703b5b5" [label="local://context" shape="ellipse"];
  "sha256:1f8efac1ed03d1342db1a6c33ca03eec98f4c8eded8f025eefffc152c1caa862" [label="copy{src=/plugins.txt, dest=/usr/share/jenkins/ref/plugins.txt}" shape="note"];
  "sha256:021f4472b3002548279df2db78545ebf29f767681066b1042bbb265f3dded74f" [label="/bin/sh -c /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt" shape="box"];
  "sha256:36feb80f8b1c4180fd7d109ab8bb583451c33b6592ad4454ac687f351c61102d" [label="copy{src=/groovy/*, dest=/usr/share/jenkins/ref/init.groovy.d/}" shape="note"];
  "sha256:c801576092808ac1b8c18456da357b33102a897d14d29834f167b1bb2ae82070" [label="sha256:c801576092808ac1b8c18456da357b33102a897d14d29834f167b1bb2ae82070" shape="plaintext"];
  "sha256:9823df752b062521ed4122617ef30e850155832e532f93468751c81ade5ccc5f" -> "sha256:1f8efac1ed03d1342db1a6c33ca03eec98f4c8eded8f025eefffc152c1caa862" [label=""];
  "sha256:ae0e51788c0e350fa9fb5a502478cc3b7d144699e974e0c632467a05b703b5b5" -> "sha256:1f8efac1ed03d1342db1a6c33ca03eec98f4c8eded8f025eefffc152c1caa862" [label=""];
  "sha256:1f8efac1ed03d1342db1a6c33ca03eec98f4c8eded8f025eefffc152c1caa862" -> "sha256:021f4472b3002548279df2db78545ebf29f767681066b1042bbb265f3dded74f" [label=""];
  "sha256:021f4472b3002548279df2db78545ebf29f767681066b1042bbb265f3dded74f" -> "sha256:36feb80f8b1c4180fd7d109ab8bb583451c33b6592ad4454ac687f351c61102d" [label=""];
  "sha256:ae0e51788c0e350fa9fb5a502478cc3b7d144699e974e0c632467a05b703b5b5" -> "sha256:36feb80f8b1c4180fd7d109ab8bb583451c33b6592ad4454ac687f351c61102d" [label=""];
  "sha256:36feb80f8b1c4180fd7d109ab8bb583451c33b6592ad4454ac687f351c61102d" -> "sha256:c801576092808ac1b8c18456da357b33102a897d14d29834f167b1bb2ae82070" [label=""];
}

