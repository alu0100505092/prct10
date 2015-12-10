class Libro < PublicacionesPeriodicas
    
    attr_accessor :autor, :titulo, :f_pub, :serie, :editorial, :edicion, :isbn
    def initialize(autor,titulo,fecha,serie,editorial,edicion,isbn)
       @autor=autor
       @titulo=titulo
       @f_pub=f_pub
       @serie = serie
       @editorial = editorial
       @edicion = edicion
       @isbn = isbn
    end
    
    def to_s
        puts ""
        for i in 0..@autor.size-1
            if i == @autor.size-2
                print("#{@autor[i]}  &  ")
            else
                print("#{@autor[i]}, ")
            end
        end
        
        puts""
        print "\t"
        puts("#{@titulo}")
            
        print "\t"
        puts("#{@serie}")
        
        print "\t"
        puts("#{@editorial}")
        
        print "\t"
        puts("#{@edicion}")
        
        print "\t"
        puts("#{@f_pub}")
            
        # @isbn.each{ |i, valor| 
        # print "\t"
        # puts("#{i}  #{valor}") } 
    end 
end