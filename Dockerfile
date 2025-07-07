# Use uma imagem oficial do Python como imagem pai. 
# python:3.10-slim é uma boa escolha para produção por ser menor.
FROM python:3.10-slim

# Define o diretório de trabalho no contêiner.
WORKDIR /app

# Copia o arquivo de dependências primeiro para aproveitar o cache de camadas do Docker.
# Se o requirements.txt não mudar, esta camada não será reconstruída em builds subsequentes.
COPY requirements.txt .

# Instala os pacotes necessários especificados no requirements.txt.
# --no-cache-dir: Desativa o cache, o que pode reduzir o tamanho da imagem.
# --upgrade pip: Garante que temos a versão mais recente do pip.
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copia o resto do código da aplicação para o contêiner em /app.
COPY . .

# Torna a porta 8000 disponível para o mundo fora deste contêiner.
EXPOSE 8000

# Executa a aplicação. A flag --host 0.0.0.0 é essencial para tornar
# a aplicação acessível de fora do contêiner.
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]

