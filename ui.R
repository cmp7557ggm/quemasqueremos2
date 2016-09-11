library(shiny)
library(shinythemes)
shinyUI(navbarPage("Calculadora epidemiológica",theme = shinytheme("united"),
###################################################################################################                   
tabPanel("Riesgo relativo",
         tabsetPanel(type = "tabs",
                     tabPanel("2 niveles de exposición",                 
                              wellPanel(
                              fluidPage(                              
                              fluidRow(
                              h4(div("Completar la tabla",style="color:grey")),                             
                              
                     column(2,(numericInput("cexp",label="Enfermos expuestos",value = 69)),
                     (numericInput("cnoexp",label="Enfermos no expuestos",value = 100))),
                     
                     column(2,(numericInput("ncexp",label=" Sanos expuestos",value = 10263)),
                     (numericInput("nocnoexp",label=" Sanos no expuestos",value = 24008))),
                     
                     
                     column(8,strong(textOutput(("t1")))),
                     column(8,(verbatimTextOutput("r1")))
                     
                              )))),
                    
                   
                   tabPanel("3 niveles de exposición",
                            wellPanel(
                            fluidPage(                              
                            fluidRow( 
                                h4(div("Completar la tabla",style="color:grey")),                             
                                
                                column(2,(numericInput("cexpa",label="Enf. expuestos nivel I",value = 10)),
                                (numericInput("cexp2",label="Enf. expuestos nivel II",value = 10)),
                                (numericInput("cnoexpa",label="Enfermos no expuestos",value = 10))),
                                column(2,(numericInput("ncexpa",label=" Sanos expuestos nivel I",value = 45)),
                                (numericInput("ncexp2",label=" Sanos expuestos nivel II",value = 90)),
                                (numericInput("nocnoexpa",label=" Sanos no expuestos",value = 135))),
                                column(8,strong(textOutput(("t2"))),
                                       (verbatimTextOutput("r2"))),
                                column(8,strong(textOutput(("t2b"))),
                                       (verbatimTextOutput("r2b")))
                                
                                )))),
                              
                   tabPanel("4 niveles de exposición",
                            wellPanel(
                            fluidPage(                              
                            fluidRow( 
                                h4(div("Completar la tabla",style="color:grey")),                             
                                
                                column(2,(numericInput("cexpb",label="Enf. expuestos nivel I",value = 10)),
                                (numericInput("cexp2b",label="Enf. expuestos nivel II",value = 10)),
                                (numericInput("cexp3b",label="Enf. expuestos nivel III",value = 10)),
                                (numericInput("cnoexpb",label="Enfermos no expuestos",value = 10))),
                                
                                column(2,(numericInput("ncexpb",label=" Sanos expuestos nivel I",value = 30)),
                                (numericInput("ncexp2b",label=" Sanos expuestos nivel II",value = 40)),
                                (numericInput("ncexp3b",label=" Sanos expuestos nivel III",value = 60)),
                                (numericInput("nocnoexpb",label=" Sanos no expuestos",value = 100))),
                                column(8,strong(textOutput(("t3"))),
                                       (verbatimTextOutput("r3"))),
                                column(8,strong(textOutput(("t3b"))),
                                       (verbatimTextOutput("r3b"))),
                                column(8,offset=4,strong(textOutput(("t3c"))),
                                       (verbatimTextOutput("r3c")))
                                )))),
                              
                                                 
                   tabPanel("5 niveles de exposición",
                            wellPanel(
                            fluidPage(                              
                            fluidRow( 
                                h4(div("Completar la tabla",style="color:grey")),                             
                                
                                column(2,(numericInput("cexpc",label="Enf. expuestos nivel I",value = 10)),
                                (numericInput("cexp2c",label="Enf. expuestos nivel II",value = 10)),
                                (numericInput("cexp3c",label="Enf. expuestos nivel III",value = 10)),
                                (numericInput("cexp4c",label="Enf. expuestos nivel IV",value = 10)),
                                (numericInput("cnoexpc",label="Enfermos no expuestos",value = 10))),
                                column(2,(numericInput("ncexpc",label=" Sanos expuestos nivel I",value = 15)),
                                (numericInput("ncexp2c",label=" Sanos expuestos nivel II",value = 31)),
                                (numericInput("ncexp3c",label=" Sanos expuestos nivel III",value = 51)),
                                (numericInput("ncexp4c",label=" Sanos expuestos nivel IV",value = 71)),
                                (numericInput("nocnoexpc",label=" Sanos no expuestos",value = 101))),
                                
                                column(8,strong(textOutput(("t4"))),
                                       (verbatimTextOutput("r4"))),
                                column(8,strong(textOutput(("t4a"))),
                                       (verbatimTextOutput("r4a"))),
                                column(8,offset=4,strong(textOutput(("t4b"))),
                                       (verbatimTextOutput("r4b"))),
                                column(8,offset=4,strong(textOutput(("t4c"))),
                                       (verbatimTextOutput("r4c")))
                                
                                ))))                 
                              
                              
)
),
######################################################################################################
tabPanel("Odds ratio",
         tabsetPanel(type = "tabs",
                     tabPanel("2 niveles de exposición",
                              wellPanel(
                              fluidPage(                              
                              fluidRow(
                                    h4(div("Completar la tabla:",style="color:grey")),                             
                                    
                                    column(2,(numericInput("casoexp",label="Casos expuestos",value = 24)),
                                           (numericInput("casonoexp",label="Casos no expuestos",value = 36))),
                                    
                                    column(2,(numericInput("nocasoexp",label=" Controles expuestos",value = 58)),
                                           (numericInput("nocasonoexp",label=" Controles  no expuestos",value = 40))),
                                    
                                    
                                    column(8,strong(textOutput(("texto1")))),
                                    column(8,(verbatimTextOutput("resultado")))
                                    
                                  )))),
                     
                     tabPanel("3 niveles de exposición",
                              wellPanel(
                                fluidPage(                              
                                  fluidRow( 
                                    h4(div("Completar la tabla:",style="color:grey")),                             
                                    
                                    column(2,(numericInput("casoexpa",label="Casos expuesros nivel I",value = 9)),
                                           (numericInput("casoexp2",label="Casos expuestos nivel II",value = 15)),
                                           (numericInput("casonoexpa",label="Casos no expuestos",value = 24))),
                                    column(2,(numericInput("nocasoexpa",label=" No Casos expuestos nivel I",value = 58)),
                                           (numericInput("nocasoexp2",label=" No Casos expuestos nivel II",value = 8)),
                                           (numericInput("nocasonoexpa",label=" Controles  no expuestos",value = 50))),
                                    
                                    column(8,strong(textOutput(("texto2"))),
                                           (verbatimTextOutput("resultado2"))),
                                    column(8,strong(textOutput(("texto2b"))),
                                           (verbatimTextOutput("resultado2b")))
                                    
                                  )))),
                     tabPanel("4 niveles de exposición",
                              wellPanel(
                                fluidPage(                              
                                  fluidRow( 
                                    h4(div("Completar la tabla:",style="color:grey")),                            
                                    
                                    column(2,(numericInput("casoexpb",label="Casos expuestos nivel I",value = 10)),
                                           (numericInput("casoexp2b",label="Casos expuestos nivel II",value = 10)),
                                           (numericInput("casoexp3b",label="Casos expuestos nivel III",value = 10)),
                                           (numericInput("casonoexpb",label="Casos no expuestos",value = 10))),
                                    
                                    column(2,(numericInput("nocasoexpb",label=" No Casos expuestos nivel I",value = 31)),
                                           (numericInput("nocasoexp2b",label=" No Casos expuestos nivel II",value = 61)),
                                           (numericInput("nocasoexp3b",label=" No Casos expuestos nivel III",value = 91)),
                                           (numericInput("nocasonoexpb",label=" Controles  no expuestos",value = 211))),
                                    
                                    column(8,strong(textOutput(("texto3"))),
                                           (verbatimTextOutput("resultado3"))),
                                    column(8,strong(textOutput(("texto3b"))),
                                           (verbatimTextOutput("resultado3b"))),
                                    column(8,offset=4,strong(textOutput(("texto3c"))),
                                           (verbatimTextOutput("resultado3c")))
                                  )))),
                     tabPanel("5 niveles de exposición",
                              wellPanel(
                                fluidPage(                              
                                  fluidRow( 
                                    h4(div("Completar la tabla:",style="color:grey")),                            
                                    
                                    column(2,(numericInput("casoexpc",label="Casos expuestos nivel I",value = 10)),
                                           (numericInput("casoexp2c",label="Casos expuestos nivel II",value = 10)),
                                           (numericInput("casoexp3c",label="Casos expuestos nivel III",value = 10)),
                                           (numericInput("casoexp4c",label="Casos expuestos nivel IV",value = 10)),
                                           (numericInput("casonoexpc",label="Casos no expuestos",value = 10))),
                                    
                                    column(2,(numericInput("nocasoexpc",label=" No Casos expuestos nivel I",value = 10)),
                                           (numericInput("nocasoexp2c",label=" No Casos expuestos nivel II",value = 71)),
                                           (numericInput("nocasoexp3c",label=" No Casos expuestos nivel III",value = 81)),
                                           (numericInput("nocasoexp4c",label=" No Casos expuestos nivel IV",value = 91)),
                                           (numericInput("nocasonoexpc",label=" Controles  no expuestos",value = 171))),
                                    
                                    column(8,strong(textOutput(("texto4"))),
                                           (verbatimTextOutput("resultado4"))),
                                    column(8,strong(textOutput(("texto4a"))),
                                           (verbatimTextOutput("resultado4a"))),
                                    column(8,strong(textOutput(("texto4b"))),
                                           (verbatimTextOutput("resultado4b"))),
                                    column(8,offset=4,strong(textOutput(("texto4c"))),
                                           (verbatimTextOutput("resultado4c")))
                                    
                                  ))))                 
                     
         )),
#####################################################################################################
tabPanel("Razón de tasas",
         tabsetPanel(type = "tabs",
                    tabPanel("2 niveles de exposición",
                             wellPanel(
                               fluidPage(                              
                                 fluidRow(
                                   h4(div("Completar la tabla:",style="color:grey")),                             
                                   
                                   column(2,(numericInput("c1exp",label="Casos expuestos",value = 204)),
                                          (numericInput("c1noexp",label="Casos no expuestos",value = 240))),
                                   
                                   column(2,(numericInput("praexp",label=" Personas/tiempo expuestos.",value = 94029)),
                                          (numericInput("pranoexp",label="Personas/tiempo no exp.",value = 128528))),
                                   
                                   
                                   column(8,strong(textOutput(("text1")))),
                                   column(8,(verbatimTextOutput("res")))
                                   
                                 )))),
                    
                    tabPanel("3 niveles de exposición",
                             wellPanel(
                               fluidPage(                              
                                 fluidRow( 
                                   h4(div("Completar la tabla:",style="color:grey")),                             
                                   
                                   column(2,(numericInput("c1expa",label="Casos expuestos nivel I",value = 67)),
                                          (numericInput("c1exp2",label="Casos expuestos nivel II",value = 99)),
                                          (numericInput("c1noexpa",label="Casos no expuestos",value = 114))),
                                   column(2,(numericInput("praexpa",label="Personas/tiempo nivel I",value = 1200)),
                                          (numericInput("praexp2",label="Personas/tiempo nivel II",value = 1400)),
                                          (numericInput("pranoexpa",label=" Personas/tiempo no exp.",value = 1500))),
                                   
                                   column(8,strong(textOutput(("text2"))),
                                          (verbatimTextOutput("res2"))),
                                   column(8,strong(textOutput(("text2b"))),
                                          (verbatimTextOutput("res2b")))
                                   
                                 )))),
                    tabPanel("4 niveles de exposición",
                             wellPanel(
                               fluidPage(                              
                                 fluidRow( 
                                   h4(div("Completar la tabla:",style="color:grey")),                            
                                   
                                   column(2,(numericInput("c1expb",label="Casos expuestos nivel I",value = 10)),
                                          (numericInput("c1exp2b",label="Casos expuestos nivel II",value = 19)),
                                          (numericInput("c1exp3b",label="Casos expuestos nivel III",value = 31)),
                                          (numericInput("c1noexpb",label="Casos no expuestos",value = 41))),
                                   
                                   column(2,(numericInput("praexpb
                                                          ",label=" Personas/tiempo nivel I",value = 300)),
                                          (numericInput("praexp2b",label=" Personas/tiempo nivel II",value = 312)),
                                          (numericInput("praexp3b",label=" Personas/tiempo nivel III",value = 432)),
                                          (numericInput("pranoexpb",label=" Personas/tiempo no exp.",value = 324))),
                                   
                                   column(8,strong(textOutput(("text3"))),
                                          (verbatimTextOutput("res3"))),
                                   column(8,strong(textOutput(("text3b"))),
                                          (verbatimTextOutput("res3b"))),
                                   column(8,offset=4,strong(textOutput(("text3c"))),
                                          (verbatimTextOutput("res3c")))
                                   )))),
                    tabPanel("5 niveles de exposición",
                             wellPanel(
                               fluidPage(                              
                                 fluidRow( 
                                   h4(div("Completar la tabla:",style="color:grey")),                            
                                   
                                   column(2,(numericInput("c1expc",label="Casos expuestos nivel I",value = 10)),
                                          (numericInput("c1exp2c",label="Casos expuestos nivel II",value = 10)),
                                          (numericInput("c1exp3c",label="Casos expuestos nivel III",value = 10)),
                                          (numericInput("c1exp4c",label="Casos expuestos nivel IV",value = 10)),
                                          (numericInput("c1noexpc",label="Casos no expuestos",value = 10))),
                                   
                                   column(2,(numericInput("praexpc",label="Personas/tiempo nivel I",value = 1000)),
                                          (numericInput("praexp2c",label="Personas/tiempo nivel II",value = 2000)),
                                          (numericInput("praexp3c",label=" Personas/tiempo nivel III",value = 3000)),
                                          (numericInput("praexp4c",label=" Personas/tiempo nivel IV",value = 4000)),
                                          (numericInput("pranoexpc",label=" Personas/tiempo no exp.",value = 5000))),
                                   
                                   column(8,strong(textOutput(("text4"))),
                                          (verbatimTextOutput("res4"))),
                                   column(8,strong(textOutput(("text4a"))),
                                          (verbatimTextOutput("res4a"))),
                                   column(8,strong(textOutput(("text4b"))),
                                          (verbatimTextOutput("res4b"))),
                                   column(8,offset=4,strong(textOutput(("text4c"))),
                                          (verbatimTextOutput("res4c")))
                                   
                                 ))))                 
                    
         )),
########################################################################################################
tabPanel(" OR Análisis estratificado",
         tabsetPanel(type = "tabs",
                     tabPanel("2 estratos", 
                              fixedPage(
                                wellPanel(
                                  fixedRow(width = 12,
                                           column(width = 12,br(),h4("Completar las tablas:")),br(),br(),
                                           
                                           column(2,(h4(div("Tabla cruda",style="color:grey"))),
                                                  
                                                  (numericInput("cexpestra",label="Casos expuestos",value = 24)),
                                                  (numericInput("cnoexpestra",label="Casos no expuestos",value = 36)),
                                                  
                                                  
                                                  h4(div("Estrato 1",style="color:grey")),
                                                  (numericInput("cexpe1",label="Casos en expuestos",value = 9)),
                                                  (numericInput("cnoexpe1",label="Casos no expuestos",value = 32)),
                                                  
                                                  h4(div("Estrato 2",style="color:grey")),
                                                  
                                                  (numericInput("cexpe2",label="Casos en expuestos",value = 15)),
                                                  (numericInput("cnoexpe2",label="Casos no expuestos",value = 4))),
                                           
                                           column(2,h4(br()),
                                                  (numericInput("ncexpestra",label=" Controles expuestos",value = 58)),
                                                  (numericInput("nocnoexpestra",label=" Controles  no expuestos",value = 40)),
                                                  h4(br()),
                                                  (numericInput("ncexpe1",label=" Controles expuestos",value = 8)),
                                                  (numericInput("nocnoexpe1",label=" Controles  no expuestos",value = 28)),
                                                  h4(br()),
                                                  (numericInput("ncexpe2",label=" Controles expuestos",value = 50)),
                                                  (numericInput("nocnoexpe2",label=" Controles  no expuestos",value = 12))),
                                           
                                           
                                           column(8,h4(br()),
                                                  strong(textOutput(("te1"))),
                                                  (verbatimTextOutput("re1")),
                                                  strong(textOutput(("te2aa"))),
                                                  (verbatimTextOutput("re2")),
                                                  p(" ** Este espacio esta reservado "),
                                                  strong(textOutput(("te2"))),
                                                  (verbatimTextOutput("re2aa")))
                                           
                                           
                                           
                                           
                                  )))),
                     
                     
                     tabPanel("3 estratos",
                              fixedPage(
                                wellPanel(
                                  fixedRow(width = 12,
                                           column(width = 12,br(),h4("Completar las tablas:")),br(),br(),
                                           
                                           column(2,(h4(div("Tabla cruda",style="color:grey"))),
                                                  
                                                  (numericInput("cexp3",label="Casos expuestos",value = 20)),
                                                  (numericInput("cnoexp3",label="Casos no expuestos",value = 20)),
                                                  
                                                  
                                                  h4(div("Estrato 1",style="color:grey")),
                                                  (numericInput("cexpe4",label="Casos en expuestos",value = 5)),
                                                  (numericInput("cnoexpe4",label="Casos no expuestos",value = 10)),
                                                  
                                                  h4(div("Estrato 2",style="color:grey")),
                                                  
                                                  (numericInput("cexpe5",label="Casos en expuestos",value = 10)),
                                                  (numericInput("cnoexpe5",label="Casos no expuestos",value = 15)),
                                                  
                                                  h4(div("Estrato 3",style="color:grey")),
                                                  
                                                  (numericInput("cexpe6",label="Casos en expuestos",value = 1)),
                                                  (numericInput("cnoexpe6",label="Casos no expuestos",value = 8))),
                                           
                                           column(2,h4(br()),
                                                  (numericInput("ncexp3",label=" Controles expuestos",value = 200)),
                                                  (numericInput("nocnoexp3",label=" Controles no expuestos",value = 300)),
                                                  h4(br()),
                                                  (numericInput("ncexpe4",label=" Controles expuestos",value = 100)),
                                                  (numericInput("nocnoexpe4",label=" Controles  no expuestos",value = 150)),
                                                  h4(br()),
                                                  (numericInput("ncexpe5",label=" Controles expuestos",value = 100)),
                                                  (numericInput("nocnoexpe5",label=" Controles  no expuestos",value = 150)),
                                                  h4(br()),
                                                  (numericInput("ncexpe6",label=" Controles expuestos",value = 100)),
                                                  (numericInput("nocnoexpe6",label=" Controles  no expuestos",value = 100))),
                                           
                                           column(8,h4(br()),
                                                  strong(textOutput(("te3"))),
                                                  (verbatimTextOutput("re3")),
                                                  strong(textOutput(("te4aa"))),
                                                  (verbatimTextOutput("re4")),
                                                  p(" ** Este espacio esta reservado "),
                                                  strong(textOutput(("te4"))),
                                                  (verbatimTextOutput("re4aa"))))
                                  
                                  
                                  
                                  
                                  
                                ))))
         
         
         
         
),
###################################################################################################################
tabPanel("RT Analisis estratificado",
         tabsetPanel(type = "tabs",
                     tabPanel("2 estratos",                 
                              fixedPage(
                                wellPanel(
                                  fixedRow(width = 12,
                                           column(width = 12,br(),h4("Completar las tablas:")),br(),br(),
                                           
                                           column(2,(h4(div("Tabla cruda",style="color:grey"))),
                                                  
                                                  (numericInput("ce",label="Enfermos expuestos",value = 60)),
                                                  (numericInput("cnoe",label="Enfermos no exp",value = 100)),
                                                  h4(div("Estrato 1",style="color:grey")),
                                                  (numericInput("ce1",label="Enfermos en expuestos",value = 25)),
                                                  (numericInput("cnoe1",label="Enfermos no exp",value = 50)),
                                                  h4(div("Estrato 2",style="color:grey")),
                                                  (numericInput("ce2",label="Enfermos en expuestos",value = 30)),
                                                  (numericInput("cnoe2",label="Enfermos no exp",value = 60))),
                                           
                                           column(2,h4(br()),
                                                  (numericInput("pte",label=" Personas/tiempo exp",value = 1500)),
                                                  (numericInput("ptnoe",label=" Personas/tiempo no exp",value = 1500)),
                                                  h4(br()),      
                                                  (numericInput("pte1",label=" Personas/tiempo exp",value = 1000)),
                                                  (numericInput("ptnoe1",label=" Personas/tiempo no exp",value = 1000)),
                                                  h4(br()), 
                                                  (numericInput("pte2",label=" Personas/tiempo exp",value = 500)),
                                                  (numericInput("ptnoe2",label=" Personas/tiempo no exp",value = 500))),
                                           
                                           column(8,h4(br()),
                                                  strong(textOutput(("tcmp1"))),
                                                  (verbatimTextOutput("rcmp1")),
                                                  strong(textOutput(("tcmp2aa"))),
                                                  (verbatimTextOutput("rcmp2")),
                                                  p(" ** Este espacio esta reservado "),
                                                  strong(textOutput(("tcmp2"))),
                                                  (verbatimTextOutput("rcmp2aa")))
                                           
                                           
                                  )))),
                     
                     
                     tabPanel("3 estratos",
                              fixedPage(
                                wellPanel(
                                  fixedRow(width = 12,
                                           column(width = 12,br(),h4("Completar las tablas:")),br(),br(),
                                           
                                           column(2,(h4(div("Tabla cruda",style="color:grey"))),
                                                  
                                                  (numericInput("ce3",label="Enfermos expuestos",value =200)),
                                                  (numericInput("cnoe3",label="Enfermos no exp",value = 100)),
                                                  
                                                  h4(div("Estrato 1",style="color:grey")),
                                                  (numericInput("ce4",label="Enfermos en expuestos",value = 100)),
                                                  (numericInput("cnoe4",label="Enfermos no exp",value = 50)),
                                                  
                                                  h4(div("Estrato 2",style="color:grey")),
                                                  (numericInput("ce5",label="Enfermos en expuestos",value = 50)),
                                                  (numericInput("cnoe5",label="Enfermos no exp",value = 25)),
                                                  
                                                  h4(div("Estrato 3",style="color:grey")),
                                                  (numericInput("ce6",label="Enfermos en expuestos",value = 50)),
                                                  (numericInput("cnoe6",label="Enfermos no exp",value = 25))),
                                           
                                           column(2,h4(br()),
                                                  (numericInput("pte3",label=" Personas/tiempo exp",value = 1500)),
                                                  (numericInput("ptnoe3",label=" Personas/tiempo no exp",value = 1600)),
                                                  h4(br()),
                                                  (numericInput("pte4",label=" Personas/tiempo exp",value = 500)),
                                                  (numericInput("ptnoe4",label=" Personas/tiempo no exp",value = 500)),
                                                  h4(br()),
                                                  (numericInput("pte5",label=" Personas/tiempo exp",value = 500)),
                                                  (numericInput("ptnoe5",label=" Personas/tiempo no exp",value = 500)),
                                                  h4(br()),
                                                  (numericInput("pte6",label=" Personas/tiempo exp",value = 500)),
                                                  (numericInput("ptnoe6",label=" Personas/tiempo no exp",value = 500))),
                                           
                                           column(8,h4(br()),
                                                  strong(textOutput(("tcmp3"))),
                                                  (verbatimTextOutput("rcmp3")),
                                                  strong(textOutput(("tcmp4aa"))),
                                                  (verbatimTextOutput("rcmp4")),
                                                  p(" ** Este espacio esta reservado "),
                                                  strong(textOutput(("tcmp4"))),
                                                  (verbatimTextOutput("rcmp4aa"))))
                                  
                                  
                                  
                                  
                                  
                                  
                                ))))),
############################################################################################
tabPanel("Pruebas diagnósticas",
         tabsetPanel(type = "tabs",
                     tabPanel("Validez de la prueba",                 
                              wellPanel(
                                fluidPage(                              
                                  fluidRow(
                                    h4(div("Completar la tabla",style="color:grey")),                             
                                    
                                    column(2,(numericInput("vp",label="Verdaderos Positivos",value = 89)),
                                           (numericInput("fn",label="Falsos negativos",value = 3))),
                                    column(2,(numericInput("fp",label=" Falsos positivos",value = 7)),
                                           (numericInput("vn",label="Verdaderos negativos",value = 99))),
                                    column(8,strong(textOutput(("cmp1")))),
                                    column(8,(verbatimTextOutput("cmp2")))
                                    
                                  )))))
),
###########################################################################################################
tabPanel("Estandarización de tasas",
         tabsetPanel(type = "tabs",
                     tabPanel("Entrada de datos método directo",  
                              fixedPage(
                                wellPanel(
                                  fixedRow(width = 3,
                                           column(width = 12,br(),h3("Tabla de introducción de datos para estandarización de tasas método directo")),br(),br(),
                                           
                                           column(width = 2, h4("GRUPOS ETARIOS"),selectInput("ngrupos",label = "N de grupos de edad",
                                                                                              choices = list("0"=0,"3" = 3, "5" = 5, "7" = 7,"8"=8),selected = 0),
                                                  h4("TIPODE TASA"),selectInput("tipotasa","Tasa por:",choices = list("cien" = 100, "mil" = 1000, "cienmil" = 100000), 
                                                                                selected = 1000),
                                                  br(),br(),paste(" Introducir los casos y los habitantes para cada una de las poblaciones a comparar.                     ")),
                                           column(width = 10, uiOutput("param")) )))), 
                     
                     tabPanel("método directo P. Europea",
                              br(),fluidRow(
                                h3(column(5,offset=4,paste("Ajuste por población europea"))),br(),
                                
                                h4(column(5,offset=1,paste("población 1"))),
                                h4(column(5,offset=1,paste("población 2"))),br(),
                                h4(column(5,offset=1,textOutput("gedad1"))),
                                h4(column(5,offset=1,textOutput("gedad2"))),
                                br(),fluidRow(
                                  column(5,offset=1,tableOutput("tabla1")),
                                  column(5,offset=1,tableOutput("tabla2"))),
                                h6(column(5,offset=1,textOutput("comentario1"))),
                                h6(column(5,offset=1,textOutput("comentario2"))),
                                br(),fluidRow(
                                  h4(column(5,offset=1,textOutput("brutas1"))),
                                  h4(column(5,offset=1,textOutput("brutas2"))),br(),
                                  h4(column(5,offset=1,textOutput("ajustadas1"))),
                                  h4(column(5,offset=1,textOutput("ajustadas2")))),
                                fluidRow(
                                  h4(column(5,offset=1,textOutput("ajustadas3"))),
                                  h4(column(5,offset=1,textOutput("ajustadas4")))),
                                br(),fluidRow(wellPanel(
                                  h4(column(5,offset=3,textOutput("ric")))))
                              )), 
                     tabPanel("método directo P. Mundial",
                              br(),fluidRow(
                                h3(column(5,offset=4,paste("Ajuste por población mundial"))),br(),
                                h4(column(5,offset=1,paste("población 1"))),
                                h4(column(5,offset=1,paste("población 2"))),br(),
                                h4(column(5,offset=1,textOutput("gedad1a"))),
                                h4(column(5,offset=1,textOutput("gedad2a"))),
                                br(),fluidRow(
                                  column(5,offset=1,tableOutput("tabla1a")),
                                  column(5,offset=1,tableOutput("tabla2a"))),
                                h6(column(5,offset=1,textOutput("comentario1a"))),
                                h6(column(5,offset=1,textOutput("comentario2a"))),
                                br(),fluidRow(
                                  h4(column(5,offset=1,textOutput("brutas1a"))),
                                  h4(column(5,offset=1,textOutput("brutas2a"))),br(),
                                  h4(column(5,offset=1,textOutput("ajustadas1a"))),
                                  h4(column(5,offset=1,textOutput("ajustadas2a")))),
                                fluidRow(
                                  h4(column(5,offset=1,textOutput("ajustadas3a"))),
                                  h4(column(5,offset=1,textOutput("ajustadas4a")))),
                                br(),fluidRow(wellPanel(
                                  h4(column(5,offset=3,textOutput("rica")))))
                              )
                              
                     ),
                     tabPanel("Entrada de datos método indirecto",  
                              fixedPage(
                                wellPanel(
                                  fixedRow(width = 3,
                                           column(width = 12,br(),h3("Tabla de introducción de datos para estandarización por el método indirecto")),br(),br(),
                                           
                                           column(width = 2, h4("GRUPOS ETARIOS"),selectInput("ngrupos2",label = "N de grupos de edad",
                                                                                              choices = list("0"=0,"3" = 3, "5" = 5, "7" = 7,"8"=8),selected = 0),
                                                  h4("TIPODE TASA"),selectInput("tipotasa2","Tasa por:",choices = list("cien" = 100, "mil" = 1000, "cienmil" = 100000), 
                                                                                selected = 1000),
                                                  br(),br(),paste(" Introducir los casos y los habitantes para la población de referencia")),
                                           column(width = 10, uiOutput("param2")) )))),  
                     tabPanel("método Indirecto",
                              fluidPage(
                                br(),
                                h5(column(5,offset=1,numericInput("casos1","Introducir los casos totales en la población de estudio",value=100))),
                                br(),
                                h4(column(5,offset=1,textOutput("creferencia"))),
                                br(),h4(column(5,offset=1,textOutput("salida"))),
                                
                                br(),br(),h4(column(5,offset=1,textOutput("explicaciÃ³n"))),
                                br(),fluidRow(
                                  column(5,offset=1,tableOutput("tindirec")),
                                  br(), h4(column(5,offset=1,textOutput("texindirect"))),
                                  br(),h4(column(5,offset=1,textOutput("texindirect2")))             
                                )  
                                
                              ))
                     
                     
         ))

))

