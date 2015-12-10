require 'spec_helper'


describe Bibliografia do
    
    before :each do
        @libro1 = Libro.new(["Dave Thomas"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
        @libro2 = Libro.new(["Dave Thomas"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2012", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
        @libro3 = Libro.new(["Richard E. Silverman"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
        @libro4 = Libro.new(["Dave Thomas"], "Programming Ruby 1.9 & 2.0: the Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
        @libro5 = Libro.new(["Dave Astels","Dave Thomas","Yukihiro Matsumoto"], "Programming ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
        
        @lista = Lista.new(0)
        @lista1 = Lista.new(0)
        @lista2 = Lista.new(0)
        
        @lista.pushf(@libro3)
        @lista.push(@libro2)
        @lista1.pushf(@libro2)
        @lista1.push(@libro1)
        @lista2.pushf(@libro1)
        @lista2.push(@libro4)
        
    end
        
    context "Imprimir" do  
        
        it "Cambiamos nombre" do
            @libro1.apellidos_nombre
            expect(@libro1.autor).to eq(["Thomas, D"])
        end
       
        it "Ordena por autor" do 
            expect(@lista.sort).to eq([@libro2,@libro3])
        end
           
        it "Ordenamos por fecha" do 
            expect(@lista1.sort).to eq([@libro2,@libro1])
        end
        
        it "ordenar por titulo" do
            expect(@lista2.sort).to eq([@libro4,@libro1]) 
        end
        
        it "Subtitulo en mayuscula" do
            @libro1.m_capitalize
            expect(@libro1.titulo).to eq("Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide")
        end
        
        it "Imprime" do
            @libro1.to_s
        end
    end
end