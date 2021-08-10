[app/sources/252772078.Dockerfile]
digraph {
  "sha256:8f8c46eff823643cd4cc070572bd8d7ee58670ae28ef31a3af33aa1912781014" [label="local://context" shape="ellipse"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:cc05af1d6004e1ca48bd61e92247650e735736876d04a86c9c56c211875e5159" [label="/bin/sh -c apk add --no-cache openssh-client git" shape="box"];
  "sha256:81e630f6664cd288b96dfd7322d40a012b6676b48bb51fb9fc54efa90e139cf9" [label="copy{src=/--from=builder, dest=/usr/bin/caddy},copy{src=/install/caddy, dest=/usr/bin/caddy}" shape="note"];
  "sha256:5495474e3b2733be4f9f90209764165fafb1c3a944b4edab653d8b68f553004a" [label="/bin/sh -c /usr/bin/caddy -version" shape="box"];
  "sha256:be35d26eba93dd880fefdd53f102512a8523182b63739eb613d17ca0d8e0d7d1" [label="/bin/sh -c /usr/bin/caddy -plugins" shape="box"];
  "sha256:66142a4f0aab5734445dcd632f7cbc3127111c3b7ad3c74f8b25ad8b912a48e4" [label="mkdir{path=/srv}" shape="note"];
  "sha256:5e546479ce6ba1634f7b3a07c065443edef5da4c0b42dbb3ed402d3f0e11b5af" [label="copy{src=/Caddyfile, dest=/etc/Caddyfile}" shape="note"];
  "sha256:c44e44bc3e7778efb787522262ed1ee338ae212e91eef464c8035bece06c2266" [label="copy{src=/index.html, dest=/srv/index.html}" shape="note"];
  "sha256:9c1f05deb2ffcaf5b0bf257c1b96b2cd7c054dcd763d8ad7d4633ce53b2f35e3" [label="/bin/sh -c touch /etc/requests.log" shape="box"];
  "sha256:d73919e30ad26a2aac037b5fe0e2d35574ad5577619cb606cc16593ed5ef6a8a" [label="copy{src=/--from=builder, dest=/bin/parent},copy{src=/go/bin/parent, dest=/bin/parent}" shape="note"];
  "sha256:f857e9199fb2466d7aa5732fb5f9863b51da5ac5f78999ff6e521faa5de06876" [label="sha256:f857e9199fb2466d7aa5732fb5f9863b51da5ac5f78999ff6e521faa5de06876" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:cc05af1d6004e1ca48bd61e92247650e735736876d04a86c9c56c211875e5159" [label=""];
  "sha256:cc05af1d6004e1ca48bd61e92247650e735736876d04a86c9c56c211875e5159" -> "sha256:81e630f6664cd288b96dfd7322d40a012b6676b48bb51fb9fc54efa90e139cf9" [label=""];
  "sha256:8f8c46eff823643cd4cc070572bd8d7ee58670ae28ef31a3af33aa1912781014" -> "sha256:81e630f6664cd288b96dfd7322d40a012b6676b48bb51fb9fc54efa90e139cf9" [label=""];
  "sha256:81e630f6664cd288b96dfd7322d40a012b6676b48bb51fb9fc54efa90e139cf9" -> "sha256:5495474e3b2733be4f9f90209764165fafb1c3a944b4edab653d8b68f553004a" [label=""];
  "sha256:5495474e3b2733be4f9f90209764165fafb1c3a944b4edab653d8b68f553004a" -> "sha256:be35d26eba93dd880fefdd53f102512a8523182b63739eb613d17ca0d8e0d7d1" [label=""];
  "sha256:be35d26eba93dd880fefdd53f102512a8523182b63739eb613d17ca0d8e0d7d1" -> "sha256:66142a4f0aab5734445dcd632f7cbc3127111c3b7ad3c74f8b25ad8b912a48e4" [label=""];
  "sha256:66142a4f0aab5734445dcd632f7cbc3127111c3b7ad3c74f8b25ad8b912a48e4" -> "sha256:5e546479ce6ba1634f7b3a07c065443edef5da4c0b42dbb3ed402d3f0e11b5af" [label=""];
  "sha256:8f8c46eff823643cd4cc070572bd8d7ee58670ae28ef31a3af33aa1912781014" -> "sha256:5e546479ce6ba1634f7b3a07c065443edef5da4c0b42dbb3ed402d3f0e11b5af" [label=""];
  "sha256:5e546479ce6ba1634f7b3a07c065443edef5da4c0b42dbb3ed402d3f0e11b5af" -> "sha256:c44e44bc3e7778efb787522262ed1ee338ae212e91eef464c8035bece06c2266" [label=""];
  "sha256:8f8c46eff823643cd4cc070572bd8d7ee58670ae28ef31a3af33aa1912781014" -> "sha256:c44e44bc3e7778efb787522262ed1ee338ae212e91eef464c8035bece06c2266" [label=""];
  "sha256:c44e44bc3e7778efb787522262ed1ee338ae212e91eef464c8035bece06c2266" -> "sha256:9c1f05deb2ffcaf5b0bf257c1b96b2cd7c054dcd763d8ad7d4633ce53b2f35e3" [label=""];
  "sha256:9c1f05deb2ffcaf5b0bf257c1b96b2cd7c054dcd763d8ad7d4633ce53b2f35e3" -> "sha256:d73919e30ad26a2aac037b5fe0e2d35574ad5577619cb606cc16593ed5ef6a8a" [label=""];
  "sha256:8f8c46eff823643cd4cc070572bd8d7ee58670ae28ef31a3af33aa1912781014" -> "sha256:d73919e30ad26a2aac037b5fe0e2d35574ad5577619cb606cc16593ed5ef6a8a" [label=""];
  "sha256:d73919e30ad26a2aac037b5fe0e2d35574ad5577619cb606cc16593ed5ef6a8a" -> "sha256:f857e9199fb2466d7aa5732fb5f9863b51da5ac5f78999ff6e521faa5de06876" [label=""];
}

