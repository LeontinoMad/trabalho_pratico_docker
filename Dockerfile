# Imagem base do Python
FROM python:3.9-slim

# Diretório de trabalho no contêiner
WORKDIR /app

# Dependências (Flask)
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copia de todo o conteúdo do diretório atual para o contêiner
COPY . .

# Exposta porta 8080
EXPOSE 8080

# Definido o comando para iniciar o servidor Flask
CMD ["python", "app.py"]
