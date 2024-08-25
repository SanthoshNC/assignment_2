variable "tags" {
  type        = map(any)
  description = "(Optional) A mapping of tags to assign to the bucket."
  default = {
    application = "assignment"
    terraform   = "true"
    createdby   = "santhoshnc"
  }
}

variable "app_name" {
  type        = string
  description = "Name of the app to be created"
}