require 'spec_helper'

describe Rubylab::Campfire do

    before do
        @rubylab = Rubylab::Campfire.new
    end
        
    it 'should not be nil' do
        @rubylab.should be_an_instance_of(Rubylab::Campfire)
        @rubylab.should_not be_nil
    end
    
    it 'should have a nil attribute: parola' do
        @rubylab.parola.should be_nil
    end

    describe '#start' do
    
        it 'should call instance methods' do
            @rubylab.should_receive(:citeste_parola)
            @rubylab.should_receive(:afiseaza_camerele)
            #@rubylab.should_receive(:citeste_mesajul)
            
            @rubylab.start
        end
    end

    describe '#citeste_mesajul' do
    
        it 'should read and return message' do
            valoarea_mesajului = 'Salut de test'
            Kernel.should_receive(:puts).with('Scrie un mesaj:')
            Kernel.should_receive(:gets).and_return(valoarea_mesajului)
            
            @rubylab.citeste_mesajul.should == valoarea_mesajului
        end
    end
    
    describe '#citeste_parola' do
    
        it 'should read and update `parola`' do
            valoarea_parolei = 'parola123'
            Kernel.should_receive(:puts).with('Tasteaza parola, aka tokenul tau Campfire:')
            Kernel.should_receive(:gets).and_return(valoarea_parolei)
            
            @rubylab.citeste_parola
            @rubylab.parola.should == valoarea_parolei
        end
    end

end
