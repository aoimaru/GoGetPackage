[app/sources/471979974.Dockerfile]
digraph {
  "sha256:4a92a13abf9f99ec1685954f64a61d22e1de5ebb63531b2235a4643a5437cdc2" [label="docker-image://docker.io/library/python:3.7-slim" shape="ellipse"];
  "sha256:e285263f16be913809b249cf659b83a96749233c8d62548db5d39d2236647a0c" [label="mkdir{path=/app}" shape="note"];
  "sha256:ad026cad4ac1fe092f15666e2c8f4932273edd0e7d91247b8323b912867f353d" [label="local://context" shape="ellipse"];
  "sha256:78555c5321626138bef31ea872e0a3f25b626ea99b6ff0fda1c4e966a6d01e90" [label="copy{src=/Pipfile*, dest=/app/}" shape="note"];
  "sha256:0bb22c56cc4528f77e408a03ad45a652b4063ddc602f6e1bb704936c165d167f" [label="/bin/sh -c apt-get update &&         apt-get install -y --no-install-recommends git &&         pip install --no-cache-dir pipenv && pipenv install --clear --deploy &&         apt-get -y remove git &&         apt purge -y --auto-remove &&         rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:736f4ec18e59904bb1159a98c863a22669f3348c0bbd43f190a4a8a33437c285" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:398479eda3701e23808ae69c70325c5cdd089bf3fac8d34f2c2c485e792b654d" [label="/bin/sh -c apt-get update &&         apt-get install -y --no-install-recommends git &&         pipenv install --clear --skip-lock . &&         apt-get -y remove git &&         apt purge -y --auto-remove &&         rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:be2c228ca127a4f7114b0330669e7edc97a257d4f6cb7a89e09c6834424e728c" [label="sha256:be2c228ca127a4f7114b0330669e7edc97a257d4f6cb7a89e09c6834424e728c" shape="plaintext"];
  "sha256:4a92a13abf9f99ec1685954f64a61d22e1de5ebb63531b2235a4643a5437cdc2" -> "sha256:e285263f16be913809b249cf659b83a96749233c8d62548db5d39d2236647a0c" [label=""];
  "sha256:e285263f16be913809b249cf659b83a96749233c8d62548db5d39d2236647a0c" -> "sha256:78555c5321626138bef31ea872e0a3f25b626ea99b6ff0fda1c4e966a6d01e90" [label=""];
  "sha256:ad026cad4ac1fe092f15666e2c8f4932273edd0e7d91247b8323b912867f353d" -> "sha256:78555c5321626138bef31ea872e0a3f25b626ea99b6ff0fda1c4e966a6d01e90" [label=""];
  "sha256:78555c5321626138bef31ea872e0a3f25b626ea99b6ff0fda1c4e966a6d01e90" -> "sha256:0bb22c56cc4528f77e408a03ad45a652b4063ddc602f6e1bb704936c165d167f" [label=""];
  "sha256:0bb22c56cc4528f77e408a03ad45a652b4063ddc602f6e1bb704936c165d167f" -> "sha256:736f4ec18e59904bb1159a98c863a22669f3348c0bbd43f190a4a8a33437c285" [label=""];
  "sha256:ad026cad4ac1fe092f15666e2c8f4932273edd0e7d91247b8323b912867f353d" -> "sha256:736f4ec18e59904bb1159a98c863a22669f3348c0bbd43f190a4a8a33437c285" [label=""];
  "sha256:736f4ec18e59904bb1159a98c863a22669f3348c0bbd43f190a4a8a33437c285" -> "sha256:398479eda3701e23808ae69c70325c5cdd089bf3fac8d34f2c2c485e792b654d" [label=""];
  "sha256:398479eda3701e23808ae69c70325c5cdd089bf3fac8d34f2c2c485e792b654d" -> "sha256:be2c228ca127a4f7114b0330669e7edc97a257d4f6cb7a89e09c6834424e728c" [label=""];
}

