variable "redis_redis_cluster_detach_oci_cache_users" {
  description = <<EOT
Map of redis_redis_cluster_detach_oci_cache_users, attributes below
Required:
    - oci_cache_users
    - redis_cluster_id
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    oci_cache_users  = list(string)
    redis_cluster_id = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

