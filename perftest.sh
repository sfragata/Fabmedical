host="fabmedical-739064.documents.azure.com"
username="fabmedical-739064"
password="4pxtCJxCFnIl8gALxVIwk8wIilKjxxEfEpLyL4GRPXxBXx82BeGx8ue85Id7iGC1QCLFKHTLMGbdYUlPsmp4FA=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done