[app/sources/238055383.Dockerfile]
digraph {
  "sha256:1a8c778404a3314edd4782b2cdaf29ae10a76068e1a195a4bd475e923cfaa08f" [label="local://context" shape="ellipse"];
  "sha256:134c5445c07a892b626b292269abdb93925d7e3ebb6e870eddb9a26b7c508f4b" [label="docker-image://docker.io/dltdojo/httpd:latest" shape="ellipse"];
  "sha256:cc2082589df921d08b39cd878782dc8101c968998f2db65fa2855797ee1f4479" [label="copy{src=/index.html, dest=/usr/share/nginx/html/}" shape="note"];
  "sha256:37ae7cf4c808ca41ca6dcc7f957e206863072abe861c2b44b405a3ce0449438b" [label="sha256:37ae7cf4c808ca41ca6dcc7f957e206863072abe861c2b44b405a3ce0449438b" shape="plaintext"];
  "sha256:134c5445c07a892b626b292269abdb93925d7e3ebb6e870eddb9a26b7c508f4b" -> "sha256:cc2082589df921d08b39cd878782dc8101c968998f2db65fa2855797ee1f4479" [label=""];
  "sha256:1a8c778404a3314edd4782b2cdaf29ae10a76068e1a195a4bd475e923cfaa08f" -> "sha256:cc2082589df921d08b39cd878782dc8101c968998f2db65fa2855797ee1f4479" [label=""];
  "sha256:cc2082589df921d08b39cd878782dc8101c968998f2db65fa2855797ee1f4479" -> "sha256:37ae7cf4c808ca41ca6dcc7f957e206863072abe861c2b44b405a3ce0449438b" [label=""];
}

