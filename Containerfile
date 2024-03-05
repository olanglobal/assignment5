FROM alpine
WORKDIR /app
COPY data.txt /app.data.txt

FROM fedora:latest
WORKDIR /COPY --from=builder /app/data.txt /data.txt
