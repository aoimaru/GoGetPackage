[app/sources/256081178.Dockerfile]
digraph {
  "sha256:c2baf8cb317751d2dd4c36ba64443a480592c7ad8b2c1aaba547851464229644" [label="docker-image://docker.io/bbvainnotech/ubuntu-base-os:latest" shape="ellipse"];
  "sha256:880a3edb4cce82b3f1c480ae906a947fbda8500c8e78b828b42e57a54a5e819d" [label="/bin/sh -c apt-get update &&         apt-get install -y qemu-kvm libvirt-bin dbus &&         rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:27623d413970ed40032b82b243d8e05658fbffc191d2f5e57752e469f8d90a61" [label="local://context" shape="ellipse"];
  "sha256:6cc036611ce268300d5ae3b68fd6175b713118a2eac76e66fc9d5bbbd5966ed9" [label="copy{src=/data, dest=/}" shape="note"];
  "sha256:45037314484ff4e5c24a064ec497e0cc6a92e7ff20a9398bc50870860ea51889" [label="/bin/sh -c chown root:root /bootstrap/*.sh && chmod a+x /bootstrap/*.sh" shape="box"];
  "sha256:e05a5728ff4028396e2c978f383252fe6b966902fa89587ac9bbcdc2ea7999d6" [label="sha256:e05a5728ff4028396e2c978f383252fe6b966902fa89587ac9bbcdc2ea7999d6" shape="plaintext"];
  "sha256:c2baf8cb317751d2dd4c36ba64443a480592c7ad8b2c1aaba547851464229644" -> "sha256:880a3edb4cce82b3f1c480ae906a947fbda8500c8e78b828b42e57a54a5e819d" [label=""];
  "sha256:880a3edb4cce82b3f1c480ae906a947fbda8500c8e78b828b42e57a54a5e819d" -> "sha256:6cc036611ce268300d5ae3b68fd6175b713118a2eac76e66fc9d5bbbd5966ed9" [label=""];
  "sha256:27623d413970ed40032b82b243d8e05658fbffc191d2f5e57752e469f8d90a61" -> "sha256:6cc036611ce268300d5ae3b68fd6175b713118a2eac76e66fc9d5bbbd5966ed9" [label=""];
  "sha256:6cc036611ce268300d5ae3b68fd6175b713118a2eac76e66fc9d5bbbd5966ed9" -> "sha256:45037314484ff4e5c24a064ec497e0cc6a92e7ff20a9398bc50870860ea51889" [label=""];
  "sha256:45037314484ff4e5c24a064ec497e0cc6a92e7ff20a9398bc50870860ea51889" -> "sha256:e05a5728ff4028396e2c978f383252fe6b966902fa89587ac9bbcdc2ea7999d6" [label=""];
}

