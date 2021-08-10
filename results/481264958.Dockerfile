[app/sources/481264958.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:07917f61d8401e5cef8a4252bec8e8de270ddb76bca3cde55a69c917f58e110b" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:d3d33d76bafffaa2ef6d68be82476698001469cae3ae7f3802048c4064c56764" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:62ea466c0860f29b2d4a5e9b60d3c2e5a6f82eb3a04c39b5443e79f86704a165" [label="/bin/sh -c apt-get update && apt-get install -y   vim   less   nano" shape="box"];
  "sha256:431dc2e6972f97d89bddd230861c7c5b4c9d538803bc5b030e038820e8de90d9" [label="/bin/sh -c apt-get autoremove -y" shape="box"];
  "sha256:e60e218a51714f42ef67188f7e497d33943b8abed4dcabdbebb2cfab56d768af" [label="local://context" shape="ellipse"];
  "sha256:993048abb2d47428c8b60ee36be50b1650dbf069a18a89eed16856827c0ac1e9" [label="copy{src=/requirements.txt, dest=/usr/src/app/}" shape="note"];
  "sha256:b1b1ec813cf841aede385115b9bbad955edb40cef3408278c1c4c3fe2efaa482" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:973d9305f2c794811621e0ff1e591475d53da64d9ce627f6933780f9017a7dc9" [label="/bin/sh -c pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:ab618989be487481b191c816e3438abe096945f4f8ecf3f79013639ac4d940cd" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:294d4156f72701b07afeb60c9a92ac9e3dc8cfc610f89edd16492a8fd411e406" [label="copy{src=/main.py, dest=/usr/src/app/main.py}" shape="note"];
  "sha256:59ce8b7ba1b8d8f55230d442004df97861058273f8cf66a589ec6e011da7db1e" [label="copy{src=/util, dest=/usr/src/util}" shape="note"];
  "sha256:955022f731476e30227a69f632cb2cdc3f2254dd0bc39fbd85b2a3abcc583862" [label="sha256:955022f731476e30227a69f632cb2cdc3f2254dd0bc39fbd85b2a3abcc583862" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:07917f61d8401e5cef8a4252bec8e8de270ddb76bca3cde55a69c917f58e110b" [label=""];
  "sha256:07917f61d8401e5cef8a4252bec8e8de270ddb76bca3cde55a69c917f58e110b" -> "sha256:d3d33d76bafffaa2ef6d68be82476698001469cae3ae7f3802048c4064c56764" [label=""];
  "sha256:d3d33d76bafffaa2ef6d68be82476698001469cae3ae7f3802048c4064c56764" -> "sha256:62ea466c0860f29b2d4a5e9b60d3c2e5a6f82eb3a04c39b5443e79f86704a165" [label=""];
  "sha256:62ea466c0860f29b2d4a5e9b60d3c2e5a6f82eb3a04c39b5443e79f86704a165" -> "sha256:431dc2e6972f97d89bddd230861c7c5b4c9d538803bc5b030e038820e8de90d9" [label=""];
  "sha256:431dc2e6972f97d89bddd230861c7c5b4c9d538803bc5b030e038820e8de90d9" -> "sha256:993048abb2d47428c8b60ee36be50b1650dbf069a18a89eed16856827c0ac1e9" [label=""];
  "sha256:e60e218a51714f42ef67188f7e497d33943b8abed4dcabdbebb2cfab56d768af" -> "sha256:993048abb2d47428c8b60ee36be50b1650dbf069a18a89eed16856827c0ac1e9" [label=""];
  "sha256:993048abb2d47428c8b60ee36be50b1650dbf069a18a89eed16856827c0ac1e9" -> "sha256:b1b1ec813cf841aede385115b9bbad955edb40cef3408278c1c4c3fe2efaa482" [label=""];
  "sha256:b1b1ec813cf841aede385115b9bbad955edb40cef3408278c1c4c3fe2efaa482" -> "sha256:973d9305f2c794811621e0ff1e591475d53da64d9ce627f6933780f9017a7dc9" [label=""];
  "sha256:973d9305f2c794811621e0ff1e591475d53da64d9ce627f6933780f9017a7dc9" -> "sha256:ab618989be487481b191c816e3438abe096945f4f8ecf3f79013639ac4d940cd" [label=""];
  "sha256:e60e218a51714f42ef67188f7e497d33943b8abed4dcabdbebb2cfab56d768af" -> "sha256:ab618989be487481b191c816e3438abe096945f4f8ecf3f79013639ac4d940cd" [label=""];
  "sha256:ab618989be487481b191c816e3438abe096945f4f8ecf3f79013639ac4d940cd" -> "sha256:294d4156f72701b07afeb60c9a92ac9e3dc8cfc610f89edd16492a8fd411e406" [label=""];
  "sha256:e60e218a51714f42ef67188f7e497d33943b8abed4dcabdbebb2cfab56d768af" -> "sha256:294d4156f72701b07afeb60c9a92ac9e3dc8cfc610f89edd16492a8fd411e406" [label=""];
  "sha256:294d4156f72701b07afeb60c9a92ac9e3dc8cfc610f89edd16492a8fd411e406" -> "sha256:59ce8b7ba1b8d8f55230d442004df97861058273f8cf66a589ec6e011da7db1e" [label=""];
  "sha256:e60e218a51714f42ef67188f7e497d33943b8abed4dcabdbebb2cfab56d768af" -> "sha256:59ce8b7ba1b8d8f55230d442004df97861058273f8cf66a589ec6e011da7db1e" [label=""];
  "sha256:59ce8b7ba1b8d8f55230d442004df97861058273f8cf66a589ec6e011da7db1e" -> "sha256:955022f731476e30227a69f632cb2cdc3f2254dd0bc39fbd85b2a3abcc583862" [label=""];
}

