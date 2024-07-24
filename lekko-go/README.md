# Go template project

This is a simple Go project.

You can use this project as a starting point for trying out Lekko by following the instructions on our [Get started](https://docs.lekko.com) guide.

## Running

This project starts a simple http server on `localhost:8080`.

```bash
go run main.go
```

To run with an environment variable, simply pass it in as part of the `go run` call:

```bash
LEKKO_API_KEY=****** go run main.go
```

The server responds to requests with a simple text message. You can send requests using `curl`:

```bash
curl localhost:8080
```
