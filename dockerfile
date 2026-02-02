# Usa nginx leve
FROM nginx:alpine

# Remove config padrão
RUN rm -rf /usr/share/nginx/html/*

# Copia os arquivos do projeto para o nginx
COPY . /usr/share/nginx/html

# Expõe a porta padrão do nginx
EXPOSE 80

# Inicia o nginx
CMD ["nginx", "-g", "daemon off;"]
