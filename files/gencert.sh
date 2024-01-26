#!/bin/bash
# https://github.com/dexidp/dex/blob/master/examples/k8s/gencert.sh
# Modified to operate in the current directory

cat << EOF > req.cnf
[req]
req_extensions = v3_req
distinguished_name = req_distinguished_name

[req_distinguished_name]

[ v3_req ]
basicConstraints = CA:FALSE
keyUsage = nonRepudiation, digitalSignature, keyEncipherment
subjectAltName = @alt_names

[alt_names]
DNS.1 = dex.drewburr.com
EOF

openssl genrsa -out ca-key.pem 2048
openssl req -x509 -new -nodes -key ca-key.pem -days 10 -out ca.pem -subj "/CN=kube-ca"

openssl genrsa -out key.pem 2048
openssl req -new -key key.pem -out csr.pem -subj "/CN=kube-ca" -config req.cnf
openssl x509 -req -in csr.pem -CA ca.pem -CAkey ca-key.pem -CAcreateserial -out cert.pem -days 10 -extensions v3_req -extfile req.cnf
