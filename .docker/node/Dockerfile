FROM node:20-slim AS base
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable

FROM base as dev
ENV NODE_ENV=development
COPY . /app/src
WORKDIR /app/src
RUN pnpm install --frozen-lockfile
EXPOSE 3000
CMD [ "pnpm", "dev" ]