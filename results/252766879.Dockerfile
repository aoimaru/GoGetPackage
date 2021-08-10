[app/sources/252766879.Dockerfile]
digraph {
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:7c841b0cd8d771d46a351b804b2186716aef6ba1f919753046ef6c1bda910953" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:369db453e73bd4e47acbb102671c849ba01c187b40632dc1a8fb385d28bc04ae" [label="/bin/sh -c apt-get install -y nginx" shape="box"];
  "sha256:7a9ae2f32c11aebb4be7c8fcbfdc1916893c33a2e9ad15c3925e5e77b3cbd965" [label="/bin/sh -c echo 'Hi, I am in your container' >/var/www/html/index.html" shape="box"];
  "sha256:c868f5c7265072ae8bf11577a8728ffd4643ed968b42a28aa8d240a3fdc8a72d" [label="sha256:c868f5c7265072ae8bf11577a8728ffd4643ed968b42a28aa8d240a3fdc8a72d" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:7c841b0cd8d771d46a351b804b2186716aef6ba1f919753046ef6c1bda910953" [label=""];
  "sha256:7c841b0cd8d771d46a351b804b2186716aef6ba1f919753046ef6c1bda910953" -> "sha256:369db453e73bd4e47acbb102671c849ba01c187b40632dc1a8fb385d28bc04ae" [label=""];
  "sha256:369db453e73bd4e47acbb102671c849ba01c187b40632dc1a8fb385d28bc04ae" -> "sha256:7a9ae2f32c11aebb4be7c8fcbfdc1916893c33a2e9ad15c3925e5e77b3cbd965" [label=""];
  "sha256:7a9ae2f32c11aebb4be7c8fcbfdc1916893c33a2e9ad15c3925e5e77b3cbd965" -> "sha256:c868f5c7265072ae8bf11577a8728ffd4643ed968b42a28aa8d240a3fdc8a72d" [label=""];
}

