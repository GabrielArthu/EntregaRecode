Algoritmo "Cadastro"
// Autor(a)    : Gabriel Arthur Rezende Souza
Var
// Se��o de Declara��es das vari�veis 
cad:vetor [1..7,1..3] de caracter
texto:vetor  [1..7] de caracter
i,j,l:inteiro
search:caracter
s:logico

tela:caracter
tecla:caracter

Inicio
 // Se��o de Comandos, procedimento, fun��es, operadores, etc...
// ----------------------------Mensagens Imput----------------------------------
   texto[1] <- "nome"
   texto[2] <- "CPF"
   texto[3] <- "data de nscimento"
   texto[4] <- "destino-sa�da"
   texto[5] <- "data de sa�da"
   texto[6] <- "port�o embarque"
   texto[7] <- "C�digo da passagem"
//-----------------------------Fim Mensagens------------------------------------


//-------------------------------Inicio Menu------------------------------------


repita
   limpatela
       Escreval("           ============================================")
       Escreval("           |                   MENU                   |")
       Escreval("           ============================================")
       Escreval("           | 1 = Cadastrar usu�rios                   |")
       Escreval("           | 2 = Exibir cadastros                     |")
       Escreval("           | 3 = Filtrar usu�rios por CPF             |")
       Escreval("           | 4 = Alterar usu�rio                      |")
       Escreval("           | 5 = FINALIZAR                            |")
       Escreval("           ============================================")
      leia(tela)
      
//----------------------------Cadastro Usuario--------------------------------
      se tela = "1" entao
          para i de 1 ate 3 passo 1 faca
               l<-1
               escreval("")
               escreval("--------Usuario N�mero",i,"------------")
               escreval("                                       ")
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
                          escreval("------  ",texto[l],": ",cad[j,i],"-----")
                          l<- l+1
                     fimpara
                 escreval("----------------Usuario N�mero",i,"---------------")
            fimpara
       fimse
 //-------------------------Fim mostrando todos os cadastros--------------------
 
 //---------------------------------Pesquisa usuarios---------------------------
        se (tela = "3") entao
         s <- verdadeiro
             escreval("---------------Qual o CPF do usuario: -----------------------")
             leia(search)

             para i de 1 ate 3 faca
	               se search = cad[2,i] entao
		               para j de 1 ate 7 faca
		                    escreval("------  ",texto[j],"                 : ",cad[j,i]," ---------")
                     fimpara

                 senao
                   s <- falso

                 fimse
              fimpara
              se s = falso entao
               escreval("Cpf invalido ou inesistente!!")
              fimse
       fimse
//--------------------------------Fim pesquisa CPF------------------------------

//---------------------------Mudar usuario------------------------
         se tela = "4" entao
            escreval("     =========== Qual usuario deseja mudar? ============")
            escreval("                      [1]  Primeiro usu�rio             ")
            escreval("                      [2]  Segundo usu�rio              ")
            escreval("                      [3]  Terceiro usu�rio             ")
            leia(i)
                   para j de 1 ate 7 faca
                        escreval("Digite o ", texto[j]," do usuario:" )
                        leia(cad[j,i])
                        j<- j+1
                  fimpara


            fimse
//-------------------------Fim Mudar usuario---------------------------------
      se tela = "5" entao
            interrompa
      fimse
      
   leia (tecla)

ate falso


//------------------------------Fim Menu----------------------------------------

Fimalgoritmo
