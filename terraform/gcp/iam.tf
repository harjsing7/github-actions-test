resource "google_project_iam_custom_role" "read-only-role" {
  description = <<-EOT
        Based on: Kubernetes Engine Developer, Storage Admin, Logging Admin, Monitoring Admin
    EOT
  permissions = [
    "container.clusterRoleBindings.get",
    "container.clusterRoleBindings.list",
    "container.clusterRoleBindings.create",
    "container.clusterRoles.get",
  ]
  project = google_project.firstproject.project_id
  role_id = "read_only_role"
  stage   = "GA"
  title   = "ReadOnly Engineer"
}
