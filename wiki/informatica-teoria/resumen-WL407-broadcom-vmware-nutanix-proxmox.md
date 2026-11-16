# WL-407 — ¡Sucedió! Broadcom confisca VMware: ¿Nutanix, Proxmox, Hyper-V o XCP-ng?

- **Fuente**: `raw/informatica-teoria/2026-09-10-sucedio-broadcom-confisca-vmware-nutanix-proxmox-hyper-v-o-xcp-ng.md` (`pU_-j8XMqa0`, https://www.youtube.com/watch?v=pU_-j8XMqa0)
- **Canal**: Profe Carlos Leal (1.ª fuente WL)
- **Publicado**: 2026-09-10 · **Duración**: 25:04 · **Idioma**: es (subtítulos automáticos)
- **Dominio previsto**: informatica-teoria o general (virtualización/infraestructura; tono divulgativo-docente con editorialización)
- **Tramo**: 67 (relevo 7 de 12 del pedido L34)

## Qué trata

Clase-docente sobre la adquisición de VMware por Broadcom y el replanteo del mercado de virtualización:

- **Conceptos previos**: hipervisor tipo 1 (instalado sobre el hardware, dozens-hundreds de VMs por servidor), KVM como motor común a casi todos los competidores modernos (todos usan Linux), hiperconvergencia (cómputo+almacenamiento+red unificados, analogía del smartphone) y VDI (escritorio remoto servido desde el datacenter, analogía cloud gaming).
- **El caso Broadcom–VMware**: fin de las licencias perpetuas, catálogo de 168 productos reducido a 4 bundles cerrados, aumentos de hasta 150 % (con casos anecdotales de +1000 %), auditorías para exigir retirar parches de seguridad sin contrato vigente. Resultado: la división de software de Broadcom facturó 6.800 M USD en un trimestre (+17 % interanual) mientras la cuota de VMware caería del 70 % (2024) al 40 % (2029, proyección Gartner) — encuesta Rimini Street: 98 % de clientes evaluando alternativas, 36 % migrando ya. Estrategia deliberada: renunciar al segmento pyme para quedarse con clientes cautivos (bancos, telecom, gobiernos). Corrige el mito de comentarios: Broadcom es de Palo Alto (EE. UU.), no china — «capitalismo salvaje, puro y duro».
- **Ganadores por categoría**:
  - **Nutanix** (rey comercial): +18 % ingresos, récord de clientes nuevos; hipervisor AHV gratis («elimina el impuesto de virtualización», declarado en evento .NEXT/«Touch Day» en Nicaragua), herramientas de migración en caliente desde VMware, apertura a storage externo (PowerFlex, Pure, NetApp). No es low-cost: se paga premium, pero con reglas claras.
  - **IBM/Red Hat OpenShift**: +417 % en VMs sobre OpenShift (NASA migró parte); VMs y contenedores lado a lado sobre KVM; clones binarios gratuitos (Rocky/Alma) para quien no necesite la plataforma completa; curva de aprendizaje dura y sobreingeniería para cargas simples.
  - **Proxmox VE** (favorito open source): Proxmox Datacenter Manager, balanceo automático, soporte nativo de respaldo de Veeam; límites reales: soporte premium de 2 h en horario laboral, pocos integradores certificados en LATAM, PDM aún no es bicenter.
  - **Nicho**: Scale Computing (edge, clústeres de 3 nodos ~10 k USD, adquirida por Acumera en 2025 — vigilar rumbo); Verdo/Verge IO (+80 % ARR, migraciones en caliente, clientes Boeing/NASA); XCP-ng (línea Xen, soberanía de datos europea, eliminó el límite histórico de 2 TB por volumen).
  - **Entradas tardías**: HPE Morpheus VM Essentials (KVM propio, ~600 USD/socket con soporte, cobro por socket vs por núcleo — ahorro hasta 90 %); Citrix/XenServer 9 (recepción tibia); Hyper-V/Azure Local (tabla a la que se agarran muchos porque ya tienen la licencia Windows; Windows Server 2025 mejoró — VMs hasta 240 TB de RAM, GPU compartida — pero empuja hacia Azure: «huyendo de un proveedor agresivo, tal vez el tío Bill no sea tu mejor opción»).
- **Tesis de cierre**: «Broadcom forzó a la virtualización a evolucionar» — del estándar de facto a un abanico de opciones según prioridad (estabilidad → Nutanix; contenedores → OpenShift; coste/soberanía → Proxmox/XCP-ng; sucursales → Scale Computing; licencias por socket → HPE).

## Señales de calidad

- Tono docente con humor y editorialización fuerte; los datos de mercado (Gartner, Rimini Street, ingresos) se citan de 2.ª mano **sin enlaces** — verificar antes de citar como datos.
- ASR fuerte en todo el texto («Bienware/Bengware/Brocon» = Broadcom/VMware, «Nutanic/Notanic» = Nutanix, «Bin lanzó» = Veeam, «Bercho/Berch OS» = Verge IO) — normalizado solo en este resumen.
- Autopromoción (suscripción, curso de Docker en preparación, búsqueda de patrocinador) — excluida de la síntesis.

## Cruces (consolidación diferida, L12)

- [[historia-de-la-tecnologia]] — consolidación de un caso de mercado en tiempo real (continuación natural de los tramos de historia informática).
- Contraste con el modelo de negocio del «impuesto de virtualización» vs el modelo invertido de SQLite (WL-405: regala el componente, cobra soporte) — ambos en informatica-teoria.
- Cruces temáticos: [[bases-de-datos]] (infra de servidores), cluster infra/DevOps WL-294/334; lock-in y dependencia de proveedor conecta con críticas a sujeción cloud (WL-404, smart home cloud→hub).

## Consolidación (relevo 2 del pedido L35, 2026-11-16)

Consolidado en `informatica-teoria/` (infra/virtualización; primera opción registrada). Alimenta [[historia-de-la-tecnologia]] (caso de mercado en tiempo real). Canal a texto plano por umbral <2: Profe Carlos Leal.
