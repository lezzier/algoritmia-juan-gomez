## Sesión 3 — Repetir y descomponer

Ejercicios de la sesión 3 en PSeInt: ciclos `Mientras`, `Repetir` y `Para`, y descomposición en `SubProceso`.

| Archivo | Tema |
|---------|------|
| `CajeroParqueadero.psc` | `Mientras` — ciclo que no sabe cuántas vueltas dará |
| `ValidarPIN.psc` | `Repetir` — se ejecuta al menos una vez, máximo 3 intentos |
| `Calificaciones.psc` | `Para` — acumulador, contador, máximo/mínimo y bandera |
| `Piramide.psc` | `Para` anidados — un ciclo dentro de otro |
| `FacturaRestaurante.psc` | Descomposición — un problema grande en subprocesos |

## Reto — El caracol del pozo

Pozo de 10 m. De día sube 3 m, de noche resbala 2 m. La trampa: el día que llega a 10 m ya salió y no resbala.

| Día | Arranca | Sube hasta | ¿Salió? | Resbala a |
|-----|---------|------------|---------|-----------|
| 1 | 0 | 3 | No | 1 |
| 2 | 1 | 4 | No | 2 |
| 3 | 2 | 5 | No | 3 |
| 4 | 3 | 6 | No | 4 |
| 5 | 4 | 7 | No | 5 |
| 6 | 5 | 8 | No | 6 |
| 7 | 6 | 9 | No | 7 |
| 8 | 7 | 10 | Sí | — |

Resultado: **8 días**, no 10.

## Traza — CajeroParqueadero

Prueba con 4000, 8000, 2000 y 0.

| Paso | valor | total | carros | Acción |
|------|-------|-------|--------|--------|
| Inicio | — | 0 | 0 | — |
| Lee | 4000 | 0 | 0 | — |
| Vuelta 1 | 4000 | 4000 | 1 | Lee 8000 |
| Vuelta 2 | 8000 | 12000 | 2 | Lee 2000 |
| Vuelta 3 | 2000 | 14000 | 3 | Lee 0 |
| Fin | 0 | 14000 | 3 | Sale del `Mientras` |

Salida: `Carros atendidos: 3` y `Total recaudado: 14000`.

## Traza — Piramide (altura 4)

| fila | Espacios (`n - fila`) | Asteriscos (`2 * fila - 1`) | Salida |
|------|-----------------------|-----------------------------|--------|
| 1 | 3 | 1 | `   *` |
| 2 | 2 | 3 | `  ***` |
| 3 | 1 | 5 | ` *****` |
| 4 | 0 | 7 | `*******` |

Con altura 1 imprime `*`. Con altura 6 la última fila tiene 11 asteriscos.

## Árbol de componentes — FacturaRestaurante

```
FacturaRestaurante
├── LeerPedido() ──────────────────────► subtotal
├── CalcularPorcentaje(subtotal, 8) ───► impuesto
├── CalcularPorcentaje(subtotal, 10) ──► propina
└── ImprimirFactura(subtotal, impuesto, propina)
        └── total = subtotal + impuesto + propina
```

`CalcularPorcentaje` es un solo subproceso usado dos veces (impuesto y propina).

Prueba con 25000 × 2, 12000 × 1 y 0:

| Concepto | Valor |
|----------|-------|
| Subtotal | 62000 |
| Impuesto (8%) | 4960 |
| Propina (10%) | 6200 |
| **Total** | **73160** |

## Notas

- **ValidarPIN**: el error del robot era un ciclo infinito porque la condición no incluía el límite de intentos. La condición correcta es `Hasta Que acceso O intentos = 3`.
- **Calificaciones** con 3.5, 2.8, 4.9, 3.0 y 4.2: promedio 3.68, aprobados 4, nota más alta 4.9 y más baja 2.8, y muestra "Hay estudiantes en refuerzo".
