resource "oci_redis_redis_cluster_detach_oci_cache_user" "redis_redis_cluster_detach_oci_cache_users" {
  for_each = var.redis_redis_cluster_detach_oci_cache_users

  oci_cache_users  = each.value.oci_cache_users
  redis_cluster_id = each.value.redis_cluster_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

