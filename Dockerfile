FROM ubuntu:18.04
RUN apt-get update && apt-get upgrade -y && apt-get install avogadro -y
CMD ["/bin/bash"]
