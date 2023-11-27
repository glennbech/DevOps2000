variable "prefix" {
  type = string
  default = "2000"
}

variable "ecrRepo" {
  type = string
  default = "2000-repo"
}

variable "imageTag" {
  type = string
  default = "latest"
}

variable "port" {
  type = string
  default = "8080"
}

variable "bucket" {
  type = string
  default = "2000-bucket"
}

variable "alarm_email" {
  type = string
}