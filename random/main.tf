resource "random_pet" "animal" {
  keepers = {
    uuid = "${uuid()}" # Force a new name each time
  }
  length = 5
}

output "random" {
  value = "${random_pet.animal.id}"
}
