[app/sources/333697557.Dockerfile]
digraph {
  "sha256:1e63583ccab2d01476a7734e12cec2f08138e6a0b51c9932061ea9787a8890c1" [label="docker-image://docker.io/library/python:3.6.1" shape="ellipse"];
  "sha256:d5381af57da856e20249297c1e02b7a6f767d2c2499c98fbfe46c810587302a2" [label="local://context" shape="ellipse"];
  "sha256:9695acc5c3b433d55235c1ec10297f73cd764f98cad77f49e6fa86b432bab7f9" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:d218082d00ae38f871d25256fe5afb1a79615d1c9acc243056daef8b292cbea0" [label="mkdir{path=/app}" shape="note"];
  "sha256:1f5d1648935f463ce43e925015e36aa26b2af70dc52aef7139d03cb11382a31a" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:8c66f0215973f7f5d6493d6d585c5815aaa2bc4d155718f0824b8efff3a4441c" [label="sha256:8c66f0215973f7f5d6493d6d585c5815aaa2bc4d155718f0824b8efff3a4441c" shape="plaintext"];
  "sha256:1e63583ccab2d01476a7734e12cec2f08138e6a0b51c9932061ea9787a8890c1" -> "sha256:9695acc5c3b433d55235c1ec10297f73cd764f98cad77f49e6fa86b432bab7f9" [label=""];
  "sha256:d5381af57da856e20249297c1e02b7a6f767d2c2499c98fbfe46c810587302a2" -> "sha256:9695acc5c3b433d55235c1ec10297f73cd764f98cad77f49e6fa86b432bab7f9" [label=""];
  "sha256:9695acc5c3b433d55235c1ec10297f73cd764f98cad77f49e6fa86b432bab7f9" -> "sha256:d218082d00ae38f871d25256fe5afb1a79615d1c9acc243056daef8b292cbea0" [label=""];
  "sha256:d218082d00ae38f871d25256fe5afb1a79615d1c9acc243056daef8b292cbea0" -> "sha256:1f5d1648935f463ce43e925015e36aa26b2af70dc52aef7139d03cb11382a31a" [label=""];
  "sha256:1f5d1648935f463ce43e925015e36aa26b2af70dc52aef7139d03cb11382a31a" -> "sha256:8c66f0215973f7f5d6493d6d585c5815aaa2bc4d155718f0824b8efff3a4441c" [label=""];
}

