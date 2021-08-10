[app/sources/340097299.Dockerfile]
digraph {
  "sha256:3910b00124692882adbbf1bbb72ca6c5046d2efe94a566c5e26b7ac96b795cdd" [label="local://context" shape="ellipse"];
  "sha256:976ce4807d0b9cd826abe35604eb89773637396199db9256a3a876cfe3da079d" [label="docker-image://docker.io/mozilla/bugbug-base:latest" shape="ellipse"];
  "sha256:4314cb6ce06b0677792a990edf27163a0e9d4e7d282cb17ff492762ca0822875" [label="copy{src=/requirements.txt, dest=/code/http_service/}" shape="note"];
  "sha256:1ec87c35e39adf71c088c74cf20a0809cdb76574e4ae04268693db86dc5bbebe" [label="/bin/sh -c pip install -r /code/http_service/requirements.txt" shape="box"];
  "sha256:d6c7e76ad5115886cdb4593daf18e17e2c00c9fa33a7481317abc212fa142ab8" [label="copy{src=/, dest=/code/http_service/}" shape="note"];
  "sha256:10dfdce0ba2478a6866dafc545149377149b5ceb60b76594650a355f727d360b" [label="mkdir{path=/code}" shape="note"];
  "sha256:d8ea45012acc9ac454ce70fc959c4b5b53feaa52cc43bfd1e84df21671504dfb" [label="/bin/sh -c bash /code/http_service/ensure_models.sh" shape="box"];
  "sha256:f731d491f6ea479f9736e4855553fdecf6e089cb74389045699accb4248e9f69" [label="sha256:f731d491f6ea479f9736e4855553fdecf6e089cb74389045699accb4248e9f69" shape="plaintext"];
  "sha256:976ce4807d0b9cd826abe35604eb89773637396199db9256a3a876cfe3da079d" -> "sha256:4314cb6ce06b0677792a990edf27163a0e9d4e7d282cb17ff492762ca0822875" [label=""];
  "sha256:3910b00124692882adbbf1bbb72ca6c5046d2efe94a566c5e26b7ac96b795cdd" -> "sha256:4314cb6ce06b0677792a990edf27163a0e9d4e7d282cb17ff492762ca0822875" [label=""];
  "sha256:4314cb6ce06b0677792a990edf27163a0e9d4e7d282cb17ff492762ca0822875" -> "sha256:1ec87c35e39adf71c088c74cf20a0809cdb76574e4ae04268693db86dc5bbebe" [label=""];
  "sha256:1ec87c35e39adf71c088c74cf20a0809cdb76574e4ae04268693db86dc5bbebe" -> "sha256:d6c7e76ad5115886cdb4593daf18e17e2c00c9fa33a7481317abc212fa142ab8" [label=""];
  "sha256:3910b00124692882adbbf1bbb72ca6c5046d2efe94a566c5e26b7ac96b795cdd" -> "sha256:d6c7e76ad5115886cdb4593daf18e17e2c00c9fa33a7481317abc212fa142ab8" [label=""];
  "sha256:d6c7e76ad5115886cdb4593daf18e17e2c00c9fa33a7481317abc212fa142ab8" -> "sha256:10dfdce0ba2478a6866dafc545149377149b5ceb60b76594650a355f727d360b" [label=""];
  "sha256:10dfdce0ba2478a6866dafc545149377149b5ceb60b76594650a355f727d360b" -> "sha256:d8ea45012acc9ac454ce70fc959c4b5b53feaa52cc43bfd1e84df21671504dfb" [label=""];
  "sha256:d8ea45012acc9ac454ce70fc959c4b5b53feaa52cc43bfd1e84df21671504dfb" -> "sha256:f731d491f6ea479f9736e4855553fdecf6e089cb74389045699accb4248e9f69" [label=""];
}

