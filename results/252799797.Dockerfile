[app/sources/252799797.Dockerfile]
digraph {
  "sha256:dd9a6d77b8b45c2eec563cde2425978cd55a032ac0d4befcfc36d6c1b4927cc0" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:624c6e92a40971da8243f189317253ace9a04238bfdc30e9513a53c85211b07a" [label="copy{src=/dockerfiles/splash/provision.sh, dest=/tmp/provision.sh}" shape="note"];
  "sha256:cc2b88c6108c8c801f08d2ad82b40818a2c9dd6dd4df4077b6c91be47ea6b0d6" [label="/bin/sh -c /tmp/provision.sh prepare_install install_msfonts install_builddeps install_deps install_extra_fonts install_pyqt5 install_python_deps install_flash remove_builddeps && rm /tmp/provision.sh" shape="box"];
  "sha256:1d194e918ca37d6450a0a78e1dee6132823fabddb0704d94ac7f63c7554d0389" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:3fcb1a4987dcfcd30fadd944a589bcc7d2c8e2cf399195056d90e1c32ce56607" [label="/bin/sh -c pip3 install /app" shape="box"];
  "sha256:d54871c1d4548ad4f9e7e1aafd4f67523e5bca4cb92111a50c9cc1528945cbfa" [label="sha256:d54871c1d4548ad4f9e7e1aafd4f67523e5bca4cb92111a50c9cc1528945cbfa" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:624c6e92a40971da8243f189317253ace9a04238bfdc30e9513a53c85211b07a" [label=""];
  "sha256:dd9a6d77b8b45c2eec563cde2425978cd55a032ac0d4befcfc36d6c1b4927cc0" -> "sha256:624c6e92a40971da8243f189317253ace9a04238bfdc30e9513a53c85211b07a" [label=""];
  "sha256:624c6e92a40971da8243f189317253ace9a04238bfdc30e9513a53c85211b07a" -> "sha256:cc2b88c6108c8c801f08d2ad82b40818a2c9dd6dd4df4077b6c91be47ea6b0d6" [label=""];
  "sha256:cc2b88c6108c8c801f08d2ad82b40818a2c9dd6dd4df4077b6c91be47ea6b0d6" -> "sha256:1d194e918ca37d6450a0a78e1dee6132823fabddb0704d94ac7f63c7554d0389" [label=""];
  "sha256:dd9a6d77b8b45c2eec563cde2425978cd55a032ac0d4befcfc36d6c1b4927cc0" -> "sha256:1d194e918ca37d6450a0a78e1dee6132823fabddb0704d94ac7f63c7554d0389" [label=""];
  "sha256:1d194e918ca37d6450a0a78e1dee6132823fabddb0704d94ac7f63c7554d0389" -> "sha256:3fcb1a4987dcfcd30fadd944a589bcc7d2c8e2cf399195056d90e1c32ce56607" [label=""];
  "sha256:3fcb1a4987dcfcd30fadd944a589bcc7d2c8e2cf399195056d90e1c32ce56607" -> "sha256:d54871c1d4548ad4f9e7e1aafd4f67523e5bca4cb92111a50c9cc1528945cbfa" [label=""];
}

