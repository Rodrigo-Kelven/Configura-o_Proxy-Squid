#!/bin/bash

# Função para exibir as portas seguras recomendadas
exibir_portas_seguradas() {
    echo "Portas recomendadas para uso seguro:"
    echo "1. 3128 (padrão do Squid)"
    echo "2. 8080 (comum para proxies)"
    echo "3. 8888 (outra opção popular)"
    echo "4. 8000 (usada em alguns ambientes)"
}

# Verifica se o Squid está instalado
if ! command -v squid &> /dev/null; then
    echo "O Squid não está instalado. Instalando agora..."
    sudo apt update
    sudo apt install -y squid
fi

# Solicita ao usuário para escolher uma porta
exibir_portas_seguradas
read -p "Escolha uma porta para o proxy (3128, 8080, 8888, 8000): " PORTA

# Valida a entrada da porta
if [[ ! "$PORTA" =~ ^(3128|8080|8888|8000)$ ]]; then
    echo "Porta inválida. Usando a porta padrão 3128."
    PORTA=3128
fi

# Configura o Squid
sudo sed -i "s/http_port 3128/http_port $PORTA/" /etc/squid/squid.conf
sudo sed -i 's/http_access deny all/http_access allow all/' /etc/squid/squid.conf

# Reinicia o serviço do Squid
sudo systemctl restart squid

# Exibe informações sobre o servidor proxy configurado
echo "Servidor proxy configurado com sucesso!"
echo "Escutando na porta: $PORTA"
