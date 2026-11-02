## Tabla de decisión — El parqueadero

| Regla | Tipo | Minutos | Factura | Resultado |
|-------|------|---------|---------|-----------|
| R1 | Cualquiera | Menos de 0 | Cualquiera | Error: minutos negativos |
| R2 | Ni 1 ni 2 | 0 o más | Cualquiera | Error: tipo no válido |
| R3 | Carro o moto | De 0 a 15 | Cualquiera | Gratis |
| R4 | Carro o moto | Más de 15 | No | Horas × tarifa, máximo $30.000 |
| R5 | Carro o moto | Más de 15 | Sí | Lo mismo que R4, dividido entre 2 |

## Tabla de decisión — Semáforo

| Regla | Unidades | Resultado |
|-------|----------|-----------|
| R1 | Menor que 0 | ERROR: valor inválido |
| R2 | Igual a 0 | ROJO: agotado |
| R3 | De 1 a 10 | AMARILLO: pedir |
| R4 | Mayor que 10 | VERDE: todo bien |

## Casos borde — Semáforo

| Valor | Resultado esperado | Resultado |
|-------|--------------------|-----------|
| -1 | ERROR: valor inválido | OK |
| 0 | ROJO: agotado | OK |
| 1 | AMARILLO: pedir | OK |
| 10 | AMARILLO: pedir | OK |
| 11 | VERDE: todo bien | OK |
