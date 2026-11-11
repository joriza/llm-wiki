# Arquitectura von Neumann

- **Tipo**: página de concepto.
- **Dominio**: `historia-informatica/`.
- **Actualizado**: 2026-11-11 (consolidación del lote historia-informatica).
- **Fuentes**: 1 resumen con desarrollo sustancial ([[resumen-el-padre-de-la-informatica-no-es-quien-piensas-linuxchad]]); la misma idea subyace al AGC del Apolo ([[resumen-el-codigo-del-apolo-11-es-open-source-neurika]]) y es el blanco de la crítica de Backus ([[resumen-fortran-marco-a-una-generacion-linuxchad]]).

## El First Draft (1945)

El **30 de junio de 1945** aparece el *First Draft of a Report on the EDVAC*, firmado solo por [[john-von-neumann]] — probablemente el documento más influyente de la historia de la computación. Divide la máquina en **cinco partes**: órgano aritmético, control, memoria, entrada y salida — hoy: **CPU, RAM y E/S**.

La clave es un detalle: en la ENIAC los números estaban en memoria pero **el programa estaba en los cables** (recablear para cambiarlo). En el diseño von Neumann, **las instrucciones viven en la misma memoria que los datos** — cambiar de programa es cambiar lo que hay en memoria, no tocar un cable. El informe además defiende el **sistema binario** y — curiosamente — no usa la palabra «programa»: solo habla de **código**.

## Disputa, difusión y crítica

La autoría la disputaron Eckert y Mauchly (creadores de la ENIAC); Burks atribuye a Eckert la memoria rápida y a von Neumann el diseño lógico detallado; von Neumann nunca reclamó la invención del programa almacenado y **regaló el diseño**: los informes del IAS en dominio público produjeron máquinas en todo el mundo (JOHNIAC, MANIAC, IBM 701). En **1977**, [[john-backus]] acuñó el **«cuello de botella de von Neumann»**: el canal procesador↔memoria que pasa datos palabra a palabra, limitando máquinas y programadores.

## Vigencia

Aunque los procesadores actuales son mucho más complejos, la idea subyacente es la misma en tu ordenador, tu teléfono y probablemente tu televisión — y estaba en el Apollo Guidance Computer: las alarmas 1202 del alunizaje fueron el Executive gestionando prioridades sobre esa organización básica.

## Véase también

- [[john-von-neumann]] — el autor y la disputa de autoría.
- [[alan-turing]] — el contrapunto: «el ordenador sigue el plano de von Neumann, no de Turing» (tesis de la fuente).
