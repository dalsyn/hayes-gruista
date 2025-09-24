Hayes Auto - Gruista job

Instalación rápida:
1. Copia la carpeta `hayes-gruista` a tu resources folder.
2. Añade `ensure hayes-gruista` en tu server.cfg.
3. Añade la entrada del job en `qb-core/shared/jobs.lua` (snippet abajo).
4. Ajusta coords en `hayes-gruista/config.lua` si lo deseas.

Snippet para `qb-core/shared/jobs.lua` (añádelo dentro de Jobs table):

    ['gruista'] = {
        label = 'Hayes Auto',
        defaultDuty = false,
        grades = {
            ['0'] = {name = 'Trainee', payment = 100},
            ['1'] = {name = 'Mechanic', payment = 150},
            ['2'] = {name = 'Driver', payment = 200},
            ['3'] = {name = 'Manager', payment = 300}
        }
    },

Uso:
- jugadores con job 'gruista' recibirán notificaciones de repossessions y podrán aceptar trabajos.
- para facturar clientes se usa el event `hayes-gruista:sendInvoice` (server), o el comando de UI que quieras implementar.

Notas:
- La facturación requiere `qb-billing` export disponible.
- Ajusta `config.lua` del recurso para cambiar coordenadas y comisiones.
