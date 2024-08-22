puts "Bem-vindo ao CookBook, sua rede social de receitas"

receitas = []
while(true) do
    puts "Digite o nome da receita: "

    nome = gets.chomp()

    receitas << nome

    puts
    puts "Receita #{nome} cadastrda com sucesso"
    puts
    puts "============= Receitas cadastradas ==================="
    # for em ruby
    # for receita in receitas do
    #     puts receita
    # end
    receitas.each do |receita| #for mais legal
        puts receita
     puts
end