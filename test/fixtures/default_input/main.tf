module "test" {
  source = "../../../"
}

output "module_output" {
  description = "Expose output from the tested module."
  value       = module.test.output_value
}