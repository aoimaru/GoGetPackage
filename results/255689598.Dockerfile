[app/sources/255689598.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:872529fad533863c072687d76ce9e747af238f048a1e54ca1f5084ce80652c6d" [label="/bin/sh -c apt-get update && \t\tapt-get install -y --no-install-recommends vsftpd db-util && \t\tapt-get clean" shape="box"];
  "sha256:66c43c94f9e182792cc344e7008c312d53ab0aff556b6cc2f116ec65ee727374" [label="local://context" shape="ellipse"];
  "sha256:92c5ba4b90e8cacc691e83c725c713699c8f8a8299472e31b173cb0aea0791ed" [label="copy{src=/vsftpd.conf, dest=/etc/vsftpd/}" shape="note"];
  "sha256:8929a53756a63d228893edc6684883309fcf2fb857f94589ca1dfefd80af2b17" [label="copy{src=/vsftpd_virtual, dest=/etc/pam.d/}" shape="note"];
  "sha256:c4f8eb6d46f03e7f45f255dba82cbbc5fa8c06816f523f79b0b32cec93eb8457" [label="copy{src=/run-vsftpd.sh, dest=/usr/sbin/}" shape="note"];
  "sha256:3a780e40e9013cf2efdbdadab6f1eee7fe9e2dbcdd45e5b5c9821ffdc9192390" [label="/bin/sh -c chmod +x /usr/sbin/run-vsftpd.sh && \t\tmkdir -p /var/run/vsftpd/empty" shape="box"];
  "sha256:25fbd8e202d69609e3c054dc8174157df7137ffdf780782dcda43a8a6ae38824" [label="sha256:25fbd8e202d69609e3c054dc8174157df7137ffdf780782dcda43a8a6ae38824" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:872529fad533863c072687d76ce9e747af238f048a1e54ca1f5084ce80652c6d" [label=""];
  "sha256:872529fad533863c072687d76ce9e747af238f048a1e54ca1f5084ce80652c6d" -> "sha256:92c5ba4b90e8cacc691e83c725c713699c8f8a8299472e31b173cb0aea0791ed" [label=""];
  "sha256:66c43c94f9e182792cc344e7008c312d53ab0aff556b6cc2f116ec65ee727374" -> "sha256:92c5ba4b90e8cacc691e83c725c713699c8f8a8299472e31b173cb0aea0791ed" [label=""];
  "sha256:92c5ba4b90e8cacc691e83c725c713699c8f8a8299472e31b173cb0aea0791ed" -> "sha256:8929a53756a63d228893edc6684883309fcf2fb857f94589ca1dfefd80af2b17" [label=""];
  "sha256:66c43c94f9e182792cc344e7008c312d53ab0aff556b6cc2f116ec65ee727374" -> "sha256:8929a53756a63d228893edc6684883309fcf2fb857f94589ca1dfefd80af2b17" [label=""];
  "sha256:8929a53756a63d228893edc6684883309fcf2fb857f94589ca1dfefd80af2b17" -> "sha256:c4f8eb6d46f03e7f45f255dba82cbbc5fa8c06816f523f79b0b32cec93eb8457" [label=""];
  "sha256:66c43c94f9e182792cc344e7008c312d53ab0aff556b6cc2f116ec65ee727374" -> "sha256:c4f8eb6d46f03e7f45f255dba82cbbc5fa8c06816f523f79b0b32cec93eb8457" [label=""];
  "sha256:c4f8eb6d46f03e7f45f255dba82cbbc5fa8c06816f523f79b0b32cec93eb8457" -> "sha256:3a780e40e9013cf2efdbdadab6f1eee7fe9e2dbcdd45e5b5c9821ffdc9192390" [label=""];
  "sha256:3a780e40e9013cf2efdbdadab6f1eee7fe9e2dbcdd45e5b5c9821ffdc9192390" -> "sha256:25fbd8e202d69609e3c054dc8174157df7137ffdf780782dcda43a8a6ae38824" [label=""];
}

