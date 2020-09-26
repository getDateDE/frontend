# THIS IS SUPER HACKY
curl -o api.yaml http://172.16.2.205:8080/swagger

rm -R lib/ test/

npx @openapitools/openapi-generator-cli generate -i api.yaml -g dart

flutter pub get
