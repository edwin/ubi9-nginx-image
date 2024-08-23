# Nginx Image for Openshift 4

## Date
```
$ date
Fri Aug 23 14:00:39 WIB 2024

```

## Build the Image
```
$ podman build -t html-test -f Dockerfile
```

## Run the Image
```
$ podman run -p 8080:8080 localhost/html-test:latest
```

## Scan the Image
```
$ trivy image localhost/html-test:latest --timeout 20m  --scanners vuln
2024-08-23T13:56:32+07:00       INFO    Vulnerability scanning is enabled
2024-08-23T13:56:39+07:00       INFO    Detected OS     family="redhat" version="9.4"
2024-08-23T13:56:39+07:00       INFO    [redhat] Detecting RHEL/CentOS vulnerabilities...       os_version="9" pkg_num=285
2024-08-23T13:56:39+07:00       INFO    Number of language-specific files       num=0

localhost/html-test:latest (redhat 9.4)

Total: 321 (UNKNOWN: 0, LOW: 275, MEDIUM: 35, HIGH: 11, CRITICAL: 0)
```