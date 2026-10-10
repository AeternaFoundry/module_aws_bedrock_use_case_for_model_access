output "bedrock_use_case_for_model_accesses_form_data" {
  description = "Map of form_data values across all bedrock_use_case_for_model_accesses, keyed the same as var.bedrock_use_case_for_model_accesses"
  value       = { for k, v in aws_bedrock_use_case_for_model_access.bedrock_use_case_for_model_accesses : k => v.form_data if v.form_data != null && length(v.form_data) > 0 }
}

