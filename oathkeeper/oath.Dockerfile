FROM oryd/oathkeeper:v0.40.7
ADD oathkeeper.yaml ./oathkeeper.yaml
ADD jwks.json ./jwks.json
ADD oaths.json ./oaths.json
