[app/sources/247682511.Dockerfile]
digraph {
  "sha256:8ba0a1c58ce4d5798c6f60cd1ca5392c51dd66fdffdd00d2a84dbcfbd120f274" [label="docker-image://docker.io/library/python:3.5@sha256:42a37d6b8c00b186bdfb2b620fa8023eb775b3eb3a768fd3c2e421964eee9665" shape="ellipse"];
  "sha256:15cf039c4f402ed1e8f06b48be7d3a092d216460cb90165126ba94b1b84e193d" [label="local://context" shape="ellipse"];
  "sha256:2dfa00501aefc4b89fea603a5f4333dfe79c6f8b82e319d83575e4d2751b29a2" [label="copy{src=/requirements, dest=/requirements}" shape="note"];
  "sha256:74533796054c2537957452242279094d4abee3029c2c58af5ce9563e70e5f3da" [label="/bin/sh -c pip install -r /requirements/production.txt     && groupadd -r django     && useradd -r -g django django" shape="box"];
  "sha256:b6187ed796e9bbd56579391c6852915d748293c38a5ec813f398fc020480bfae" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:08dea7bc65a036d96394ea70c252dec779d0d400c38da61e41c5ace972010a4e" [label="/bin/sh -c chown -R django /app" shape="box"];
  "sha256:8a3a53a2597c9d5bad458d8ff1860965d17ed1905321e9225ba50b0c4523217c" [label="copy{src=/compose/django/gunicorn.sh, dest=/gunicorn.sh}" shape="note"];
  "sha256:3d71286a060654e967425aa5042f510b56fe92b76fcbe2ec650124055add1d65" [label="copy{src=/compose/django/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:3c27f6e12e1ec8491ecf4aac6dfb5f834c627ee211c9d310c15ec8a5a57f8250" [label="/bin/sh -c sed -i 's/\\r//' /entrypoint.sh     && sed -i 's/\\r//' /gunicorn.sh     && chmod +x /entrypoint.sh     && chown django /entrypoint.sh     && chmod +x /gunicorn.sh     && chown django /gunicorn.sh" shape="box"];
  "sha256:44f425d9aff2d43b6d2251586a97c355b4577a5f1689e500cfe5b3a14d009cdf" [label="mkdir{path=/app}" shape="note"];
  "sha256:a3208d0a159cd4e9ef63cf0c8118b1253b80a12fdad3df2d0b51b81cce9b3429" [label="sha256:a3208d0a159cd4e9ef63cf0c8118b1253b80a12fdad3df2d0b51b81cce9b3429" shape="plaintext"];
  "sha256:8ba0a1c58ce4d5798c6f60cd1ca5392c51dd66fdffdd00d2a84dbcfbd120f274" -> "sha256:2dfa00501aefc4b89fea603a5f4333dfe79c6f8b82e319d83575e4d2751b29a2" [label=""];
  "sha256:15cf039c4f402ed1e8f06b48be7d3a092d216460cb90165126ba94b1b84e193d" -> "sha256:2dfa00501aefc4b89fea603a5f4333dfe79c6f8b82e319d83575e4d2751b29a2" [label=""];
  "sha256:2dfa00501aefc4b89fea603a5f4333dfe79c6f8b82e319d83575e4d2751b29a2" -> "sha256:74533796054c2537957452242279094d4abee3029c2c58af5ce9563e70e5f3da" [label=""];
  "sha256:74533796054c2537957452242279094d4abee3029c2c58af5ce9563e70e5f3da" -> "sha256:b6187ed796e9bbd56579391c6852915d748293c38a5ec813f398fc020480bfae" [label=""];
  "sha256:15cf039c4f402ed1e8f06b48be7d3a092d216460cb90165126ba94b1b84e193d" -> "sha256:b6187ed796e9bbd56579391c6852915d748293c38a5ec813f398fc020480bfae" [label=""];
  "sha256:b6187ed796e9bbd56579391c6852915d748293c38a5ec813f398fc020480bfae" -> "sha256:08dea7bc65a036d96394ea70c252dec779d0d400c38da61e41c5ace972010a4e" [label=""];
  "sha256:08dea7bc65a036d96394ea70c252dec779d0d400c38da61e41c5ace972010a4e" -> "sha256:8a3a53a2597c9d5bad458d8ff1860965d17ed1905321e9225ba50b0c4523217c" [label=""];
  "sha256:15cf039c4f402ed1e8f06b48be7d3a092d216460cb90165126ba94b1b84e193d" -> "sha256:8a3a53a2597c9d5bad458d8ff1860965d17ed1905321e9225ba50b0c4523217c" [label=""];
  "sha256:8a3a53a2597c9d5bad458d8ff1860965d17ed1905321e9225ba50b0c4523217c" -> "sha256:3d71286a060654e967425aa5042f510b56fe92b76fcbe2ec650124055add1d65" [label=""];
  "sha256:15cf039c4f402ed1e8f06b48be7d3a092d216460cb90165126ba94b1b84e193d" -> "sha256:3d71286a060654e967425aa5042f510b56fe92b76fcbe2ec650124055add1d65" [label=""];
  "sha256:3d71286a060654e967425aa5042f510b56fe92b76fcbe2ec650124055add1d65" -> "sha256:3c27f6e12e1ec8491ecf4aac6dfb5f834c627ee211c9d310c15ec8a5a57f8250" [label=""];
  "sha256:3c27f6e12e1ec8491ecf4aac6dfb5f834c627ee211c9d310c15ec8a5a57f8250" -> "sha256:44f425d9aff2d43b6d2251586a97c355b4577a5f1689e500cfe5b3a14d009cdf" [label=""];
  "sha256:44f425d9aff2d43b6d2251586a97c355b4577a5f1689e500cfe5b3a14d009cdf" -> "sha256:a3208d0a159cd4e9ef63cf0c8118b1253b80a12fdad3df2d0b51b81cce9b3429" [label=""];
}

