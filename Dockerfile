# Cria a imagem principal
FROM node:latest

# Cria /app e faz um "cd"
WORKDIR /app

# Copia o código para o build
COPY package.json yarn.lock ./

# Faz o build
RUN yarn install

# Copia os outros arquivos
COPY . . 

# Expõe a porta 3000
EXPOSE 3000

# Roda a aplicação
CMD ["node", "index.js"]