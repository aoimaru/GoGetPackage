[app/sources/187420783.Dockerfile]
digraph {
  "sha256:c4109fa5e25fe9e69273b16f341c214548d04bbb9122d7a337abb80e163911ae" [label="docker-image://docker.io/library/nginx:1.15-alpine" shape="ellipse"];
  "sha256:1ec45f0f49b3c81daad2478a62b68731b7a35cd8e84e8668adbc97b8d50f8e10" [label="local://context" shape="ellipse"];
  "sha256:00d774b089ca6d119c58387f324e68965b892e9d642c8e7e702648ec8dfad04e" [label="copy{src=/public, dest=/var/www/html/public}" shape="note"];
  "sha256:9aced69773067c688907501d0e1967cc3470acc80abde5670281dc6ecebba4bb" [label="copy{src=/docker/nginx/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:49feb729a499b0e119bd9b628ece86f3f2094ea44f2d2628e22a071e5224711a" [label="copy{src=/docker/nginx/default.conf.template, dest=/etc/nginx/conf.d/default.conf.template}" shape="note"];
  "sha256:4d18744df3b1ff66b40023abbbc9aa25561405360aa22557770da11175d96a25" [label="sha256:4d18744df3b1ff66b40023abbbc9aa25561405360aa22557770da11175d96a25" shape="plaintext"];
  "sha256:c4109fa5e25fe9e69273b16f341c214548d04bbb9122d7a337abb80e163911ae" -> "sha256:00d774b089ca6d119c58387f324e68965b892e9d642c8e7e702648ec8dfad04e" [label=""];
  "sha256:1ec45f0f49b3c81daad2478a62b68731b7a35cd8e84e8668adbc97b8d50f8e10" -> "sha256:00d774b089ca6d119c58387f324e68965b892e9d642c8e7e702648ec8dfad04e" [label=""];
  "sha256:00d774b089ca6d119c58387f324e68965b892e9d642c8e7e702648ec8dfad04e" -> "sha256:9aced69773067c688907501d0e1967cc3470acc80abde5670281dc6ecebba4bb" [label=""];
  "sha256:1ec45f0f49b3c81daad2478a62b68731b7a35cd8e84e8668adbc97b8d50f8e10" -> "sha256:9aced69773067c688907501d0e1967cc3470acc80abde5670281dc6ecebba4bb" [label=""];
  "sha256:9aced69773067c688907501d0e1967cc3470acc80abde5670281dc6ecebba4bb" -> "sha256:49feb729a499b0e119bd9b628ece86f3f2094ea44f2d2628e22a071e5224711a" [label=""];
  "sha256:1ec45f0f49b3c81daad2478a62b68731b7a35cd8e84e8668adbc97b8d50f8e10" -> "sha256:49feb729a499b0e119bd9b628ece86f3f2094ea44f2d2628e22a071e5224711a" [label=""];
  "sha256:49feb729a499b0e119bd9b628ece86f3f2094ea44f2d2628e22a071e5224711a" -> "sha256:4d18744df3b1ff66b40023abbbc9aa25561405360aa22557770da11175d96a25" [label=""];
}

