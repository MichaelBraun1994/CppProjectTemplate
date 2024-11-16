FROM ubuntu:24.04

# [Optional] Uncomment this section to install additional vcpkg ports.
# RUN su vscode -c "${VCPKG_ROOT}/vcpkg install <your-port-name-here>"

ARG USERNAME
ARG USER_UID=1001
ARG USER_GID=$USER_UID

SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get install -y \
  build-essential git clang clang-tidy cppcheck ninja-build valgrind \
  cmake lld vim \
  python3-pip python3-venv plantuml clangd \
  && groupadd --gid $USER_GID $USERNAME \
  && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME -s /usr/bin/bash \
  && apt-get update \
  && apt-get install -y sudo \
  && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
  && chmod 0440 /etc/sudoers.d/$USERNAME \
  && python3 -m venv /home/$USERNAME/.venv && source /home/$USERNAME/.venv/bin/activate \
  && pip3 install sphinxcontrib-plantuml sphinx_rtd_theme \
  && echo "source /home/$USERNAME/.venv/bin/activate" > /home/$USERNAME/.bashrc

# [Optional] Set the default user. Omit if you want to keep the default as root.
USER $USERNAME