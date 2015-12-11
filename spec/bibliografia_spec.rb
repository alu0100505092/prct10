require 'spec_helper'


describe Bibliografia do
    
    before :all do
        @book1 = Libro.new(["Dave Thomas"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
        @book2 = Libro.new(["Dave Thomas"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2012", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
        @book3 = Libro.new(["Richard E. Silverman"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
        @book4 = Libro.new(["Dave Thomas"], "Programming Ruby 1.9 & 2.0: the Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
        @book5 = Libro.new(["Dave Astels","Dave Thomas","Yukihiro Matsumoto"], "Programming ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
        
        @art_rev1 = ArticuloRevista.new(["Juan Castagnino"], "Tecnicas, materiales y aplicaicones en nanotecnologia", "Bioquimica Clinica", "24", "2",  "April, 2007")
        @art_rev2 = ArticuloRevista.new(["Juan Castagnino"], "Tecnicas, materiales y aplicaicones en nanotecnologia", "Bioquimica Clinica", "24", "2",  "April, 2006")
        @art_rev3 = ArticuloRevista.new(["Eva Aquine"], "Tecnicas, materiales y aplicaicones en nanotecnologia", "Bioquimica Clinica", "24", "2",  "April, 2007")
        @art_rev4 = ArticuloRevista.new(["Juan Castagnino"], "Tecnicas, materiales y aplicaicones en nanotecnologia", "Bioquimica Clinica", "24", "2",  "April, 2007")
        @art_rev5 = ArticuloRevista.new(["Sara Atera","Juan Castagnino", "Hipo Prionis"], "Tecnicas, materiales y aplicaicones en nanotecnologia", "Bioquimica Clinica", "24", "2",  "April, 2007")
        
        @art_per = ArticuloPeriodico.new(["Adam Davidson"],"Saving the World, Startup-Style", "The New York Times", 1, "Nov 17, 2015")
        @dc_elec = DocumentoElectronico.new(["Kike Garcia"], "Internet Explorer empieza a sospechar que no es tu navegador predeterminado", "elmundotoday.com", "September 24, 2013")
        
        
        @lista = Lista.new(0)
        @lista1 = Lista.new(0)
        @lista2 = Lista.new(0)
        @lista3 = Lista.new(0)
        @lista4 = Lista.new(0)
        @lista5 = Lista.new(0)
        
        @lista.pushf(@book3)
        @lista.push(@book2)
        @lista1.pushf(@book2)
        @lista1.push(@book1)
        @lista2.pushf(@book1)
        @lista2.push(@book4)
        
        @lista3.pushf(@art_rev3)
        @lista3.push(@art_rev2)
        @lista4.pushf(@art_rev2)
        @lista4.push(@art_rev1)
        @lista5.pushf(@art_rev1)
        @lista5.push(@art_rev4)
        
    end
        
    context "Imprimir Libro" do  
        
        it "Cambiamos nombre" do
            @book1.apellidos_nombre
            expect(@book1.autor).to eq(["Thomas, D"])
        end
       
        it "Ordena por autor" do 
            expect(@lista.sort).to eq([@book2,@book3])
        end
           
        it "Ordenamos por fecha" do 
            expect(@lista1.sort).to eq([@book2,@book1])
        end
        
        it "ordenar por titulo" do
            expect(@lista2.sort).to eq([@book4,@book1]) 
        end
        
        it "Subtitulo en mayuscula" do
            @book1.m_capitalize
            expect(@book1.titulo).to eq("Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide")
        end
        
        it "Imprime" do
            @book1.to_s
        end
    end
    
    context "Imprimir Revista" do  
        
        it "Cambiamos nombre" do
            @art_rev1.apellidos_nombre
            expect(@art_rev1.autor).to eq(["Castagnino, J"])
        end
       
        it "Ordena por autor" do 
            expect(@lista3.sort).to eq([@art_rev3,@art_rev2])
        end
           
        it "Ordenamos por fecha" do 
            expect(@lista4.sort).to eq([@art_rev1,@art_rev2])
        end
        
        it "ordenar por titulo" do
            expect(@lista5.sort).to eq([@art_rev1,@art_rev4]) 
        end
        
        it "Subtitulo en mayuscula" do
            @art_rev1.m_capitalize
            expect(@art_rev1.titulo).to eq("Tecnicas, Materiales Y Aplicaicones En Nanotecnologia")
        end
        
        it "Imprime" do
            @art_rev1.to_s
        end
    end
end