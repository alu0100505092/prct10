class ArticuloPeriodico < PublicacionesPeriodicas
    attr_accessor :sitio_pub, :num_pag
    def initialize(autor,titulo,f_pub,sitio_pub,num_pag)
        super(autor,titulo,f_pub)
        @sitio_pub = sitio_pub
        @num_pag = num_pag
    end
end