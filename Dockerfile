FROM ghcr.io/eivarin/coreemu:coreemu-9.2.1

# Atualizar repositórios e instalar Java
RUN apt-get update && \
    apt-get install -y \
    openjdk-17-jdk \
    openjdk-17-jre \
    maven \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Configurar variáveis de ambiente do Java
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH="${JAVA_HOME}/bin:${PATH}"

# Verificar instalação
RUN java -version && javac -version

# Manter o restante da configuração do CORE
WORKDIR /root