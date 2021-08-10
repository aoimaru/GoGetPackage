[app/sources/260899905.Dockerfile]
digraph {
  "sha256:0a41e092e775576af8088d97f32e6c0b31d4ab16ff080e67f59fcb7e4622c223" [label="docker-image://docker.io/library/nginx:1.11.10-alpine" shape="ellipse"];
  "sha256:27001a83347d189dcf0e732c64d7d40f210abf1ba245394b1f28974011ecf83b" [label="/bin/sh -c rm -rf /etc/nginx/conf.d/* &&     chown -R nginx:nginx /var/cache/nginx &&     touch /var/run/nginx.pid &&     chown nginx:nginx /var/run/nginx.pid" shape="box"];
  "sha256:72d7e9fb1b061bec0efc181deebc3106a70e09cff63335fd5686cd12266ebcba" [label="local://context" shape="ellipse"];
  "sha256:994b2dec88f163a0539059841b7fbef59a5c683d4b3fb617da7ea1bb31ea2972" [label="copy{src=/stage, dest=/}" shape="note"];
  "sha256:488916e897c803b7ef307d2e018dc8d16a546ec0c32ab7a86d410684aa06505c" [label="/bin/sh -c chown -R nginx:nginx /etc/nginx/conf.d" shape="box"];
  "sha256:58afb431aa86a7e2a052aebf40f74e12dc5ba4cea465fd746bfccda253523bfe" [label="sha256:58afb431aa86a7e2a052aebf40f74e12dc5ba4cea465fd746bfccda253523bfe" shape="plaintext"];
  "sha256:0a41e092e775576af8088d97f32e6c0b31d4ab16ff080e67f59fcb7e4622c223" -> "sha256:27001a83347d189dcf0e732c64d7d40f210abf1ba245394b1f28974011ecf83b" [label=""];
  "sha256:27001a83347d189dcf0e732c64d7d40f210abf1ba245394b1f28974011ecf83b" -> "sha256:994b2dec88f163a0539059841b7fbef59a5c683d4b3fb617da7ea1bb31ea2972" [label=""];
  "sha256:72d7e9fb1b061bec0efc181deebc3106a70e09cff63335fd5686cd12266ebcba" -> "sha256:994b2dec88f163a0539059841b7fbef59a5c683d4b3fb617da7ea1bb31ea2972" [label=""];
  "sha256:994b2dec88f163a0539059841b7fbef59a5c683d4b3fb617da7ea1bb31ea2972" -> "sha256:488916e897c803b7ef307d2e018dc8d16a546ec0c32ab7a86d410684aa06505c" [label=""];
  "sha256:488916e897c803b7ef307d2e018dc8d16a546ec0c32ab7a86d410684aa06505c" -> "sha256:58afb431aa86a7e2a052aebf40f74e12dc5ba4cea465fd746bfccda253523bfe" [label=""];
}

