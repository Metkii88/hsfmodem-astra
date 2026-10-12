# hsfmodem-astra

Conexant HSF/HDA Soft Modem (Linuxant) drivers, forked from
https://github.com/george-hopkins/hsfmodem and adapted for **Astra Linux 1.7 (OREL)**
with kernel **6.1**.

## Статус адаптации
- `modules/GPL/oscompat.h`: совместимость с API ядра 6.1+ (`class_create`, `device_create`,
  шим `CNXT_DEVFS_DECLARE_SHIM` для devfs/chrdev-интерфейса).
- `modules/osdcp.c`, `modules/osdiag.c`: использование shim-а chrdev для 6.1+.
- Сборка: `make CNXTDRIVER=hsf` (требуются headers ядра Astra 1.7: пакет `kernel-heads­ers-un-def`).

## Известные ограничения
Проприетарные бинарные объекты `modules/imported/*.O` собраны для i386;
полная работоспособность на x86_64 / ARM (baikal/elbrus) не гарантирована.
