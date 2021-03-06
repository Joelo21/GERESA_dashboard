tab_files <- list.files(path = "tabs/ui/provincial", full.names = T)
suppressMessages(lapply(tab_files, source))

provincial <- tabPanel(title = "Nivel Provincial", 
                     value = "provincial",
                     br(),
                     HTML("<h1><center>Analisis de la Pandemia por COVID-19</center></h1>"),
                     column(width = 12,
                            br(), br(),
                            wellPanel(
                              HTML("El Analisis de la Pandemia por COVID-19 muestra, de forma clara y directa,
                          informacion relevante sobre la situacion COVID en la region Cusco,
                          para esto se presentan graficos interactivos a nivel regional,
                          provincial y distrital.</h4>"))
                            ),
                            br(),

                     fluidRow(
                       box(title = span(icon("magic"), " Seleccione una provincia"),
                         width = 12, uiOutput("selector_prov"), status = "info")
                     ),
                     
                     fluidRow(
                       tabBox(width = 12,
                         title = h4(strong("Semaforo COVID")),
                         id = "tab_semaforo_prov",
                         tabPanel("Tasa de positividad molecular",
                                  tabsetPanel(
                                    tabPanel("Grafico", dygraphOutput("dygraph_prov_positividad_molecular"),
                                             h4(strong("Descripcion de los ejes")),
                                             p(div(strong("Eje Y: "), em("Tasa de positividad de pruebas moleculares (promedio de 7 Dias)."), style = "color:blue")),
                                             p(div(strong("Eje X: "), em("Dias."), style = "color:blue"), "El primer dia de la serie corresponde al 13/03/2020, fecha en la cual se reporta
                                          el primer caso confirmado por COVID-19 en la region.")
                                          ),
                                    tabPanel("Resumen", "El Semaforo COVID-19 de tasa de positividad molecular muestra
                               el nivel de riesgo respecto al numero total de personas infectadas por muestras moleculares procesadas
                               por COVID-19.", br(), br(),
                                             p("El color", strong("rojo"), "representa un nivel elevado de riesgo, en esta zona
las precauciones aumentan. En esta zona el nivel y velocidad de contagio por muestras moleculares es mucho mas elevada.
Se recomienda salir de casa solo en casos excepcionales y tomando muy en cuenta las medidas
de seguridad sanitaria. ", br(), br(),
                                               "El color", strong("amarillo"), "representa un nivel de riesgo moderado. Aunque el riesgo aun se mantiene, se pueden realizar mas
actividades, siempre tomando en consideracion las medidas de seguridad sanitaria.", br(), br(),
                                               "El color", strong("verde"), "representa que el nivel de riesgo no es tan elevado respecto a los
otros colores. En todo momento se deberian tomar en cuenta las medidas de seguridad sanitaria. 
"))
                                  )),
                         
                         
#                          tabPanel("Tasa de positividad antigenica",
#                                   tabsetPanel(
#                                     tabPanel("Grafico", dygraphOutput("dygraph_prov_positividad_antigenica"),
#                                              h4(strong("Descripcion de los ejes")),
#                                              p(div(strong("Eje Y: "), em("Tasa de positividad de pruebas antigenicas (promedio de 7 Dias)."), style = "color:blue")),
#                                              p(div(strong("Eje X: "), em("Dias."), style = "color:blue"), "El primer dia de la serie corresponde al 13/03/2020, fecha en la cual se reporta
#                                           el primer caso confirmado por COVID-19 en la region.")),
#                                     tabPanel("Resumen", "El Semaforo COVID-19 de tasa de positividad antigenica muestra
#                                el nivel de riesgo respecto al numero total de personas infectadas por muestras moleculares procesadas
#                                por COVID-19.", br(), br(),
#                                              p("El color", strong("rojo"), "representa un nivel elevado de riesgo, en esta zona
# las precauciones aumentan. En esta zona el nivel y velocidad de contagio por muestras moleculares es mucho mas elevada.
# Se recomienda salir de casa solo en casos excepcionales y tomando muy en cuenta las medidas
# de seguridad sanitaria. ", br(), br(),
#                                                "El color", strong("amarillo"), "representa un nivel de riesgo moderado. Aunque el riesgo aun se mantiene, se pueden realizar mas
# actividades, siempre tomando en consideracion las medidas de seguridad sanitaria.", br(), br(),
#                                                "El color", strong("verde"), "representa que el nivel de riesgo no es tan elevado respecto a los
# otros colores. En todo momento se deberian tomar en cuenta las medidas de seguridad sanitaria. 
# "))
#                                   )),
#                          
                         
                         tabPanel("Casos",
                                  tabsetPanel(
                                    tabPanel("Grafico", dygraphOutput("dygraph_prov_new_cases"),
                                             h4(strong("Descripcion de los ejes")),
                                             p(div(strong("Eje Y: "), em("Tasa de positividad de pruebas moleculares (promedio de 7 Dias)."), style = "color:blue")),
                                             p(div(strong("Eje X: "), em("Dias."), style = "color:blue"), "El primer dia de la serie corresponde al 13/03/2020, fecha en la cual se reporta
                                          el primer caso confirmado por COVID-19 en la region.")
                                    ),
                                    tabPanel("Resumen", "El Semaforo COVID-19 de casos muestra
                               el nivel de riesgo respecto al numero total de contagiados
                               por COVID-19.", br(), br(),
                                             p("El color", strong("rojo"), "representa un nivel elevado de riesgo, en esta zona
las precauciones aumentan. En esta zona el nivel y velocidad de contagio es mucho mas elevada.
Se recomienda salir de casa solo en casos excepcionales y tomando muy en cuenta las medidas
de seguridad sanitaria. ", br(), br(),
                                               "El color", strong("amarillo"), "representa un nivel de riesgo moderado. Aunque el riesgo aun se mantiene, se pueden realizar mas
actividades, siempre tomando en consideracion las medidas de seguridad sanitaria.", br(), br(),
                                               "El color", strong("verde"), "representa que el nivel de riesgo no es tan elevado respecto a los
otros colores. En todo momento se deberian tomar en cuenta las medidas de seguridad sanitaria. 
"))
                                    )),
                         tabPanel("Defunciones",
                                  tabsetPanel(
                                    tabPanel("Grafico", dygraphOutput("dygraph_prov_new_deaths"),
                                             h4(strong("Descripcion de los ejes")),
                                             p(div(strong("Eje Y: "), em("Tasa de positividad de pruebas moleculares (promedio de 7 Dias)."), style = "color:blue")),
                                             p(div(strong("Eje X: "), em("Dias."), style = "color:blue"), "El primer dia de la serie corresponde al 13/03/2020, fecha en la cual se reporta
                                          el primer caso confirmado por COVID-19 en la region.")
                                    ),
                                    tabPanel("Resumen", "El Semaforo COVID-19 de casos muestra
                               el nivel de riesgo respecto al numero total de contagiados
                               por COVID-19.", br(), br(),
                                             p("El color", strong("rojo"), "representa un nivel elevado de riesgo, en esta zona
las precauciones aumentan. En esta zona el nivel y velocidad de contagio es mucho mas elevada.
Se recomienda salir de casa solo en casos excepcionales y tomando muy en cuenta las medidas
de seguridad sanitaria. ", br(), br(),
                                               "El color", strong("amarillo"), "representa un nivel de riesgo moderado. Aunque el riesgo aun se mantiene, se pueden realizar mas
actividades, siempre tomando en consideracion las medidas de seguridad sanitaria.", br(), br(),
                                               "El color", strong("verde"), "representa que el nivel de riesgo no es tan elevado respecto a los
otros colores. En todo momento se deberian tomar en cuenta las medidas de seguridad sanitaria. 
"))
                                  )))
                         # tabPanel("Comparativo Casos",dygraphOutput("dygraph_prov_comparativo_casos")),
                         # tabPanel("Comparativo Defunciones",dygraphOutput("dygraph_prov_comparativo_defunciones")),
                         # tabPanel("Comparativo Positividad Molecular",dygraphOutput("dygraph_prov_comparativo_posimolecular")))
                     ),
                     
                     fluidRow(
                       box(title = "Casos acumulados de Covid-19", dygraphOutput("plot3_prov"), textOutput("legend_plot3_prov")))
                       # box(title = "Casos acumulados de Covid-19 (II)", dygraphOutput("plot4_prov"), textOutput("legend_plot4_prov"))
                       

)