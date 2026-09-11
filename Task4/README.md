# Task4 — RBAC в Kubernetes (Docker Desktop)

## Предварительные требования
- Docker Desktop с включённым Kubernetes (тумблер `Enable Kubernetes`).
- Установленный `kubectl`.

---

## 1. Проверка кластера

```bash
kubectl cluster-info
kubectl get nodes
```


## 2. Создание неймспейсов

```bash
kubectl create namespace development
kubectl create namespace secure-space
```

## 3. Создание пользователей (ServiceAccounts)

```bash
bash 01_create_users.sh
```

## 4. Создание ролей

```bash
kubectl apply -f 02_create_roles.yaml
```

## 6. Проверка прав доступа

```bash
# Разработчик — листинг подов в development
kubectl auth can-i list pods --as=system:serviceaccount:development:developer -n development

# DevOps — создание подов в development
kubectl auth can-i create pods --as=system:serviceaccount:development:devops -n development

# Security — чтение секретов в secure-space
kubectl auth can-i get secrets --as=system:serviceaccount:secure-space:security -n secure-space

# Infra — чтение узлов кластера
kubectl auth can-i list nodes --as=system:serviceaccount:kube-system:infra

# Для каждой команды из раздела 6 должно вернуться yes, если RBAC настроен корректно.
```
