class DocumentoElectronico < PublicacionesPeriodicas
    attr_accessor :sitio_pub 
    def initialize(autor,titulo,f_pub,sitio_pub)
        super(autor,titulo,f_pub)
        @sitio_pub = sitio_pub
    end
end