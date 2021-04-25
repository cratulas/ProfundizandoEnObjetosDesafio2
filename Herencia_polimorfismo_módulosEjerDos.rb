# Ejercicio 2

module Habilidades
    module Volador
        def volar
        'Estoy volandooooo!'
        end
        def aterrizar
        'Estoy cansado de volar, voy a aterrizar'
        end
    end


    module Nadador
        def nadar
        'Estoy nadando!'
        end
        def sumergir
        'glu glub glub glu'
        end
    end


    module Caminante
        def caminar
        'Puedo caminar!'
        end
        end
end


module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end

    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end



#Clases

#Crear la clase Animal con un atributo nombre . Agregar un método getter para el atributo nombre
class Animal
    include Alimentacion

    attr_reader :name

    def initialize(name)
        @name = name
    end

end


#Crear las clases Ave , Mamifero e Insecto . Ambas heredan de Animal

class Ave < Animal
    include Habilidades::Caminante
    
    
end

class Mamifero < Animal
    include Habilidades::Caminante
end

class Insecto < Animal
    include Habilidades::Volador
    include Alimentacion::Herbivoro
end


#Crear las clases Pingüino , Paloma y Pato . Las tres heredan de Ave

class Pinguino < Ave

    include Habilidades::Nadador
    include Alimentacion::Carnivoro

end

class Paloma < Ave
    include Habilidades::Volador
    include Alimentacion::Herbivoro
end

class Pato < Ave
    include Habilidades::Nadador
    include Alimentacion::Herbivoro
end

#Crear las clases Perro , Gato y Vaca . Las tres heredan de Mamifero

class Perro < Mamifero
    include Alimentacion::Carnivoro
    include Habilidades::Nadador

end

class Gato < Mamifero
    include Alimentacion::Carnivoro
    
end

class Vaca < Mamifero
    include Alimentacion::Herbivoro
    
end

#Crear las clases Mosca , Mariposa y Abeja . Las tres heredan de Insecto

class Mosca < Insecto

end

class Mariposa < Insecto

end

class Abeja < Insecto

end
