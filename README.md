# Setup jmeter with influxdb to collect metrics

1. Create inventory:

    *master*: Jmeter master + InfluxDB + Grafana
    *clients*: Jmeter clients

    ```
    [master]
    192.168.33.2
    
    [clients]
    192.168.33.3
    192.168.33.4
    ```

2. Run playbook

    ```
    $ ansible-playbook -i inventory.yml playbook.yml
    ```

3. Copy jmeter scripts to master along with any other required files

4. Run jmeter

    ```
    $ jmeter -n -t script.jmx -l results.csv -j log.txt
    ```

## Grafana dashboards
- https://grafana.com/dashboards/4026
