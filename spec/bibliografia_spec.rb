require 'spec_helper'


describe Bibliografia do
    
    before :each do
        @book1 = Libro.new(["Dave Thomas"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
        @book2 = Libro.new(["Dave Thomas"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2012", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
        @book3 = Libro.new(["Richard E. Silverman"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
        @book4 = Libro.new(["Dave Thomas"], "Programming Ruby 1.9 & 2.0: the Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
        @book5 = Libro.new(["Dave Astels","Dave Thomas","Yukihiro Matsumoto"], "Programming ruby 1.9 & 2.0: The Pragmatic Programmers' Guide", "(The Facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
        
        @lista = Lista.new(0)
        @lista1 = Lista.new(0)
        @lista2 = Lista.new(0)
        
        @lista.pushf(@book3)
        @lista.push(@book2)
        @lista1.pushf(@book2)
        @lista1.push(@book1)
        @lista2.pushf(@book1)
        @lista2.push(@book4)
        
    end
        
    context "Imprimir" do  
        
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
end