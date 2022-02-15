class Pessoa
    attr_accessor :id, :name, :adress, :phone, :age, :responsable, :person, :change

    def initialize(id,name,age,change)
        @id = id
        @name = name
        @adress = nil
        @phone = nil
        @age = age
        @responsable = nil
        @person = nil
        @change = change
    end
end

def wait(name, age, check)
    system "clear"
    puts "Aluno: #{name} | Idade: #{age}"
    print "Deseja alterar os dados informados?(s/n):"
    local = gets.chomp.to_s.downcase
    if local == 'n'
        print "Checkando dados."
        sleep(1)
        print "...."
        sleep(1)
        print "..\n"
        if age <= 6 or age >=100
            puts " Idade incorreta! tente novamente!"
            sleep(5)
            return false
        else
            puts "Dados Verificados!"
            sleep(2)
            return true
        end
    else
        return false
    end
    system "clear"
    info(object)
end

def info(object)
    system "clear"
    print"Cadastro realizado com sucesso! \n"
    puts "cod:#{object.id}| Aluno: #{object.name} |Idade: #{object.age} anos."
    sleep(3)
end

def menu
    system "clear"
    times
    puts "|----------------------------|"
    puts "|Sistema Cadastro de Alunos  |"
    puts "|1- Cadastrar                |"
    puts "|2- Listar                   |"
    puts "|3- Editar                   |"
    puts "|4- Excluir Usuario          |"
    puts "|5- sair                     |"
    puts "|----------------------------|"
end

def gera_id(relacao = [])
    id_gerado = rand(1..10)
    cod = []
    if relacao != []
        relacao.each do |item|
            cod << item.id
        end
        relacao.each do |aluno|        
            while cod.include?(id_gerado) do 
               id_gerado =  rand(1..10)
            end 
        end
        return id_gerado
    else
        return id_gerado
    end
end

def texto_menu
    print "\n1-CADASTRAR/ 2-LISTAR/ 3-EDITAR/ 4-EXCLUIR/ 5-SAIR  \nPara Continuar informe a opcao desejada do Menu ?:"
end

def times
    t = Time.now
    print "|Data: #{t.strftime("%d/%m/%Y %H:%M:%S")}\n"
end

def logoff
    system "clear"
    print "Fazendo logoff do sistema "
    3.times{|item| 
        item ="|"
        print item
        sleep(1)
    }
    print("\n")
    exit(0)
end

def login
    system "clear"
    print "Fazendo login do sistema "
    3.times{|item| 
        item ="|"
        print item
        sleep(1)
    }
    print("\n")
end

def layout(object)
    print "Continuar?(s ou n):"
    selecao = gets.chomp.to_s
    system "clear"
    case selecao.downcase
    when 's'
        while selecao != "n"
            system "clear"
            t = Time.now
            puts "|MENU EDITAR |"
            times
            puts "|=================================================================="
            puts "| Ultima Alteracão: #{object.change}"
            puts "| 1.Nome: #{object.name}"
            puts "| 2.Endereço: #{object.adress}"
            puts "| 3.Telefone: #{object.phone}"
            puts "| 4.Responsavel: #{object.responsable}"
            puts "| 5.Tipo de Usuario: #{object.person}"
            puts "| 6.Idade: #{object.age}"
            puts "| 0.Sair"
            puts "|==================================================================\n"
            puts "|selecione a opcao desejada:"
            menu_local = gets.chomp.to_i
            case menu_local
            when 1
                print "Altere o nome:"
                name =  gets.chomp.to_s
                object.name = name.upcase
                object.change = "#{t.strftime("%d/%m/%Y %H:%M:%S")}"
                print "deseja fazer mais alterações?(s/n)"
                selecao = gets.chomp.to_s
                next if selecao == 's'
                system "clear"
                puts "Alterações realizadas com sucesso!!!"
                sleep(3)
                
            when 2
                print "Altere o endereco:"
                adress =  gets.chomp.to_s
                object.adress = adress.upcase
                object.change = "#{t.strftime("%d/%m/%Y %H:%M:%S")}"
                print "deseja fazer mais alterações?(s/n)"
                selecao = gets.chomp.to_i
                next if selecao == 's'
                system "clear"
                puts "Alterações realizadas com sucesso!!!"
                sleep(3)
                menu
            when 3
                print "Altere o telefone Ex.[DDD xxxx-xxxx]:"
                phone =  gets.chomp.to_s
                object.phone = phone.upcase
                object.change = "#{t.strftime("%d/%m/%Y %H:%M:%S")}"
                print "deseja fazer mais alterações?(s/n)"
                selecao = gets.chomp.to_s
                next if selecao == 's'
                system "clear"
                puts "Alterações realizadas com sucesso!!!"
                sleep(3)
                menu
            when 4
                print "Altere o nome do responsavel:"
                responsable =  gets.chomp.to_s
                object.responsable = responsable.upcase
                object.change = "#{t.strftime("%d/%m/%Y %H:%M:%S")}"
                print "deseja fazer mais alterações?(s/n)"
                selecao = gets.chomp.to_s
                next if selecao == 's'
                system "clear"
                puts "Alterações realizadas com sucesso!!!"
                sleep(3)
                menu
            when 5
                print "Altere o tipo de Usuario[Aluno]:"
                person =  gets.chomp.to_s
                object.person = person.upcase
                object.change = "#{t.strftime("%d/%m/%Y %H:%M:%S")}"
                print "deseja fazer mais alterações?(s/n)"
                selecao = gets.chomp.to_s
                next if selecao == 's'
                system "clear"
                puts "Alterações realizadas com sucesso!!!"
                sleep(3)
                menu
            when 6
                ano_atual = t.strftime("%Y")
                print "informe o ANO de nascimento. ex.1990:"
                ano_nascimento =  gets.chomp.to_i
                age = ano_atual.to_i - ano_nascimento
                object.age = age
                object.change = "#{t.strftime("%d/%m/%Y %H:%M:%S")}"
                print "deseja fazer mais alterações?(s/n)"
                selecao = gets.chomp.to_s
                next if selecao == 's'
                system "clear"
                puts "Alterações realizadas com sucesso!!!"
                sleep(3)
                menu
            when 0
                puts "Continuar editando as informações?(s/n)"
                selecao =gets.chomp.to_s
                next

            else
                puts "Opção inválida"
                next
            end

            return object
        end
    else
        puts"Aguarde..."
        sleep(3)
        return object
    end  
end

#====================  MAIN =====================
login
menu
print "Informe a opção desejada:"
option = gets.chomp.to_i
relacao = []
change = Time.now
#================================================
while option != 969 do
    case option
    when 1
        system "clear"
        times
        puts "|============================================================================================|"
        puts "|                         QUANTIDADE DE VAGAS NO SISTEMA:10"
        puts "|                         QUANTIDADE ALUNOS CADASTRADOS NO SISTEMA: #{relacao.length}"
        puts "|                                            MENU EDITAR"                  
        puts "|============================================================================================|"
        puts "|                                              ALUNOS                                        |"
        puts "|============================================================================================|"
        if relacao.length != 10
            check = false
            while check == false do
                menu
                puts "Digite nome do aluno completo:"
                name =  gets.chomp
                puts "sua idade:"
                age = gets.chomp.to_i
                menu
                id = gera_id(relacao)
                check = wait(name, age, check)
            end
            
            object = Pessoa.new(id,name.upcase,age,change.strftime("%d/%m/%Y %H:%M:%S"))
            relacao.push(object)
            menu
        else
            puts "Sistema Lotado, procure Administrador do sistema!"
        end
        texto_menu
        option = gets.chomp.to_i
    when 2
        system "clear"
        
        temp = []
        if relacao.length > 0
            system "clear"
            times
            puts "|============================================================================================|"
            puts "|                         QUANTIDADE ALUNOS CADASTRADOS NO SISTEMA: #{relacao.length}"
            puts "|                                            MENU LISTAR"                  
            puts "|============================================================================================|"
            puts "|                                              ALUNOS                                        |"
            puts "|============================================================================================|"
            relacao.each do |object|
                temp << object.id
            end
            temp = temp.sort
            temp.each do |indice|
                print "|COD:#{indice} |"
                relacao.each do |aluno|
                    next if aluno.id != indice
                    puts "ALUNO: #{aluno.name} "
                end
            end
        else
            puts "\n\nNenhum Aluno Cadastrado!"            
        end
        texto_menu
        option =  gets.chomp.to_i
    when 3
        system "clear"
        if relacao.length > 0
            times
            puts "|============================================================================================|"
            puts "|                         QUANTIDADE ALUNOS CADASTRADOS NO SISTEMA: #{relacao.length}"
            puts "|                                            MENU EDITAR"                  
            puts "|============================================================================================|"
            puts "|                                              ALUNOS                                        |"
            puts "|============================================================================================|"
            temp =[]
            relacao.each do |object|
                temp << object.id
            end
            temp = temp.sort
            temp.each do |indice|
                print "|COD:#{indice} |"
                relacao.each do |aluno|
                    next if aluno.id != indice
                    puts "ALUNO: #{aluno.name}"
                end
            end

            print "\n\nDigite o cod. para editar:"
            procura_id =  gets.chomp.to_i
  
            relacao.each do |aluno|
                next if aluno.id != procura_id
                aluno = layout(object)
            end
        else
            puts "\nNenhum Aluno Cadastrado!"     
        end
        texto_menu
        option =  gets.chomp.to_i   
    when 4
        system "clear"
            if relacao.length > 0
                times
                puts "|============================================================================================|"
                puts "|                         QUANTIDADE ALUNOS CADASTRADOS NO SISTEMA: #{relacao.length}"
                puts "|                                            MENU EXCLUIR"                  
                puts "|============================================================================================|"
                puts "|                                              ALUNOS                                        |"
                puts "|============================================================================================|"

                temp =[]
                relacao.each do |object|
                    temp << object.id
                end
                temp = temp.sort
                temp.each do |indice|
                    print "|COD:#{indice} |"
                    relacao.each do |aluno|
                        next if aluno.id != indice
                        puts "ALUNO: #{aluno.name}"
                    end
                end
       
            print "\n\nDIGITE COD. ALUNO PARA REMOVER| :"
            procura_id =  gets.chomp.to_i

            puts "deseja remover este usuario(y/n)"
            opcao = gets.chomp.to_s

            case opcao
            when "y"
                relacao.each do |aluno|
                    next if aluno.id != procura_id
                    relacao.delete(aluno)
                end
            else
                puts"Aguarde..."
                sleep(3)
                option = opcao
            end
        else
            puts "\nNenhum Aluno Cadastrado!"            
        end

        texto_menu
        option =  gets.chomp.to_i

    when 5
       print "Deseja sair do sistema?(y/n):"
       sair =  gets.chomp.to_s
       case sair
       when "y"
           logoff
        else 
            puts"Aguarde..."
            sleep(3)
            option = sair
        end
    else 
        menu
        print "informe a opcao desejada:"
        option = gets.chomp.to_i  
    end    
end