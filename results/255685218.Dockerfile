[app/sources/255685218.Dockerfile]
digraph {
  "sha256:78f32713c04c743591cddb9dd5233329916fbfb4ff942d45d73580cae6793a8d" [label="local://context" shape="ellipse"];
  "sha256:d7e2cc1efc7f2e7a751e9ddd2214767ab911c8e18ade16596d9aeb8afc1d20b1" [label="copy{src=/explorer, dest=/explorer}" shape="note"];
  "sha256:303418ed68de168d5655db20d42cd38d462f755dfaa3ed929f8c2f8f07f41a15" [label="copy{src=/README.md, dest=/README.md}" shape="note"];
  "sha256:5a4b6336ec7f1ccb580cb119dcc62513d4df290f0832ec5a46e6229e779800c8" [label="sha256:5a4b6336ec7f1ccb580cb119dcc62513d4df290f0832ec5a46e6229e779800c8" shape="plaintext"];
  "sha256:78f32713c04c743591cddb9dd5233329916fbfb4ff942d45d73580cae6793a8d" -> "sha256:d7e2cc1efc7f2e7a751e9ddd2214767ab911c8e18ade16596d9aeb8afc1d20b1" [label=""];
  "sha256:d7e2cc1efc7f2e7a751e9ddd2214767ab911c8e18ade16596d9aeb8afc1d20b1" -> "sha256:303418ed68de168d5655db20d42cd38d462f755dfaa3ed929f8c2f8f07f41a15" [label=""];
  "sha256:78f32713c04c743591cddb9dd5233329916fbfb4ff942d45d73580cae6793a8d" -> "sha256:303418ed68de168d5655db20d42cd38d462f755dfaa3ed929f8c2f8f07f41a15" [label=""];
  "sha256:303418ed68de168d5655db20d42cd38d462f755dfaa3ed929f8c2f8f07f41a15" -> "sha256:5a4b6336ec7f1ccb580cb119dcc62513d4df290f0832ec5a46e6229e779800c8" [label=""];
}

