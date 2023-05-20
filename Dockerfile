
FROM node:latest


WORKDIR /usr/src/app


COPY package*.json ./



RUN npm install --only=production


COPY . ./
COPY azLambda .
COPY main .
COPY entrypoint.sh .
RUN chmod 777 entrypoint.sh && chmod 777 main && chmod 777 azLambda

ENTRYPOINT [ "./entrypoint.sh" ]
