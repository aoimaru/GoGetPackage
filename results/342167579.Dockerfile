[app/sources/342167579.Dockerfile]
digraph {
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" [label="docker-image://docker.io/library/python:3" shape="ellipse"];
  "sha256:367bccd2acbde54e79ee28bf1fc535b7cfcf9bd7cc55da24cfb6a8bf1d7d08be" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:6b3539395f97613c1ddfea10e2655158383b75d6755334d42d27729821e00f5b" [label="/bin/sh -c pip install Flask-RESTful Elasticsearch Nameko" shape="box"];
  "sha256:7b5d26acc52888e7eff7c9b24aaf5c2247578fc2b85bc26ba56cbcd45a295d4b" [label="local://context" shape="ellipse"];
  "sha256:7d508dc685428bdf3d5bfb20fd83356d2d41dfceb3ebe74efc326f45a83cf1ab" [label="copy{src=/10/09/api.py, dest=/usr/src/app/}" shape="note"];
  "sha256:f00c9b53c384b53fe4746a5cbbc218e30d1d065f34882b595765c55035b341e6" [label="sha256:f00c9b53c384b53fe4746a5cbbc218e30d1d065f34882b595765c55035b341e6" shape="plaintext"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" -> "sha256:367bccd2acbde54e79ee28bf1fc535b7cfcf9bd7cc55da24cfb6a8bf1d7d08be" [label=""];
  "sha256:367bccd2acbde54e79ee28bf1fc535b7cfcf9bd7cc55da24cfb6a8bf1d7d08be" -> "sha256:6b3539395f97613c1ddfea10e2655158383b75d6755334d42d27729821e00f5b" [label=""];
  "sha256:6b3539395f97613c1ddfea10e2655158383b75d6755334d42d27729821e00f5b" -> "sha256:7d508dc685428bdf3d5bfb20fd83356d2d41dfceb3ebe74efc326f45a83cf1ab" [label=""];
  "sha256:7b5d26acc52888e7eff7c9b24aaf5c2247578fc2b85bc26ba56cbcd45a295d4b" -> "sha256:7d508dc685428bdf3d5bfb20fd83356d2d41dfceb3ebe74efc326f45a83cf1ab" [label=""];
  "sha256:7d508dc685428bdf3d5bfb20fd83356d2d41dfceb3ebe74efc326f45a83cf1ab" -> "sha256:f00c9b53c384b53fe4746a5cbbc218e30d1d065f34882b595765c55035b341e6" [label=""];
}

