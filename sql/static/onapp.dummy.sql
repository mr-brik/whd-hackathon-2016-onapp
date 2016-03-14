INSERT INTO server (
    onapp_id,
    template_id,
    label,
    status,
    cpus,
    disk_size,
    memory_size,
    ipv4_address,
    initial_root_password
)
VALUES (
    /* virtual_machine.identifier */ 'xiye22ftha7wgb',
    /* virtual_machine.template_id */ 23,
    /* virtual_machine.hostname */ 'zaza',
    /* virtual_machine.built */ 'building',
    /* virtual_machine.cpus */ 1,
    /* virtual_machine.total_disk_size */ 10,
    /* virtual_machine.memory */ 12,
    /* virtual_machine.ip_addresses.0.address */ '69.168.236.96',
    /* virtual_machine.initial_root_password */ "v\\1,~rhx#tyS"
)
;
INSERT INTO user_server_link (
    user_id,
    server_id
)
VALUES (
    3,
    1
)
;
