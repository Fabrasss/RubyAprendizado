INSEIR_RECEITA = 1
VISUALIZAR_RECEITAS = 2
BUSCAR_RECEITAS = 3
SAIR = 4




def bem_vindo
    puts "Bem-vindo ao CookBook, sua rede social de receitas"
end
def menu()
    puts "[#{INSEIR_RECEITA}] Cadstrar uma receita"
    puts "[#{VISUALIZAR_RECEITAS}] Ver todas as receitas"
    puts "[#{BUSCAR_RECEITAS}] Buscar receitas"
    puts "[#{SAIR}] Sair"

    print "Escolha uma opção: "
    return gets.to_i()
end
def inserir_receita()
    puts "Digite o nome da receita: "
    nome = gets.chomp()
    puts "Digite o tipo da receita"
    tipo = gets.chomp()
    puts
    puts "Receita #{nome} cadastrda com sucesso"
    return {nome: nome, tipo: tipo}   
end
def imprimir_receitas(receitas)
    puts "============= Receitas cadastradas ==================="
        receitas.each do |receita|
            puts "#{receita[:nome]} - #{receita[:tipo]}"
        end
        
        if receitas.empty?
            puts "Nenhuma receita cadastrada"
        end
end



bem_vindo()

receitas = []


opcao = menu()

while(opcao != SAIR) do
    if(opcao == INSEIR_RECEITA)
    receitas << inserir_receita()    
    elsif(opcao == VISUALIZAR_RECEITAS)
    imprimir_receitas(receitas)
    end


    opcao = menu()

end
puts "Obrigado por usar o CookBook!!"
