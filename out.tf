# Convert letters to upper-case as list
output "upper-case-list" {
  value = [for l in var.letters: upper(l)]
sensitive   = true
}

# Convert letters to upper-case as map
output "upper-case-map" {
  value = {for l in var.letters: l => upper(l)}
sensitive   = true
    }
variable "letters" {
  
  default = ["Q", "A"]
}
