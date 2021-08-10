[app/sources/426807095.Dockerfile]
digraph {
  "sha256:80c244cbc69d64be1c5182b5ea070670635cf3e53e1a5086d75e55f0c87c76c0" [label="docker-image://docker.io/tiangolo/uvicorn-gunicorn:python3.6-alpine3.8" shape="ellipse"];
  "sha256:3af2f2055d386c57191bd9c5a24472a6f454c9f138d84f3fc145de496509ace5" [label="/bin/sh -c pip install starlette" shape="box"];
  "sha256:2db63bc837699b97396b494ad50616fdc8003e4ced438fc2cf872a8cecfc1fbc" [label="local://context" shape="ellipse"];
  "sha256:f2b76c7f3ebb8575d23f32abafe4cb2af2fbe8ac3a2ca102ba106f1c0ee8db1e" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:77ff43e966ede6bc4ece0d18f599ccee3717a24118f95496277be99d2e60b517" [label="sha256:77ff43e966ede6bc4ece0d18f599ccee3717a24118f95496277be99d2e60b517" shape="plaintext"];
  "sha256:80c244cbc69d64be1c5182b5ea070670635cf3e53e1a5086d75e55f0c87c76c0" -> "sha256:3af2f2055d386c57191bd9c5a24472a6f454c9f138d84f3fc145de496509ace5" [label=""];
  "sha256:3af2f2055d386c57191bd9c5a24472a6f454c9f138d84f3fc145de496509ace5" -> "sha256:f2b76c7f3ebb8575d23f32abafe4cb2af2fbe8ac3a2ca102ba106f1c0ee8db1e" [label=""];
  "sha256:2db63bc837699b97396b494ad50616fdc8003e4ced438fc2cf872a8cecfc1fbc" -> "sha256:f2b76c7f3ebb8575d23f32abafe4cb2af2fbe8ac3a2ca102ba106f1c0ee8db1e" [label=""];
  "sha256:f2b76c7f3ebb8575d23f32abafe4cb2af2fbe8ac3a2ca102ba106f1c0ee8db1e" -> "sha256:77ff43e966ede6bc4ece0d18f599ccee3717a24118f95496277be99d2e60b517" [label=""];
}

