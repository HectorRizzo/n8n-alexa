# Usar imagen oficial de n8n
FROM n8nio/n8n:latest

# Crear carpeta para datos (si usas disco persistente)
RUN mkdir /files
VOLUME ["/files"]

# Variables por defecto (Render las sobreescribe con tus valores reales)
ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_HOST=changeme
ENV DB_POSTGRESDB_PORT=5432
ENV DB_POSTGRESDB_DATABASE=changeme
ENV DB_POSTGRESDB_USER=changeme
ENV DB_POSTGRESDB_PASSWORD=changeme
ENV N8N_ENCRYPTION_KEY=changeme
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=changeme

# Puerto por defecto de n8n
EXPOSE 5678

# Comando de arranque
CMD ["n8n", "start"]
