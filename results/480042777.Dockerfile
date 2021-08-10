[app/sources/480042777.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:ebe338ae3f1623fbaf7b369ea75fbc9c7a4e40babaf6aa2acac11997d4a12ffd" [label="/bin/sh -c apt-get update && apt-get install -y sqlite3 supervisor" shape="box"];
  "sha256:177dc80adef799d14d3425cb29521fecd7f1054e3c4d330b6fc2f7259650a7d6" [label="/bin/sh -c pip install bottle requests lxml" shape="box"];
  "sha256:1b31d3bc88e69188aeb29906d533e2dc529f28da1cf902b49d11388ca5675454" [label="local://context" shape="ellipse"];
  "sha256:3b52677a55ce469f0c12239d752646b561e8b00731ea390b39e34d4ab6f694cb" [label="copy{src=/vAPI.db, dest=/var/www/api/vAPI.db}" shape="note"];
  "sha256:f073859c9516c28ab1c78d0dfefccd1ac9c8b0d1e493241476786abfae31a483" [label="copy{src=/vAPI.py, dest=/var/www/api/vAPI.py}" shape="note"];
  "sha256:56b224b56236f2011707100c8a1e9716c708fb32464dc399d2cd232f3ce330df" [label="copy{src=/vAPI.conf, dest=/etc/supervisor/conf.d/}" shape="note"];
  "sha256:8315855a7af72785b29f0c746cfa2e2b6d5b3bbf63f3624c32e1be27e95372cb" [label="sha256:8315855a7af72785b29f0c746cfa2e2b6d5b3bbf63f3624c32e1be27e95372cb" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:ebe338ae3f1623fbaf7b369ea75fbc9c7a4e40babaf6aa2acac11997d4a12ffd" [label=""];
  "sha256:ebe338ae3f1623fbaf7b369ea75fbc9c7a4e40babaf6aa2acac11997d4a12ffd" -> "sha256:177dc80adef799d14d3425cb29521fecd7f1054e3c4d330b6fc2f7259650a7d6" [label=""];
  "sha256:177dc80adef799d14d3425cb29521fecd7f1054e3c4d330b6fc2f7259650a7d6" -> "sha256:3b52677a55ce469f0c12239d752646b561e8b00731ea390b39e34d4ab6f694cb" [label=""];
  "sha256:1b31d3bc88e69188aeb29906d533e2dc529f28da1cf902b49d11388ca5675454" -> "sha256:3b52677a55ce469f0c12239d752646b561e8b00731ea390b39e34d4ab6f694cb" [label=""];
  "sha256:3b52677a55ce469f0c12239d752646b561e8b00731ea390b39e34d4ab6f694cb" -> "sha256:f073859c9516c28ab1c78d0dfefccd1ac9c8b0d1e493241476786abfae31a483" [label=""];
  "sha256:1b31d3bc88e69188aeb29906d533e2dc529f28da1cf902b49d11388ca5675454" -> "sha256:f073859c9516c28ab1c78d0dfefccd1ac9c8b0d1e493241476786abfae31a483" [label=""];
  "sha256:f073859c9516c28ab1c78d0dfefccd1ac9c8b0d1e493241476786abfae31a483" -> "sha256:56b224b56236f2011707100c8a1e9716c708fb32464dc399d2cd232f3ce330df" [label=""];
  "sha256:1b31d3bc88e69188aeb29906d533e2dc529f28da1cf902b49d11388ca5675454" -> "sha256:56b224b56236f2011707100c8a1e9716c708fb32464dc399d2cd232f3ce330df" [label=""];
  "sha256:56b224b56236f2011707100c8a1e9716c708fb32464dc399d2cd232f3ce330df" -> "sha256:8315855a7af72785b29f0c746cfa2e2b6d5b3bbf63f3624c32e1be27e95372cb" [label=""];
}

