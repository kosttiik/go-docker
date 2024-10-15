FROM golang:1.23

WORKDIR /parcel_app

COPY . .

RUN go mod download

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /parcel_app_binary .

CMD ["/parcel_app_binary"]
