output "output_id_volume" {
  value = aws_ebs_volume.my_vol.id
}

# Cet output permettra de lier mon volume à l'instance Ec2 (dans mon fichier /app/main.tf)
