[app/sources/159889016.Dockerfile]
digraph {
  "sha256:a5d39839c39cd4bd7fb960856a647e2bb12c7b06ec949f6bf97790e3436e389c" [label="docker-image://docker.io/library/mysql:latest" shape="ellipse"];
  "sha256:9d27b25a3b81615686c78c2bf629362e8d9036f4cfc86f496d2d2d50d5a036f2" [label="local://context" shape="ellipse"];
  "sha256:50db45cc639c17244337d59fc1ce844c4d46e4d259a67572ba32115bab2ecfee" [label="copy{src=/files/init_db.sql, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:ee7e7f7cec1e24037950d6d29b17a7775db66bd590efca969d53cbe43d9e5b00" [label="sha256:ee7e7f7cec1e24037950d6d29b17a7775db66bd590efca969d53cbe43d9e5b00" shape="plaintext"];
  "sha256:a5d39839c39cd4bd7fb960856a647e2bb12c7b06ec949f6bf97790e3436e389c" -> "sha256:50db45cc639c17244337d59fc1ce844c4d46e4d259a67572ba32115bab2ecfee" [label=""];
  "sha256:9d27b25a3b81615686c78c2bf629362e8d9036f4cfc86f496d2d2d50d5a036f2" -> "sha256:50db45cc639c17244337d59fc1ce844c4d46e4d259a67572ba32115bab2ecfee" [label=""];
  "sha256:50db45cc639c17244337d59fc1ce844c4d46e4d259a67572ba32115bab2ecfee" -> "sha256:ee7e7f7cec1e24037950d6d29b17a7775db66bd590efca969d53cbe43d9e5b00" [label=""];
}

