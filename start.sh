#!/bin/bash

# Para containers existentes
docker compose down 2>/dev/null

# Inicia o CORE GUI com a topologia
./core-gui --file volume/topologia_ProjetoCC.xml