library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Emporium 2014"),
  
  fluidRow(
    
    column(3,
           selectInput("select", label = h3("Primera Categoria (Antecedente)", style ="color:#297418;"), 
                       choices =  vec_aux1[3:41]), tableOutput("text1_jd")),
    column(3,
           selectInput("select2", label = h3("Segunda Categoria (Consecuente)", style = "color:#dd21d5;"), 
                       choices =vec_aux1[3:41]), tableOutput("text2_jd")),
    
    
    
    sidebarLayout(
      sidebarPanel( "Segundo Semestre del año",
                    style = "color:#2183dd;",
                    tableOutput("text3_jd"),
                    tableOutput("text4_jd")
      ),
      mainPanel()
    )
  ),
  
  sidebarLayout(
    sidebarPanel( "Productos más vendidos",
                  textOutput("tablanamecat1_jd"),
                  style = "color:#297418;",
                  textOutput("tablaprobcat1_jd"),
                  textOutput("tablanamecat2_jd"),
                  textOutput("tablaprobcat2_jd"),
                  textOutput("tablanamecat3_jd"),
                  textOutput("tablaprobcat3_jd")),
    
    sidebarPanel( "Productos más vendidos",
                  textOutput("tabla1namecat1_jd"),
                  style = "color:#dd21d5;",
                  textOutput("tabla1probcat1_jd"),
                  textOutput("tabla1namecat2_jd"),
                  textOutput("tabla1probcat2_jd"),
                  textOutput("tabla1namecat3_jd"),
                  textOutput("tabla1probcat3_jd"))
  ),
  
  titlePanel("Julio"),
  sidebarLayout(
    sidebarPanel( "Resumen Julio",
                  style = "color:#2183dd;",
                  tableOutput("confidenceJulio"),
                  tableOutput("liftJulio")
    ),
    mainPanel()
  ),
  sidebarLayout(
    sidebarPanel( "Productos más vendidos",
                  textOutput("tablanamecat1Julio"),
                  style = "color:#297418;",
                  textOutput("tablaprobcat1Julio"),
                  textOutput("tablanamecat2Julio"),
                  textOutput("tablaprobcat2Julio"),
                  textOutput("tablanamecat3Julio"),
                  textOutput("tablaprobcat3Julio")),
    sidebarPanel("Productos más vendidos",
                 textOutput("tabla1namecat1Julio"),
                 style = "color:#dd21d5;",
                 textOutput("tabla1probcat1Julio"),
                 textOutput("tabla1namecat2Julio"),
                 textOutput("tabla1probcat2Julio"),
                 textOutput("tabla1namecat3Julio"),
                 textOutput("tabla1probcat3Julio"))
  ),
  titlePanel("Agosto"),
  sidebarLayout(
    sidebarPanel( "Resumen Agosto",
                  style = "color:#2183dd;",
                  tableOutput("confidenceAgosto"),
                  tableOutput("liftAgosto")
    ),
    mainPanel()
  ),
  
  sidebarLayout(
    sidebarPanel( "Productos más vendidos",
                  textOutput("tablanamecat1Agosto"),
                  style = "color:#297418;",
                  textOutput("tablaprobcat1Agosto"),
                  textOutput("tablanamecat2Agosto"),
                  textOutput("tablaprobcat2Agosto"),
                  textOutput("tablanamecat3Agosto"),
                  textOutput("tablaprobcat3Agosto")),
    
    
    sidebarPanel( "Productos más vendidos",
                  textOutput("tabla1namecat1Agosto"),
                  style = "color:#dd21d5;",
                  textOutput("tabla1probcat1Agosto"),
                  textOutput("tabla1namecat2Agosto"),
                  textOutput("tabla1probcat2Agosto"),
                  textOutput("tabla1namecat3Agosto"),
                  textOutput("tabla1probcat3Agosto"))
  ),
  
  titlePanel("Septiembre"),
  sidebarLayout(
    sidebarPanel( "Resumen Septiembre",
                  style = "color:#2183dd;",
                  tableOutput("confidenceSeptiembre"),
                  tableOutput("liftSeptiembre")
    ),
    mainPanel()
  ),
  
  sidebarLayout(
    sidebarPanel( "Productos más vendidos",
                  textOutput("tablanamecat1Septiembre"),
                  style = "color:#297418;",
                  textOutput("tablaprobcat1Septiembre"),
                  textOutput("tablanamecat2Septiembre"),
                  textOutput("tablaprobcat2Septiembre"),
                  textOutput("tablanamecat3Septiembre"),
                  textOutput("tablaprobcat3Septiembre")),
    
    
    sidebarPanel( "Productos más vendidos",
                  textOutput("tabla1namecat1Septiembre"),
                  style = "color:#dd21d5;",
                  textOutput("tabla1probcat1Septiembre"),
                  textOutput("tabla1namecat2Septiembre"),
                  textOutput("tabla1probcat2Septiembre"),
                  textOutput("tabla1namecat3Septiembre"),
                  textOutput("tabla1probcat3Septiembre"))
  ),
  
  titlePanel("Octubre"),
  sidebarLayout(
    sidebarPanel( "Resumen Octubre",
                  style = "color:#2183dd;",
                  tableOutput("confidenceOctubre"),
                  tableOutput("liftOctubre")
    ),
    mainPanel()
  ),
  
  sidebarLayout(
    sidebarPanel( "Productos más vendidos",
                  textOutput("tablanamecat1Octubre"),
                  style = "color:#297418;",
                  textOutput("tablaprobcat1Octubre"),
                  textOutput("tablanamecat2Octubre"),
                  textOutput("tablaprobcat2Octubre"),
                  textOutput("tablanamecat3Octubre"),
                  textOutput("tablaprobcat3Octubre")),
    
    sidebarPanel( "Productos más vendidos",
                  textOutput("tabla1namecat1Octubre"),
                  style = "color:#dd21d5;",
                  textOutput("tabla1probcat1Octubre"),
                  textOutput("tabla1namecat2Octubre"),
                  textOutput("tabla1probcat2Octubre"),
                  textOutput("tabla1namecat3Octubre"),
                  textOutput("tabla1probcat3Octubre"))
  ),
  
  titlePanel("Noviembre"),
  sidebarLayout(
    sidebarPanel( "Resumen Noviembre",
                  style = "color:#2183dd;",
                  tableOutput("confidenceNoviembre"),
                  tableOutput("liftNoviembre")
    ),
    mainPanel()
  ),
  
  sidebarLayout(
    sidebarPanel( "Productos más vendidos",
                  textOutput("tablanamecat1Noviembre"),
                  style = "color:#297418;",
                  textOutput("tablaprobcat1Noviembre"),
                  textOutput("tablanamecat2Noviembre"),
                  textOutput("tablaprobcat2Noviembre"),
                  textOutput("tablanamecat3Noviembre"),
                  textOutput("tablaprobcat3Noviembre")),
    
    sidebarPanel( "Productos más vendidos",
                  textOutput("tabla1namecat1Noviembre"),
                  style = "color:#dd21d5;",
                  textOutput("tabla1probcat1Noviembre"),
                  textOutput("tabla1namecat2Noviembre"),
                  textOutput("tabla1probcat2Noviembre"),
                  textOutput("tabla1namecat3Noviembre"),
                  textOutput("tabla1probcat3Noviembre"))
  ),
  
  titlePanel("Diciembre"),
  sidebarLayout(
    sidebarPanel( "Resumen Diciembre",
                  style = "color:#2183dd;",
                  tableOutput("confidenceDiciembre"),
                  tableOutput("liftDiciembre")
    ),
    mainPanel()
  ),
  
  sidebarLayout(
    sidebarPanel( "Productos más vendidos",
                  textOutput("tablanamecat1Diciembre"),
                  style = "color:#297418;",
                  textOutput("tablaprobcat1Diciembre"),
                  textOutput("tablanamecat2Diciembre"),
                  textOutput("tablaprobcat2Diciembre"),
                  textOutput("tablanamecat3Diciembre"),
                  textOutput("tablaprobcat3Diciembre")),
    
    sidebarPanel( "Productos más vendidos",
                  textOutput("tabla1namecat1Diciembre"),
                  style = "color:#dd21d5;",
                  textOutput("tabla1probcat1Diciembre"),
                  textOutput("tabla1namecat2Diciembre"),
                  textOutput("tabla1probcat2Diciembre"),
                  textOutput("tabla1namecat3Diciembre"),
                  textOutput("tabla1probcat3Diciembre"))
  )
  
  
  
))
