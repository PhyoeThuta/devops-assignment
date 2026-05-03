# Observability stack

This folder provides a simple LGTM-style observability setup for the app.

## Included
- Grafana dashboard JSON for metrics, logs, and traces
- Helm values for kube-prometheus-stack
- Helm values for Loki
- Helm values for Tempo
- Namespace manifest for observability components

## Stack summary
- **Metrics**: Prometheus / kube-prometheus-stack
- **Logs**: Loki
- **Traces**: Tempo
- **Visualization**: Grafana

## Files
- `namespace.yaml`
- `helm-values/kube-prometheus-stack-values.yaml`
- `helm-values/loki-values.yaml`
- `helm-values/tempo-values.yaml`
- `grafana/dashboard-observability-overview.json`

## Notes
- Replace default passwords before production use.
- Use Grafana sidecar or ConfigMap provisioning to load the dashboard JSON.
- Install application ServiceMonitors / PodMonitors if you want Prometheus to scrape app metrics.
