FROM grafana/grafana:12.0.2

# Copy provisioning files
COPY provisioning/datasources /etc/grafana/provisioning/datasources
COPY provisioning/dashboards/dashboard.yml /etc/grafana/provisioning/dashboards/dashboard.yml
COPY provisioning/dashboards /var/lib/grafana/dashboards

