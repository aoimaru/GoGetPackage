[app/sources/253593085.Dockerfile]
digraph {
  "sha256:26a4dac754815cd2b8d451e93aefb0336042c076936bbd229330830ea6420111" [label="docker-image://registry.access.redhat.com/openshift3/jenkins-slave-base-rhel7:latest" shape="ellipse"];
  "sha256:88dfbb0c36c00acf2cd0f85f768370d4660ee2ed56385f178d189865c6c26a2b" [label="/bin/sh -c yum repolist > /dev/null &&     yum install -y yum-utils &&     yum-config-manager --disable \\* &> /dev/null &&     yum-config-manager --enable rhel-server-rhscl-7-rpms &&     yum-config-manager --enable rhel-7-server-rpms &&     yum-config-manager --enable rhel-7-server-optional-rpms &&     yum-config-manager --enable rhel-7-server-fastrack-rpms &&     UNINSTALL_PKGS=\"java-1.8.0-openjdk-headless.i686\" &&    INSTALL_PKGS=\"redhat-lsb libXScrnSaver gdk-pixbuf2 xorg-x11-server-Xvfb wget firefox\" &&     yum remove -y $UNINSTALL_PKGS &&    yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS &&     rpm -V $INSTALL_PKGS &&     yum clean all -y &&     wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm &&     yum -y localinstall google-chrome-stable_current_x86_64.rpm &&     rm google-chrome-stable_current_x86_64.rpm &&     if [ ! -d /home/jenkins/.pki ] ; then mkdir /home/jenkins/.pki; fi &&     chmod 777 /home/jenkins/.pki" shape="box"];
  "sha256:84598083916555b713be98e14fa7c46f3ebbcf3328d955bc8c79a768777bf00d" [label="sha256:84598083916555b713be98e14fa7c46f3ebbcf3328d955bc8c79a768777bf00d" shape="plaintext"];
  "sha256:26a4dac754815cd2b8d451e93aefb0336042c076936bbd229330830ea6420111" -> "sha256:88dfbb0c36c00acf2cd0f85f768370d4660ee2ed56385f178d189865c6c26a2b" [label=""];
  "sha256:88dfbb0c36c00acf2cd0f85f768370d4660ee2ed56385f178d189865c6c26a2b" -> "sha256:84598083916555b713be98e14fa7c46f3ebbcf3328d955bc8c79a768777bf00d" [label=""];
}
