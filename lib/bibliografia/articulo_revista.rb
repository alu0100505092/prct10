class ArticuloRevista < PublicacionesPeriodicas
    attr_accessor :volumen_revista, :sitio_pub, :num_pag
    def initialize(autor,titulo,f_pub,volumen_revista,sitio_pub,num_pag)
        super(autor,titulo,f_pub)
        @volumen_revista = volumen_revista
        @sitio_pub = sitio_pub
        @num_pag = num_pag
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
        puts("#{@f_pub}")
        
        print "\t"
        puts("#{@titulo}")
            
        print "\t"
        puts("#{@volumen_revista}")
        
        print "\t"
        puts("#{@sitio_pub}")
        
        print "\t"
        puts("#{@num_pag}")
        
        
             
    end 
end    