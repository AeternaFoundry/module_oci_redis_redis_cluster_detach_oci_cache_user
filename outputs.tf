output "redis_redis_cluster_detach_oci_cache_users_id" {
  description = "Map of id values across all redis_redis_cluster_detach_oci_cache_users, keyed the same as var.redis_redis_cluster_detach_oci_cache_users except keys with no id are omitted"
  value       = { for k, v in oci_redis_redis_cluster_detach_oci_cache_user.redis_redis_cluster_detach_oci_cache_users : k => v.id if v.id != null && length(v.id) > 0 }
}
output "redis_redis_cluster_detach_oci_cache_users_oci_cache_users" {
  description = "Map of oci_cache_users values across all redis_redis_cluster_detach_oci_cache_users, keyed the same as var.redis_redis_cluster_detach_oci_cache_users except keys with no oci_cache_users are omitted"
  value       = { for k, v in oci_redis_redis_cluster_detach_oci_cache_user.redis_redis_cluster_detach_oci_cache_users : k => v.oci_cache_users if v.oci_cache_users != null && length(v.oci_cache_users) > 0 }
}
output "redis_redis_cluster_detach_oci_cache_users_redis_cluster_id" {
  description = "Map of redis_cluster_id values across all redis_redis_cluster_detach_oci_cache_users, keyed the same as var.redis_redis_cluster_detach_oci_cache_users except keys with no redis_cluster_id are omitted"
  value       = { for k, v in oci_redis_redis_cluster_detach_oci_cache_user.redis_redis_cluster_detach_oci_cache_users : k => v.redis_cluster_id if v.redis_cluster_id != null && length(v.redis_cluster_id) > 0 }
}

