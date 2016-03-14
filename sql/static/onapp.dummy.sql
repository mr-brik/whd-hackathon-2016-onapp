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
    /* virtual_machine.identifier */ 'Ziye22ftha7wgb',
    /* virtual_machine.template_id */ 23,
    /* virtual_machine.hostname */ 'vader',
    /* virtual_machine.built */ 'building',
    /* virtual_machine.cpus */ 4,
    /* virtual_machine.total_disk_size */ 128,
    /* virtual_machine.memory */ 256,
    /* virtual_machine.ip_addresses.0.address */ '69.168.236.96',
    /* virtual_machine.initial_root_password */ "zzgagatew6ete"
),
(
    /* virtual_machine.identifier */ 'xiyZZ2ftha7wgb',
    /* virtual_machine.template_id */ 49,
    /* virtual_machine.hostname */ 'palpatine',
    /* virtual_machine.built */ 'built',
    /* virtual_machine.cpus */ 4,
    /* virtual_machine.total_disk_size */ 256,
    /* virtual_machine.memory */ 512,
    /* virtual_machine.ip_addresses.0.address */ '69.168.236.106',
    /* virtual_machine.initial_root_password */ "Z5FuYJ0nvrJf"
),
(
    /* virtual_machine.identifier */ 'xiye22ftha7wgb',
    /* virtual_machine.template_id */ 31,
    /* virtual_machine.hostname */ 'snoke',
    /* virtual_machine.built */ 'building',
    /* virtual_machine.cpus */ 1,
    /* virtual_machine.total_disk_size */ 512,
    /* virtual_machine.memory */ 2048,
    /* virtual_machine.ip_addresses.0.address */ '69.168.236.99',
    /* virtual_machine.initial_root_password */ "67T1U4A0+7eH"
);


;
INSERT INTO user_server_link (
    user_id,
    server_id
)
VALUES (
    2,
    2
),
(
    2,
    3
),
(
    2,
    4
)


;
