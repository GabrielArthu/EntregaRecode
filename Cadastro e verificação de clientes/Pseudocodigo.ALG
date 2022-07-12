Algoritmo "semnome"
// 
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 09/07/2022
Var
// Seção de Declarações das variáveis 
cad:vetor [1..7,1..3] de caracter
texto:vetor  [1..7] de caracter
i,j,l:inteiro
search:caracter
s:logico

tela:caracter
tecla:caracter

Inicio
 // Seção de Comandos, procedimento, funções, operadores, etc...
// ----------------------------Mensagens Imput----------------------------------
   texto[1] <- "nome"
   texto[2] <- "CPF"
   texto[3] <- "data de nscimento"
   texto[4] <- "destino-saída"
   texto[5] <- "data de saída"
   texto[6] <- "portão embarque"
   texto[7] <- "Código da passagem"
//-----------------------------Fim Mensagens------------------------------------


//-------------------------------Inicio Menu------------------------------------


repita
   limpatela
       Escreval("           ============================================")
       Escreval("           |                   MENU                   |")
       Escreval("           ============================================")
       Escreval("           | 1 = Cadastrar usuários                   |")
       Escreval("           | 2 = Exibir cadastros                     |")
       Escreval("           | 3 = Filtrar usuários por CPF             |")
       Escreval("           | 4 = Filtrar usuários por código          |")
       Escreval("           | 5 = FINALIZAR                            |")
       Escreval("           ============================================")
      leia(tela)
      
//----------------------------Cadastro Usuario--------------------------------
      se tela = "1" entao
          para i de 1 ate 3 passo 1 faca
               l<-1
               escreval("")
               escreval("--------Usuario Número",i,"------------")
               escreval("")
                           para j de 1 ate 7 passo 1 faca
                             escreval("Digite o ", texto[l]," do usuario:" )
                             leia(cad[j,i])
                             l<- l+1
                           fimpara
          fimpara
          
          escreval("        ============================================")
          escreval("        |            Usuarios cadastrados          |")
          escreval("        |               Precione ENTER             |")
          escreval("        ============================================")
      fimse

//-------------------------------Fim cadastro----------------------------------

//--------------------------Mostrar todos os unsuario--------------------------
      se  tela = "2" entao
            para i de 1 ate 3 faca
                 l<-1
                     para j de 1 ate 7 faca
                          escreval(texto[l],cad[j,i])
                          l<- l+1
                     fimpara
                 escreval("----------------Usuario Número",i,"---------------")
            fimpara
      fimse
 //-------------------------Fim mostrando todos os cadastros--------------------
 
 //---------------------------------Pesquisa usuarios---------------------------
       se  tela = "3" entao
             escreval("Qual o CPF do usuario: ")
             leia(search)
             i<- 1
                 enquanto cad[2,i] <> search faca
                          i<- i+1
                 fimenquanto
                            para j de 1 ate 7 faca
                                 escreval (cad[j,i])
                            fimpara
       fimse
       
//--------------------------------Fim pesquisa CPF------------------------------

//---------------------------Inicio Pesquisa por código-------------------------
      se  tela = "4" entao
            escreval("Qual o código da passagem: ")
            leia(search)
            i<- 1
                para i de 1 ate 3 faca
                     se cad[7,i] = search entao
                        para l de 1 ate 7 faca
                             escreval(cad[l,i])
                        fimpara
                     senao
                          s<- falso
                     fimse
                fimpara
                 se s = falso entao
                    escreva("Código incorreto ou invalido")
                    leia(tecla)
                 fimse
      fimse
//-------------------------Fim busca por codigo---------------------------------
      se  tela = "5" entao
            interrompa
      fimse
      
   leia (tecla)
ate falso


//------------------------------Fim Menu----------------------------------------

Fimalgoritmo