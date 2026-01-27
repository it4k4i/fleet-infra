# infrastructure/vault/policies/postgres-admin.hcl

# Admin-Policy für External Secrets / Bootstrap Jobs
path "kv/data/postgres-infra/admin" {
  capabilities = ["read"]
}

# Optional: Leserechte für andere Admin-Sektionen
path "kv/data/postgres-infra/*" {
  capabilities = ["list"]
}

path "kv/data/postgres-infra/user-service" {
  capabilities = ["read"]
}

path "kv/data/postgres-infra/media-service" {
  capabilities = ["read"]
}