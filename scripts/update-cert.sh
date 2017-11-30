#!/bin/sh

set -ex

cd $(dirname $0)/..

docker run \
  --rm \
  -v $(pwd)/data/letsencrypt:/etc/letsencrypt \
  -v $(pwd)/public:/var/www/html \
  certbot/certbot \
  certonly \
  --webroot \
  --non-interactive \
  --agree-tos \
  --renew-by-default \
  --agree-tos \
  --webroot-path /var/www/html \
  --email ykzts@desire.sh \
  --cert-name storage.omanko.porn \
  --domains storage.omanko.porn
