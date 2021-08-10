[app/sources/252780888.Dockerfile]
digraph {
  "sha256:e87b4a3439bb82ebe0ac82f0d77995a7f9f05534841e39ee308386f389afb488" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:63d531ac03d1834f6aac1d5f2fa1192a05da1c1f83a3ea6683e1998d68b44822" [label="copy{src=/helloworld, dest=/bin/helloworld}" shape="note"];
  "sha256:432db9f215f70238c91fcef7a8d48d23c94ace470dc755e7649db7e791e053f4" [label="/bin/sh -c chmod +x /bin/helloworld" shape="box"];
  "sha256:5643dd527fbf158faf25f5682ae517c8f919b1de2d5022de748a8aa6fa209db1" [label="sha256:5643dd527fbf158faf25f5682ae517c8f919b1de2d5022de748a8aa6fa209db1" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:63d531ac03d1834f6aac1d5f2fa1192a05da1c1f83a3ea6683e1998d68b44822" [label=""];
  "sha256:e87b4a3439bb82ebe0ac82f0d77995a7f9f05534841e39ee308386f389afb488" -> "sha256:63d531ac03d1834f6aac1d5f2fa1192a05da1c1f83a3ea6683e1998d68b44822" [label=""];
  "sha256:63d531ac03d1834f6aac1d5f2fa1192a05da1c1f83a3ea6683e1998d68b44822" -> "sha256:432db9f215f70238c91fcef7a8d48d23c94ace470dc755e7649db7e791e053f4" [label=""];
  "sha256:432db9f215f70238c91fcef7a8d48d23c94ace470dc755e7649db7e791e053f4" -> "sha256:5643dd527fbf158faf25f5682ae517c8f919b1de2d5022de748a8aa6fa209db1" [label=""];
}

