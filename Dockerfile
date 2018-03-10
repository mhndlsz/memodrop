FROM python:3.6-alpine as build
COPY requirements.txt ./
RUN apk --no-cache add build-base
RUN pip install --no-cache-dir -r requirements.txt

FROM python:3.6-alpine
ENV PYTHONUNBUFFERED 1
WORKDIR /usr/src/app
COPY --from=build /usr/local/lib/python3.6/site-packages/ /usr/local/lib/python3.6/site-packages/
COPY . .
EXPOSE 8000
RUN chmod +x ./docker-entrypoint.sh
ENTRYPOINT ./docker-entrypoint.sh
