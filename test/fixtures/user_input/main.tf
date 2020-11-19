variable "user_input" {
  description = "User input for the tested module."
}

module "test" {
  source = "../../../"
  input  = var.user_input
}

output "module_output" {
  description = "Expose output from the tested module."
  value       = module.test.output_value
}