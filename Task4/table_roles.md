| Роль | Права роли | Группы пользователей |
| --- | --- | --- |
| **developer** (Role) | `get, list, watch` на `pods`, `services`, `configmaps` | **Разработчики** (Developers) |
| **devops** (Role) | `create, update, patch, delete` на `pods`, `deployments`, `services` | **DevOps-инженеры** (DevOps) |
| **secret-reader** (Role) | `get, list` на `secrets` | **Специалисты по ИБ / Security** |
| **cluster-infra-reader** (ClusterRole) | `get, list, watch` на `nodes`, `persistentvolumes`, `pods` | **Инженеры инфраструктуры** (Infrastructure) |