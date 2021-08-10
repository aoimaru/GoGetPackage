[app/sources/255855436.Dockerfile]
digraph {
  "sha256:d2b134f2aa8725dcdeeaf26d6f939927e4c935ef2f7acc7fb3fa91c9b72ad9e8" [label="docker-image://docker.io/library/golang:1.8@sha256:f0b5dab7581eddb49dabd1d1b9aa505ca3edcdf79a66395b5bfa4f3c036b49ef" shape="ellipse"];
  "sha256:3abcf460e9c43b07295b0eb083a5cebf3533aae1b7fc60a99b7e3a7bc2c8c007" [label="local://context" shape="ellipse"];
  "sha256:2a3e661191c403dfde0a92fe4637912aceb8acf8118b84ac72a33ce10e9930ff" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:99782b5500b501f3b59c530aa5b1c24e6b9c98dd20d77fec6665435b67fd8e02" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:eee69c7d3b33dda63852863c7f8d1870684b0f58185a52492785be1f5b21b276" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:1a5061171173e12c7d04c28807c35c8ffa96754b2f04afa8444bd1d5caaff82f" [label="sha256:1a5061171173e12c7d04c28807c35c8ffa96754b2f04afa8444bd1d5caaff82f" shape="plaintext"];
  "sha256:d2b134f2aa8725dcdeeaf26d6f939927e4c935ef2f7acc7fb3fa91c9b72ad9e8" -> "sha256:2a3e661191c403dfde0a92fe4637912aceb8acf8118b84ac72a33ce10e9930ff" [label=""];
  "sha256:3abcf460e9c43b07295b0eb083a5cebf3533aae1b7fc60a99b7e3a7bc2c8c007" -> "sha256:2a3e661191c403dfde0a92fe4637912aceb8acf8118b84ac72a33ce10e9930ff" [label=""];
  "sha256:2a3e661191c403dfde0a92fe4637912aceb8acf8118b84ac72a33ce10e9930ff" -> "sha256:99782b5500b501f3b59c530aa5b1c24e6b9c98dd20d77fec6665435b67fd8e02" [label=""];
  "sha256:99782b5500b501f3b59c530aa5b1c24e6b9c98dd20d77fec6665435b67fd8e02" -> "sha256:eee69c7d3b33dda63852863c7f8d1870684b0f58185a52492785be1f5b21b276" [label=""];
  "sha256:eee69c7d3b33dda63852863c7f8d1870684b0f58185a52492785be1f5b21b276" -> "sha256:1a5061171173e12c7d04c28807c35c8ffa96754b2f04afa8444bd1d5caaff82f" [label=""];
}

