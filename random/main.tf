resource "random_pet" "animal" {
  keepers = {
    uuid = "${uuid()}" # Force a new name each time
  }
  length = 7
}

output "random" {
  value = "${random_pet.animal.id}"
}
