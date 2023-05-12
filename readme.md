# Stress 
CPU burn and memory allocation stress test tool.
Original code is available [here](https://github.com/vishh/stress).

```sh
./stress --help
Usage of ./stress:
  -alsologtostderr
        log to standard error as well as files
  -cpus int
        total number of CPUs to utilize
  -log_backtrace_at value
        when logging hits line file:N, emit a stack trace
  -log_dir string
        If non-empty, write log files in this directory
  -log_link string
        If non-empty, add symbolic links in this directory to the log files
  -logbuflevel int
        Buffer log messages logged at this level or lower (-1 means don't buffer; 0 means buffer INFO only; ...). Has limited applicability on non-prod platforms.
  -logtostderr
        log to standard error instead of files
  -mem-alloc-size string
        amount of memory to be consumed in each allocation (default "4Ki")
  -mem-alloc-sleep duration
        duration to sleep between allocations (default 1ms)
  -mem-total string
        total memory to be consumed. Memory will be consumed via multiple allocations. (default "0")
  -stderrthreshold value
        logs at or above this threshold go to stderr (default 2)
  -v value
        log level for V logs
  -vmodule value
        comma-separated list of pattern=N settings for file-filtered logging
```

# Build
To build binary for local host:
```sh
make build
```
To build AMD64 Linux container:
```sh
make docker-build-amd64
```
To build ARM64 Linux container:
```sh
make docker-build-arm64
```