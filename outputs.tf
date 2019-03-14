output "number" {
  value       = "${join("", google_project.default.*.number)}"
  description = "The numeric identifier of the project"
}

output "name" {
  value       = "${join("", google_project.default.*.name)}"
  description = "The project ID"
}
