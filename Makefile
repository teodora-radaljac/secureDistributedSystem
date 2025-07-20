all: head_exec worker_exec verification_exec

head_exec: ./head/head.go
	go build -o head_exec ./head/head.go

verification_exec: ./verification/verification.go
	go build -o verification_exec ./verification/verification.go

worker_exec: ./worker/worker.go
	go build -o worker_exec ./worker/worker.go

clean:
	rm -f head_exec verification_exec worker_exec

 .PHONY: all clean
 