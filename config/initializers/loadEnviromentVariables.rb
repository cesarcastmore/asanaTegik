#Archivo para colocar todas las variables globales

ASANA_CONFIG = YAML.load_file("#{::Rails.root}/config/asana.yml")[::Rails.env]
