module Terrestre
  class Vehiculo
    def información
      puts "Carro o camioneta de 4 ruedas"
    end
  end
  class Camion
    def información
      puts "Vehiculo de alto tonelaje, de 12 ruedas o mas; puede ser para transporte de producto o vehiculo de transporte urbano"
    end
  end
  class Motocicleta
    def información
      puts "Vicicleta con motor"
    end
  end
end

module Aereo
  class Avion
    def información
      puts "Medio de transporte que vuela"
    end
  end
  class Helicoptero
    def información
      puts "maquina que vuela a base de una helice, tiene una funcionalidad especial que permite mantenerse en el aire sin moverse lo cual funciona en trabajos de rescarte"
    end
  end
  class Jet
    def información
      puts "Maquina especialmente utilizada por fuerzas militares por su alta velocidad y que puede ser equipado con armamento"
    end
  end
end

module Acuatico
  class Lancha
    def información
      puts "medio de transporte frecuentemente usado por pescadores"
    end
  end
  class Barco
    def información
      puts "Medio de transporte de enormes magnitudes utilizado para transporte de contenedores "
    end
  end
end

nave= Acuatico::Barco.new
nave.información