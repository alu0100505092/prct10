class Imprimir 
    def apellidos_nombre
        @n = (@autor.size)-1
        for i in 0..@n
            value = @autor[i].split(" ")
            @autor[i] = "#{value[1]}, #{value[0][0]}"
        end
    end
    
    def m_capitalize
        value = @titulo.split(" ")
        @n = value.size-1
        
        for i in 0..@n
            value[i] = value[i].capitalize
        end
        
        for i in 0..@n
            if i == 0
               @titulo = value[0] 
            else
                @titulo.gsub!(/$/, " "); # Hace como fi fuese un append y añade al final de la cadena cada nueva palabra
                @titulo.gsub!(/$/, value[i]);
            end
        end
    end
end    