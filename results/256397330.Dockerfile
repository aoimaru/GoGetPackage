[app/sources/256397330.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:0342859f28b4205ce22580367ac2172c5b5d9f3db80472f98bb2726e2227c8a6" [label="/bin/sh -c pip install flask tornado requests prometheus_client" shape="box"];
  "sha256:926ef8cabeef57314dea45e686825cc875c4a29bea9286110a334ab6586a4278" [label="local://context" shape="ellipse"];
  "sha256:e07195c100c1d1811e73da53cf006e864c89516edc8256ae19de74be960ad0f3" [label="copy{src=/, dest=/root/webapp}" shape="note"];
  "sha256:0eafdd01162d15295ed19f5fb02c10a4b243e1ffe731a8090faea3c645fec901" [label="mkdir{path=/root/webapp}" shape="note"];
  "sha256:347f2b0831859490041b18e5bd72676e7274ae7721baeea87ee2d1652053732a" [label="sha256:347f2b0831859490041b18e5bd72676e7274ae7721baeea87ee2d1652053732a" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:0342859f28b4205ce22580367ac2172c5b5d9f3db80472f98bb2726e2227c8a6" [label=""];
  "sha256:0342859f28b4205ce22580367ac2172c5b5d9f3db80472f98bb2726e2227c8a6" -> "sha256:e07195c100c1d1811e73da53cf006e864c89516edc8256ae19de74be960ad0f3" [label=""];
  "sha256:926ef8cabeef57314dea45e686825cc875c4a29bea9286110a334ab6586a4278" -> "sha256:e07195c100c1d1811e73da53cf006e864c89516edc8256ae19de74be960ad0f3" [label=""];
  "sha256:e07195c100c1d1811e73da53cf006e864c89516edc8256ae19de74be960ad0f3" -> "sha256:0eafdd01162d15295ed19f5fb02c10a4b243e1ffe731a8090faea3c645fec901" [label=""];
  "sha256:0eafdd01162d15295ed19f5fb02c10a4b243e1ffe731a8090faea3c645fec901" -> "sha256:347f2b0831859490041b18e5bd72676e7274ae7721baeea87ee2d1652053732a" [label=""];
}

