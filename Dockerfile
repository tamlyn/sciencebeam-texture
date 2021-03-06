FROM node:9.8.0-stretch AS texture

USER node
ENV HOME=/home/node

ENV PROJECT_DIR=${HOME}/sciencebeam-texture

RUN mkdir ${PROJECT_DIR}
WORKDIR ${PROJECT_DIR}

COPY --chown=node:node demo/package.json ${PROJECT_DIR}/
RUN npm install

COPY --chown=node:node demo ${PROJECT_DIR}/
RUN npm run build

HEALTHCHECK --interval=10s --timeout=10s --retries=3 CMD curl -v --fail http://localhost:4000
ARG dependencies_sciencebeam
LABEL org.elifesciences.dependencies.sciencebeam="${dependencies_sciencebeam}"
