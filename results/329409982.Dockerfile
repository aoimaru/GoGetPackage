[app/sources/329409982.Dockerfile]
digraph {
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" [label="docker-image://docker.io/library/java:8-jre" shape="ellipse"];
  "sha256:bf5693648af8f11f5534874a99d37dfaa0e072f11756ecf18fb41377a9b66693" [label="local://context" shape="ellipse"];
  "sha256:7ca354c318bb2dd5f92124fec7016d23d0072a4d3531b580812e7fe8b6190443" [label="copy{src=/target/ts-execute-service-1.0.jar, dest=/app/}" shape="note"];
  "sha256:9cc9f0c5aece2de011485f860c3be06ce3c98a9588bef9e8e1174b421597ade2" [label="sha256:9cc9f0c5aece2de011485f860c3be06ce3c98a9588bef9e8e1174b421597ade2" shape="plaintext"];
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" -> "sha256:7ca354c318bb2dd5f92124fec7016d23d0072a4d3531b580812e7fe8b6190443" [label=""];
  "sha256:bf5693648af8f11f5534874a99d37dfaa0e072f11756ecf18fb41377a9b66693" -> "sha256:7ca354c318bb2dd5f92124fec7016d23d0072a4d3531b580812e7fe8b6190443" [label=""];
  "sha256:7ca354c318bb2dd5f92124fec7016d23d0072a4d3531b580812e7fe8b6190443" -> "sha256:9cc9f0c5aece2de011485f860c3be06ce3c98a9588bef9e8e1174b421597ade2" [label=""];
}

