[app/sources/462333913.Dockerfile]
digraph {
  "sha256:56cfaabe334eb033483714a66c819e0967b70ec380020994bfb70e808428ea7e" [label="local://context" shape="ellipse"];
  "sha256:3769059b85eaaadfe3468d7cd0e9ca9dfa12dff5cb8dd18c8dfecb8aa6424e80" [label="docker-image://docker.io/library/java:8@sha256:c1ff613e8ba25833d2e1940da0940c3824f03f802c449f3d1815a66b7f8c0e9d" shape="ellipse"];
  "sha256:648589e5c2b32ce77bc133f173d456c343ab9d05c6529dd2f9c9f8439ca1e5bb" [label="copy{src=/target/gateway*.jar, dest=/app.jar}" shape="note"];
  "sha256:d0a3804164be093a1c1bd523b79111d0fac8d2f0eca1fda381e85ae322b1285b" [label="/bin/sh -c bash -c 'touch /app.jar'" shape="box"];
  "sha256:d20e9ceb3bcb19169a28a363f2290dc2ef73b975c9dff1cdc615222e842b5a82" [label="sha256:d20e9ceb3bcb19169a28a363f2290dc2ef73b975c9dff1cdc615222e842b5a82" shape="plaintext"];
  "sha256:3769059b85eaaadfe3468d7cd0e9ca9dfa12dff5cb8dd18c8dfecb8aa6424e80" -> "sha256:648589e5c2b32ce77bc133f173d456c343ab9d05c6529dd2f9c9f8439ca1e5bb" [label=""];
  "sha256:56cfaabe334eb033483714a66c819e0967b70ec380020994bfb70e808428ea7e" -> "sha256:648589e5c2b32ce77bc133f173d456c343ab9d05c6529dd2f9c9f8439ca1e5bb" [label=""];
  "sha256:648589e5c2b32ce77bc133f173d456c343ab9d05c6529dd2f9c9f8439ca1e5bb" -> "sha256:d0a3804164be093a1c1bd523b79111d0fac8d2f0eca1fda381e85ae322b1285b" [label=""];
  "sha256:d0a3804164be093a1c1bd523b79111d0fac8d2f0eca1fda381e85ae322b1285b" -> "sha256:d20e9ceb3bcb19169a28a363f2290dc2ef73b975c9dff1cdc615222e842b5a82" [label=""];
}

