keytool -keysize 2048 -genkey -alias saml -keyalg RSA -keystore ./saml.jks  -validity 3650
keytool -importkeystore -srckeystore saml.jks -destkeystore saml.p12 -deststoretype PKCS12
openssl pkcs12 -in saml.p12 -out saml.pem -nocerts -nodes
keytool -export -alias saml -file saml.crt -keystore saml.jks -rfc
