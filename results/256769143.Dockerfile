[app/sources/256769143.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:e469f80e251b97879153ab86da65ea319dc6646cfa5fb8c7a7d41fb68a57063e" [label="/bin/sh -c apt-get -y update  && apt-get install -y curl nano" shape="box"];
  "sha256:338c8dac671080fb08f66e3f37389445a50e99700011614b4db51a44cea3710b" [label="local://context" shape="ellipse"];
  "sha256:0a4d09673e35b1e88eb164d9139fe02f2f5fc1c020af25e1dabc8ac518a16eff" [label="copy{src=/sample_app_nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:b110c48d166bf0827ee5e2fd3a876e2c7220c169b62da92b16884ad81c4977b6" [label="sha256:b110c48d166bf0827ee5e2fd3a876e2c7220c169b62da92b16884ad81c4977b6" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:e469f80e251b97879153ab86da65ea319dc6646cfa5fb8c7a7d41fb68a57063e" [label=""];
  "sha256:e469f80e251b97879153ab86da65ea319dc6646cfa5fb8c7a7d41fb68a57063e" -> "sha256:0a4d09673e35b1e88eb164d9139fe02f2f5fc1c020af25e1dabc8ac518a16eff" [label=""];
  "sha256:338c8dac671080fb08f66e3f37389445a50e99700011614b4db51a44cea3710b" -> "sha256:0a4d09673e35b1e88eb164d9139fe02f2f5fc1c020af25e1dabc8ac518a16eff" [label=""];
  "sha256:0a4d09673e35b1e88eb164d9139fe02f2f5fc1c020af25e1dabc8ac518a16eff" -> "sha256:b110c48d166bf0827ee5e2fd3a876e2c7220c169b62da92b16884ad81c4977b6" [label=""];
}

