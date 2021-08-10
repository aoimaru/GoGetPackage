[app/sources/400901752.Dockerfile]
digraph {
  "sha256:efc9a67806b04553b9cfb7e9ef69b9b10ff45969d89c6c1b86fdcb00108ef53d" [label="docker-image://docker.io/library/python:3.7-slim-stretch" shape="ellipse"];
  "sha256:bb8b2bfbaa882b0022d4318e10e3f9f99470a4ec251735fbe789fe908a40f809" [label="/bin/sh -c apt-get -q update     && apt-get -q --yes install netcat libpcre3 libpcre3-dev default-libmysqlclient-dev mysql-client curl gcc xz-utils git     && apt-get clean" shape="box"];
  "sha256:5079e1ae1dd77e6bd92b286786da976fb7a74488b8b42af388d0aad4ba59d8f2" [label="mkdir{path=/app}" shape="note"];
  "sha256:669d2171dd29095cefd9557178ec74553c17dbfe93e25b5db8b95630d21b502e" [label="local://context" shape="ellipse"];
  "sha256:507c1c11a8e8dcc1a278f5d5fafb12fc78a963b7eeb2d64f8841606253c37165" [label="copy{src=/requirements.txt, dest=/app/},copy{src=/requirements-tox.txt, dest=/app/}" shape="note"];
  "sha256:3a4d54c131a0929235c67da49be78bdf9ac1abfa2aa72ed39b37a119626a3bb6" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:9728efd10e54ff66ef6a6cacd2f804f649d77db2e606d1eaddffcfb12328226a" [label="/bin/sh -c pip install -r requirements-tox.txt" shape="box"];
  "sha256:9de0ea4bff8c34d1580f8728fd21d7f3c4b04340311a40873374e1169cf863b3" [label="copy{src=/aus-data-snapshots, dest=/app/aus-data-snapshots/}" shape="note"];
  "sha256:25a9196dfbef21c7198f1bc132020311aa6327d1f9a8a154c3d0bc59c0821b81" [label="copy{src=/auslib, dest=/app/auslib/}" shape="note"];
  "sha256:94b4be36adfb57b765127382a68842d4851106ca6aa82907bd5c972483555b17" [label="copy{src=/ui, dest=/app/ui/}" shape="note"];
  "sha256:71758ef584801e430699deee8605b2929eade7d66588dbd848ee43f286cb1445" [label="copy{src=/scripts, dest=/app/scripts/}" shape="note"];
  "sha256:8566e7091715241864c48f7c66549688bab96b121a9542f667863e6ee69c20cc" [label="copy{src=/uwsgi, dest=/app/uwsgi/}" shape="note"];
  "sha256:b9dd1cf421b3c387a1d0a3c5b40b36fbea960f11ea764b7b1318d9ccc582e63c" [label="copy{src=/.coveragerc, dest=/app/},copy{src=/MANIFEST.in, dest=/app/},copy{src=/requirements-test.txt, dest=/app/},copy{src=/setup.py, dest=/app/},copy{src=/tox.ini, dest=/app/},copy{src=/version.json, dest=/app/},copy{src=/version.txt, dest=/app/}" shape="note"];
  "sha256:cbdc0cef8734296c0653d6f12288ecf5faeae93b1645050bef56681d0e76dc0e" [label="copy{src=/.git, dest=/app/.git/}" shape="note"];
  "sha256:754583c17534faa04a24b210c71bbf7422d3a7848274d12a43cd743e22971a59" [label="sha256:754583c17534faa04a24b210c71bbf7422d3a7848274d12a43cd743e22971a59" shape="plaintext"];
  "sha256:efc9a67806b04553b9cfb7e9ef69b9b10ff45969d89c6c1b86fdcb00108ef53d" -> "sha256:bb8b2bfbaa882b0022d4318e10e3f9f99470a4ec251735fbe789fe908a40f809" [label=""];
  "sha256:bb8b2bfbaa882b0022d4318e10e3f9f99470a4ec251735fbe789fe908a40f809" -> "sha256:5079e1ae1dd77e6bd92b286786da976fb7a74488b8b42af388d0aad4ba59d8f2" [label=""];
  "sha256:5079e1ae1dd77e6bd92b286786da976fb7a74488b8b42af388d0aad4ba59d8f2" -> "sha256:507c1c11a8e8dcc1a278f5d5fafb12fc78a963b7eeb2d64f8841606253c37165" [label=""];
  "sha256:669d2171dd29095cefd9557178ec74553c17dbfe93e25b5db8b95630d21b502e" -> "sha256:507c1c11a8e8dcc1a278f5d5fafb12fc78a963b7eeb2d64f8841606253c37165" [label=""];
  "sha256:507c1c11a8e8dcc1a278f5d5fafb12fc78a963b7eeb2d64f8841606253c37165" -> "sha256:3a4d54c131a0929235c67da49be78bdf9ac1abfa2aa72ed39b37a119626a3bb6" [label=""];
  "sha256:3a4d54c131a0929235c67da49be78bdf9ac1abfa2aa72ed39b37a119626a3bb6" -> "sha256:9728efd10e54ff66ef6a6cacd2f804f649d77db2e606d1eaddffcfb12328226a" [label=""];
  "sha256:9728efd10e54ff66ef6a6cacd2f804f649d77db2e606d1eaddffcfb12328226a" -> "sha256:9de0ea4bff8c34d1580f8728fd21d7f3c4b04340311a40873374e1169cf863b3" [label=""];
  "sha256:669d2171dd29095cefd9557178ec74553c17dbfe93e25b5db8b95630d21b502e" -> "sha256:9de0ea4bff8c34d1580f8728fd21d7f3c4b04340311a40873374e1169cf863b3" [label=""];
  "sha256:9de0ea4bff8c34d1580f8728fd21d7f3c4b04340311a40873374e1169cf863b3" -> "sha256:25a9196dfbef21c7198f1bc132020311aa6327d1f9a8a154c3d0bc59c0821b81" [label=""];
  "sha256:669d2171dd29095cefd9557178ec74553c17dbfe93e25b5db8b95630d21b502e" -> "sha256:25a9196dfbef21c7198f1bc132020311aa6327d1f9a8a154c3d0bc59c0821b81" [label=""];
  "sha256:25a9196dfbef21c7198f1bc132020311aa6327d1f9a8a154c3d0bc59c0821b81" -> "sha256:94b4be36adfb57b765127382a68842d4851106ca6aa82907bd5c972483555b17" [label=""];
  "sha256:669d2171dd29095cefd9557178ec74553c17dbfe93e25b5db8b95630d21b502e" -> "sha256:94b4be36adfb57b765127382a68842d4851106ca6aa82907bd5c972483555b17" [label=""];
  "sha256:94b4be36adfb57b765127382a68842d4851106ca6aa82907bd5c972483555b17" -> "sha256:71758ef584801e430699deee8605b2929eade7d66588dbd848ee43f286cb1445" [label=""];
  "sha256:669d2171dd29095cefd9557178ec74553c17dbfe93e25b5db8b95630d21b502e" -> "sha256:71758ef584801e430699deee8605b2929eade7d66588dbd848ee43f286cb1445" [label=""];
  "sha256:71758ef584801e430699deee8605b2929eade7d66588dbd848ee43f286cb1445" -> "sha256:8566e7091715241864c48f7c66549688bab96b121a9542f667863e6ee69c20cc" [label=""];
  "sha256:669d2171dd29095cefd9557178ec74553c17dbfe93e25b5db8b95630d21b502e" -> "sha256:8566e7091715241864c48f7c66549688bab96b121a9542f667863e6ee69c20cc" [label=""];
  "sha256:8566e7091715241864c48f7c66549688bab96b121a9542f667863e6ee69c20cc" -> "sha256:b9dd1cf421b3c387a1d0a3c5b40b36fbea960f11ea764b7b1318d9ccc582e63c" [label=""];
  "sha256:669d2171dd29095cefd9557178ec74553c17dbfe93e25b5db8b95630d21b502e" -> "sha256:b9dd1cf421b3c387a1d0a3c5b40b36fbea960f11ea764b7b1318d9ccc582e63c" [label=""];
  "sha256:b9dd1cf421b3c387a1d0a3c5b40b36fbea960f11ea764b7b1318d9ccc582e63c" -> "sha256:cbdc0cef8734296c0653d6f12288ecf5faeae93b1645050bef56681d0e76dc0e" [label=""];
  "sha256:669d2171dd29095cefd9557178ec74553c17dbfe93e25b5db8b95630d21b502e" -> "sha256:cbdc0cef8734296c0653d6f12288ecf5faeae93b1645050bef56681d0e76dc0e" [label=""];
  "sha256:cbdc0cef8734296c0653d6f12288ecf5faeae93b1645050bef56681d0e76dc0e" -> "sha256:754583c17534faa04a24b210c71bbf7422d3a7848274d12a43cd743e22971a59" [label=""];
}

