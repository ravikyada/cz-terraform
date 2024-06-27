# Project Demo Deployment

This Kubernetes Deployment config file sets up a Node.js application in a production environment.

### Specifications

- **Replicas:** 3
- **Container Image:** `nginx:latest`
- **Resources:**
  - Requests:
    - Memory: 500Mi
    - CPU: 500m
  - Limits:
    - Memory: 500Mi
    - CPU: 500m
- **Ports:** Exposes port 3000

### Probes

- **Liveness Probe:**
  - Path: `/`
  - Port: 3000
  - Scheme: HTTP
  - Settings:
    - Period: 10 seconds
    - Initial Delay: 20 seconds
    - Timeout: 30 seconds
    - Success Threshold: 1
    - Failure Threshold: 3

- **Readiness Probe:**
  - Path: `/`
  - Port: 3000
  - Scheme: HTTP
  - Settings:
    - Period: 10 seconds
    - Initial Delay: 20 seconds
    - Timeout: 30 seconds
    - Success Threshold: 1
    - Failure Threshold: 3
