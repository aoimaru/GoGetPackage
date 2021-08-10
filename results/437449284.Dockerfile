[app/sources/437449284.Dockerfile]
digraph {
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" [label="docker-image://docker.io/library/ubuntu:12.04" shape="ellipse"];
  "sha256:0667ee428dff712b555a6f906e490d8b45351386ccea012fa755206a185fcdfe" [label="/bin/sh -c sed -i 's/precise main/precise main universe/' /etc/apt/sources.list" shape="box"];
  "sha256:fff6e599563352f97a00cf9476d158ab26ac3159ec726a89b82eeaef5d53e696" [label="/bin/sh -c apt-get update -yq" shape="box"];
  "sha256:6ded2ed6e711cb7dfba18b09732ffbd4909663424dd2d2fc641a2416777b2956" [label="/bin/sh -c apt-get install -yq build-essential python make g++ git curl wget" shape="box"];
  "sha256:3a90d779cfca39a3c45efb6db477da6e54250dfd16adbbd01a3db33c7df6625c" [label="sha256:3a90d779cfca39a3c45efb6db477da6e54250dfd16adbbd01a3db33c7df6625c" shape="plaintext"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" -> "sha256:0667ee428dff712b555a6f906e490d8b45351386ccea012fa755206a185fcdfe" [label=""];
  "sha256:0667ee428dff712b555a6f906e490d8b45351386ccea012fa755206a185fcdfe" -> "sha256:fff6e599563352f97a00cf9476d158ab26ac3159ec726a89b82eeaef5d53e696" [label=""];
  "sha256:fff6e599563352f97a00cf9476d158ab26ac3159ec726a89b82eeaef5d53e696" -> "sha256:6ded2ed6e711cb7dfba18b09732ffbd4909663424dd2d2fc641a2416777b2956" [label=""];
  "sha256:6ded2ed6e711cb7dfba18b09732ffbd4909663424dd2d2fc641a2416777b2956" -> "sha256:3a90d779cfca39a3c45efb6db477da6e54250dfd16adbbd01a3db33c7df6625c" [label=""];
}

