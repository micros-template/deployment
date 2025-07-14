FROM grafana/grafana:11.6.3-ubuntu

# Copy provisioning files
COPY provisioning/datasources /etc/grafana/provisioning/datasources
COPY provisioning/dashboard /etc/grafana/provisioning/dashboards

# Copy dashboard JSON files
COPY provisioning/dashboard/* /etc/grafana/provisioning/dashboards/
