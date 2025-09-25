FROM chatwoot:development

WORKDIR /app

COPY package.json ./

# Copiar package-lock.json se existir
COPY package-lock.json* ./

# Copiar todos os arquivos
COPY . .

ENV PNPM_HOME="/root/.local/share/pnpm"
ENV PATH="$PNPM_HOME:$PATH"

RUN ls -la /app/

EXPOSE 3036
