# infrastructure/vault/policies/postgres-admin.hcl

# Admin-Policy für External Secrets / Bootstrap Jobs
path "kv/data/postgres/admin" {
  capabilities = ["read"]
}

# Optional: Leserechte für andere Admin-Sektionen
path "kv/data/postgres/*" {
  capabilities = ["list"]
}
