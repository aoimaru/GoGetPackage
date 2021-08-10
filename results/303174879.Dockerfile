[app/sources/303174879.Dockerfile]
digraph {
  "sha256:04b9c28e41f8fc9800ac98cf337c859271a7014847953d675e626754920e9357" [label="local://context" shape="ellipse"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:e14cbfdc4980190c86105a1a45440d6dc191cb58c4ca9b3c964279ba1eb5c1c3" [label="copy{src=/target/*.jar, dest=/app.jar}" shape="note"];
  "sha256:d375c07133a88de732aa48d821758912871acb8ddb85b24f3fb4fcff137c1883" [label="sha256:d375c07133a88de732aa48d821758912871acb8ddb85b24f3fb4fcff137c1883" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:e14cbfdc4980190c86105a1a45440d6dc191cb58c4ca9b3c964279ba1eb5c1c3" [label=""];
  "sha256:04b9c28e41f8fc9800ac98cf337c859271a7014847953d675e626754920e9357" -> "sha256:e14cbfdc4980190c86105a1a45440d6dc191cb58c4ca9b3c964279ba1eb5c1c3" [label=""];
  "sha256:e14cbfdc4980190c86105a1a45440d6dc191cb58c4ca9b3c964279ba1eb5c1c3" -> "sha256:d375c07133a88de732aa48d821758912871acb8ddb85b24f3fb4fcff137c1883" [label=""];
}

