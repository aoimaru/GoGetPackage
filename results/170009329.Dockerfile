[app/sources/170009329.Dockerfile]
digraph {
  "sha256:0c736d3ba4c5b7f6a1157d1e42e06323663133228cc97a3ccc9b5dc4290a1537" [label="docker-image://docker.io/library/python:3-alpine" shape="ellipse"];
  "sha256:d88a867d3efe4f76070f0c2e81c7c2b1095439a572efba46b2a2032a36bc0e89" [label="/bin/sh -c apk add postgresql-dev musl libffi-dev musl-dev gcc" shape="box"];
  "sha256:1be970901e9416b9141574c5f11410f4bdd3ca17797edead6bd4a9962409976f" [label="local://context" shape="ellipse"];
  "sha256:539a93dc2ece8d08984fee25e67e732aeaf180960b213aec997ebac6a8e5798d" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:e28729bc26e062983a54314c44bfd262404ad8612c101355aa3d77316e28846f" [label="/bin/sh -c pip install sandman2 psycopg2 pymysql" shape="box"];
  "sha256:1730def0fdb44f1db6bfe6eeb627909dc274a3ceaf8c6a3846e7ce036f45229d" [label="sha256:1730def0fdb44f1db6bfe6eeb627909dc274a3ceaf8c6a3846e7ce036f45229d" shape="plaintext"];
  "sha256:0c736d3ba4c5b7f6a1157d1e42e06323663133228cc97a3ccc9b5dc4290a1537" -> "sha256:d88a867d3efe4f76070f0c2e81c7c2b1095439a572efba46b2a2032a36bc0e89" [label=""];
  "sha256:d88a867d3efe4f76070f0c2e81c7c2b1095439a572efba46b2a2032a36bc0e89" -> "sha256:539a93dc2ece8d08984fee25e67e732aeaf180960b213aec997ebac6a8e5798d" [label=""];
  "sha256:1be970901e9416b9141574c5f11410f4bdd3ca17797edead6bd4a9962409976f" -> "sha256:539a93dc2ece8d08984fee25e67e732aeaf180960b213aec997ebac6a8e5798d" [label=""];
  "sha256:539a93dc2ece8d08984fee25e67e732aeaf180960b213aec997ebac6a8e5798d" -> "sha256:e28729bc26e062983a54314c44bfd262404ad8612c101355aa3d77316e28846f" [label=""];
  "sha256:e28729bc26e062983a54314c44bfd262404ad8612c101355aa3d77316e28846f" -> "sha256:1730def0fdb44f1db6bfe6eeb627909dc274a3ceaf8c6a3846e7ce036f45229d" [label=""];
}

