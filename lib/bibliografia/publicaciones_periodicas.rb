class PublicacionesPeriodicas < Imprimir
include Comparable  
    attr_accessor :autor, :titulo, :f_pub
    
    def initialize(autor,titulo,f_pub)
       @autor=autor
       @titulo=titulo
       @f_pub=f_pub
    end
    
    
    def <=>(other)
        if (@autor[0] != other.autor[0])
                @autor<=> other.autor
        else
            if(@autor.size==1) || (other.autor.size ==1)
                @autor.size <=> other.autor.size
            else
                if(@f_pub != other.fecha)
                    @f_pub <=> other.fecha
                else
                    @titulo <=> other.titulo
                end
            end
        end
    end
end  