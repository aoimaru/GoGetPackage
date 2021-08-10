[app/sources/477608672.Dockerfile]
digraph {
  "sha256:04d140500fd47fcc99a14e6f61313fb600d1f40bf9c93dd0380221baa6017b45" [label="docker-image://docker.io/phusion/baseimage:0.9.21" shape="ellipse"];
  "sha256:03fd9dd71a53e42dc149fca4a71c0b6c1c4e4fb2f0ee18247270102259a89787" [label="/bin/sh -c apt-get update && apt-get install -y python3-pip git python-pip python" shape="box"];
  "sha256:981f75e8478d8aefc994a788bea86bbda2429130a14275e4a76ce6349a7a1970" [label="/bin/sh -c pip3 install anymarkup" shape="box"];
  "sha256:e190148acf1a3b25e1e9f55375a506f1c9259ee6a3ac14e742623e842f1cc45f" [label="local://context" shape="ellipse"];
  "sha256:c31b53b27977f177d354d5bf2e2d072ba55485286d8a1870839d50c1b7e51711" [label="copy{src=/bootstrap.py, dest=/usr/local/bin/bootstrap.py}" shape="note"];
  "sha256:42dd0e835d94b61c149a9dfeaea3f1aec4dac5347c357a7acc1246d4098625d4" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:2522fa2f0f0b099428ce8eee5030fb569bcaed13615a9817caba0f8a08f2d505" [label="sha256:2522fa2f0f0b099428ce8eee5030fb569bcaed13615a9817caba0f8a08f2d505" shape="plaintext"];
  "sha256:04d140500fd47fcc99a14e6f61313fb600d1f40bf9c93dd0380221baa6017b45" -> "sha256:03fd9dd71a53e42dc149fca4a71c0b6c1c4e4fb2f0ee18247270102259a89787" [label=""];
  "sha256:03fd9dd71a53e42dc149fca4a71c0b6c1c4e4fb2f0ee18247270102259a89787" -> "sha256:981f75e8478d8aefc994a788bea86bbda2429130a14275e4a76ce6349a7a1970" [label=""];
  "sha256:981f75e8478d8aefc994a788bea86bbda2429130a14275e4a76ce6349a7a1970" -> "sha256:c31b53b27977f177d354d5bf2e2d072ba55485286d8a1870839d50c1b7e51711" [label=""];
  "sha256:e190148acf1a3b25e1e9f55375a506f1c9259ee6a3ac14e742623e842f1cc45f" -> "sha256:c31b53b27977f177d354d5bf2e2d072ba55485286d8a1870839d50c1b7e51711" [label=""];
  "sha256:c31b53b27977f177d354d5bf2e2d072ba55485286d8a1870839d50c1b7e51711" -> "sha256:42dd0e835d94b61c149a9dfeaea3f1aec4dac5347c357a7acc1246d4098625d4" [label=""];
  "sha256:42dd0e835d94b61c149a9dfeaea3f1aec4dac5347c357a7acc1246d4098625d4" -> "sha256:2522fa2f0f0b099428ce8eee5030fb569bcaed13615a9817caba0f8a08f2d505" [label=""];
}

