[app/sources/341900266.Dockerfile]
digraph {
  "sha256:c51d4ac70f37749d1d009883cc36e8001f93f3a3629a1dea44de81ec24e40fc8" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:cbd68d3f019fd0849dc69f961ded044ce0762c1e0fb5352c7b47621d8111ba30" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:b0e6d3861478b311fd56b5adc0dda52ec0a0f150a78df2b12117dcf1b2f2735c" [label="pip install requests" shape="box"];
  "sha256:7bbab9fafb01e6b5d48047814bd13dcc29ee370000ddb6ae57c18b5e590b05b6" [label="sha256:7bbab9fafb01e6b5d48047814bd13dcc29ee370000ddb6ae57c18b5e590b05b6" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:cbd68d3f019fd0849dc69f961ded044ce0762c1e0fb5352c7b47621d8111ba30" [label=""];
  "sha256:c51d4ac70f37749d1d009883cc36e8001f93f3a3629a1dea44de81ec24e40fc8" -> "sha256:cbd68d3f019fd0849dc69f961ded044ce0762c1e0fb5352c7b47621d8111ba30" [label=""];
  "sha256:cbd68d3f019fd0849dc69f961ded044ce0762c1e0fb5352c7b47621d8111ba30" -> "sha256:b0e6d3861478b311fd56b5adc0dda52ec0a0f150a78df2b12117dcf1b2f2735c" [label=""];
  "sha256:b0e6d3861478b311fd56b5adc0dda52ec0a0f150a78df2b12117dcf1b2f2735c" -> "sha256:7bbab9fafb01e6b5d48047814bd13dcc29ee370000ddb6ae57c18b5e590b05b6" [label=""];
}

