[app/sources/367740895.Dockerfile]
digraph {
  "sha256:84cda0d3dbeb6be746dee772ba29b68a95e74aa85278a88d4701feae5941771c" [label="local://context" shape="ellipse"];
  "sha256:a4d6c4796624c89c71f4db162a3e700751d7dbda0b806c39fc25b9b847ee3565" [label="docker-image://docker.io/golemfactory/base:1.5" shape="ellipse"];
  "sha256:1b06bd3f82cfad765e8978ad534063ed910eae453201afd7e4ffa2497d88eedd" [label="copy{src=/scripts, dest=/golem/scripts/}" shape="note"];
  "sha256:5881aae8b25bfe21609a57f92ea671d7fc274ecafa76d2ac124619e289e0e795" [label="sha256:5881aae8b25bfe21609a57f92ea671d7fc274ecafa76d2ac124619e289e0e795" shape="plaintext"];
  "sha256:a4d6c4796624c89c71f4db162a3e700751d7dbda0b806c39fc25b9b847ee3565" -> "sha256:1b06bd3f82cfad765e8978ad534063ed910eae453201afd7e4ffa2497d88eedd" [label=""];
  "sha256:84cda0d3dbeb6be746dee772ba29b68a95e74aa85278a88d4701feae5941771c" -> "sha256:1b06bd3f82cfad765e8978ad534063ed910eae453201afd7e4ffa2497d88eedd" [label=""];
  "sha256:1b06bd3f82cfad765e8978ad534063ed910eae453201afd7e4ffa2497d88eedd" -> "sha256:5881aae8b25bfe21609a57f92ea671d7fc274ecafa76d2ac124619e289e0e795" [label=""];
}

