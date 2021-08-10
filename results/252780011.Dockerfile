[app/sources/252780011.Dockerfile]
digraph {
  "sha256:db37d4865bb0df8efd2541d70fecd12c732da134b915bc095011f4456cf882cb" [label="docker-image://docker.io/library/nginx:stable-alpine" shape="ellipse"];
  "sha256:25d11cb1fd6421af56567cc61b1e181bd984db083d3f34e7aa044e279ca0b5b3" [label="/bin/sh -c apk add --no-cache openssl ca-certificates bash" shape="box"];
  "sha256:84d10e729436ad55d8d8686bac416868c5e0aa48b1d4b52d9dcc2995fc7928b8" [label="local://context" shape="ellipse"];
  "sha256:3913c86998eca6cb6755c22fda0312674b733d3b1fd6c7898a6675ecfb95a9f9" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:8e803c4c953daf62c8124f4da768db5b68a6f21f971794550e98868f7560cd13" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:17eacda1e4af063f2f6b42f93fcd26fdbf0adbd5e979b7ee44fbd2405914e5f1" [label="sha256:17eacda1e4af063f2f6b42f93fcd26fdbf0adbd5e979b7ee44fbd2405914e5f1" shape="plaintext"];
  "sha256:db37d4865bb0df8efd2541d70fecd12c732da134b915bc095011f4456cf882cb" -> "sha256:25d11cb1fd6421af56567cc61b1e181bd984db083d3f34e7aa044e279ca0b5b3" [label=""];
  "sha256:25d11cb1fd6421af56567cc61b1e181bd984db083d3f34e7aa044e279ca0b5b3" -> "sha256:3913c86998eca6cb6755c22fda0312674b733d3b1fd6c7898a6675ecfb95a9f9" [label=""];
  "sha256:84d10e729436ad55d8d8686bac416868c5e0aa48b1d4b52d9dcc2995fc7928b8" -> "sha256:3913c86998eca6cb6755c22fda0312674b733d3b1fd6c7898a6675ecfb95a9f9" [label=""];
  "sha256:3913c86998eca6cb6755c22fda0312674b733d3b1fd6c7898a6675ecfb95a9f9" -> "sha256:8e803c4c953daf62c8124f4da768db5b68a6f21f971794550e98868f7560cd13" [label=""];
  "sha256:84d10e729436ad55d8d8686bac416868c5e0aa48b1d4b52d9dcc2995fc7928b8" -> "sha256:8e803c4c953daf62c8124f4da768db5b68a6f21f971794550e98868f7560cd13" [label=""];
  "sha256:8e803c4c953daf62c8124f4da768db5b68a6f21f971794550e98868f7560cd13" -> "sha256:17eacda1e4af063f2f6b42f93fcd26fdbf0adbd5e979b7ee44fbd2405914e5f1" [label=""];
}

