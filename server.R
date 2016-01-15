#Segundo Semestre
#install.packages("shiny")
library(shiny)

shinyServer(function(input, output) {
  

  output$text1_jd <- renderPrint({ 
  x<-input$select
  paste(x, round(a_matrix_jd[x,x], digits=4))
  
})

  output$text2_jd <- renderPrint({ 
  y<-input$select2
  paste(y,round(a_matrix_jd[y,y], digits=4))
  
})  

  output$text3_jd<-renderPrint({
  x<-input$select
  y<-input$select2
  paste("Confidence",round(a_matrix_jd[x,y]/a_matrix_jd[x,x], digits=4))
})

  output$text4_jd<-renderPrint({
  x<-input$select
  y<-input$select2
  paste("Lift",round(round(a_matrix_jd[x,y]/a_matrix_jd[x,x], digits=4)/round(a_matrix_jd[y,y], digits=4),digits=4))
})

  output$tablanamecat1_jd<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_jd,
                               Jul_Dic.Categoriaf3==input$select,
                               select=c(Jul_Dic.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:5){
    nam[i]<-names(t[i])
  }
  paste( names(t[1]))
})

  output$tablaprobcat1_jd<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_jd,
                               Jul_Dic.Categoriaf3==input$select,
                               select=c(Jul_Dic.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  paste(round(t[1], digits=4))
})

  output$tablanamecat2_jd<-renderText({
  
  Subconjuntos<-na.omit(subset(catg_sin_rep_jd,
                               Jul_Dic.Categoriaf3==input$select,
                               select=c(Jul_Dic.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:5){
    nam[i]<-names(t[i])
  }
  paste( names(t[2]))
})

  output$tablaprobcat2_jd<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_jd,
                               Jul_Dic.Categoriaf3==input$select,
                               select=c(Jul_Dic.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  paste( round(t[2], digits=4))
})

  output$tablanamecat3_jd<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_jd,
                               Jul_Dic.Categoriaf3==input$select,
                               select=c(Jul_Dic.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:5){
    nam[i]<-names(t[i])
  }
  paste( names(t[3]))
})

  output$tablaprobcat3_jd<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_jd,
                               Jul_Dic.Categoriaf3==input$select,
                               select=c(Jul_Dic.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  paste(round(t[3], digits=4) )
})

  output$tabla1namecat1_jd<-renderText({
  x<-input$select2
  Subconjuntos<-na.omit(subset(catg_sin_rep_jd,
                               Jul_Dic.Categoriaf3==x,
                               select=c(Jul_Dic.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:5){
    nam[i]<-names(t[i])
  }
  paste( names(t[1]))
})

  output$tabla1probcat1_jd<-renderText({
  x<-input$select2
  Subconjuntos<-na.omit(subset(catg_sin_rep_jd,
                               Jul_Dic.Categoriaf3==x,
                               select=c(Jul_Dic.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  paste( round(t[1], digits=4))
})

  output$tabla1namecat2_jd<-renderText({
  x<-input$select2
  Subconjuntos<-na.omit(subset(catg_sin_rep_jd,
                               Jul_Dic.Categoriaf3==x,
                               select=c(Jul_Dic.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:5){
    nam[i]<-names(t[i])
  }
  paste( names(t[2]))
})

  output$tabla1probcat2_jd<-renderText({
  x<-input$select2
  Subconjuntos<-na.omit(subset(catg_sin_rep_jd,
                               Jul_Dic.Categoriaf3==x,
                               select=c(Jul_Dic.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  paste( round(t[2], digits=4))
})

  output$tabla1namecat3_jd<-renderText({
  x<-input$select2
  Subconjuntos<-na.omit(subset(catg_sin_rep_jd,
                               Jul_Dic.Categoriaf3==x,
                               select=c(Jul_Dic.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:5){
    nam[i]<-names(t[i])
  }
  paste( names(t[3]))
})

  output$tabla1probcat3_jd<-renderText({
  x<-input$select2
  Subconjuntos<-na.omit(subset(catg_sin_rep_jd,
                               Jul_Dic.Categoriaf3==x,
                               select=c(Jul_Dic.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  paste( round(t[3], digits=4))
})


  output$Julio<-renderPrint({
  y<-input$select
  paste(y,round(a_matrix_Julio[y,y], digits=4))
})

  output$Julio2<-renderPrint({
  y<-input$select2
  paste(y,round(a_matrix_Julio[y,y], digits=4))
})

  output$confidenceJulio<-renderPrint({
  x<-input$select
  y<-input$select2
  paste("Confidence",round(a_matrix_Julio[x,y]/a_matrix_Julio[x,x], digits=4))
})

 output$liftJulio<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Lift",round(round(a_matrix_Julio[x,y]/a_matrix_Julio[x,x], digits=4)/round(a_matrix_Julio[y,y], digits=4), digits=4))
  })

  output$tablanamecat1Julio<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                               Julio.Categoriaf3==input$select,
                               select=c(Julio.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[1]))
})

  output$tablaprobcat1Julio<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                               Julio.Categoriaf3==input$select,
                               select=c(Julio.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  paste( round(t[1], digits=4))
})

  output$tablanamecat2Julio<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                               Julio.Categoriaf3==input$select,
                               select=c(Julio.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[2]))
})

 output$tablaprobcat2Julio<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                               Julio.Categoriaf3==input$select,
                               select=c(Julio.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  paste( round(t[2], digits=4))
})

  output$tablanamecat3Julio<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                               Julio.Categoriaf3==input$select,
                               select=c(Julio.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[3]))
})

  output$tablaprobcat3Julio<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                               Julio.Categoriaf3==input$select,
                               select=c(Julio.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  paste( round(t[3], digits=4))
})

  output$tabla1namecat1Julio<-renderText({
  x<-input$select2
  Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                               Julio.Categoriaf3==x,
                               select=c(Julio.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[1]))
})

  output$tabla1probcat1Julio<-renderText({
  x<-input$select2
  Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                               Julio.Categoriaf3==x,
                               select=c(Julio.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  paste( round(t[1], digits=4))
})

  output$tabla1namecat2Julio<-renderText({
  x<-input$select2
  Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                               Julio.Categoriaf3==x,
                               select=c(Julio.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[2]))
})

  output$tabla1probcat2Julio<-renderText({
  x<-input$select2
  Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                               Julio.Categoriaf3==x,
                               select=c(Julio.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  paste( round(t[2], digits=4))
})

  output$tabla1namecat3Julio<-renderText({
  x<-input$select2
  Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                               Julio.Categoriaf3==x,
                               select=c(Julio.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[3]))
})

  output$tabla1probcat3Julio<-renderText({
  x<-input$select2
  Subconjuntos<-na.omit(subset(catg_sin_rep_Julio,
                               Julio.Categoriaf3==x, 
                               select=c(Julio.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  paste( round(t[3], digits=4))
})



  output$Agosto<-renderPrint({
  y<-input$select
  paste(y,round(a_matrix_Agosto[y,y], digits=4))
})

  output$Agosto2<-renderPrint({
  y<-input$select2
  paste(y,round(a_matrix_Agosto[y,y], digits=4))
}) 

  output$confidenceAgosto<-renderPrint({
  x<-input$select
  y<-input$select2
  paste("Confidence",round(a_matrix_Agosto[x,y]/a_matrix_Agosto[x,x], digits=4))
})

  output$liftAgosto<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Lift",round(round(a_matrix_Agosto[x,y]/a_matrix_Agosto[x,x], digits=4)/round(a_matrix_Agosto[y,y], digits=4), digits=4))
  })

  output$tablanamecat1Agosto<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                               Agosto.Categoriaf3==input$select,
                               select=c(Agosto.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[1]))
})

  output$tablaprobcat1Agosto<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                               Agosto.Categoriaf3==input$select,
                               select=c(Agosto.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  paste(round(t[1], digits=4))
})

  output$tablanamecat2Agosto<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                               Agosto.Categoriaf3==input$select,
                               select=c(Agosto.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[2]))
})

  output$tablaprobcat2Agosto<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                               Agosto.Categoriaf3==input$select,
                               select=c(Agosto.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  paste( round(t[2], digits=4))
})

  output$tablanamecat3Agosto<-renderText({
  Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                               Agosto.Categoriaf3==input$select,
                               select=c(Agosto.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[3]))
})

  output$tablaprobcat3Agosto<-renderText({
  
  Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                               Agosto.Categoriaf3==input$select,
                               select=c(Agosto.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  paste( round(t[3], digits=4))
})

  output$tabla1namecat1Agosto<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                                 Agosto.Categoriaf3==input$select2,
                                 select=c(Agosto.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tabla1probcat1Agosto<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                                 Agosto.Categoriaf3==input$select2,
                                 select=c(Agosto.CATEGORIA1)))  
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[1], digits=4))
  })
  
  output$tabla1namecat2Agosto<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                                 Agosto.Categoriaf3==input$select2,
                                 select=c(Agosto.CATEGORIA1)))  
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tabla1probcat2Agosto<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                                 Agosto.Categoriaf3==input$select2,
                                 select=c(Agosto.CATEGORIA1)))  
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[2], digits=4))
  })
  
  output$tabla1namecat3Agosto<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                                 Agosto.Categoriaf3==input$select2,
                                 select=c(Agosto.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tabla1probcat3Agosto<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Agosto,
                                 Agosto.Categoriaf3==input$select2,
                                 select=c(Agosto.CATEGORIA1)))  
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[3], digits=4))
  })
  




  output$Septiembre<-renderPrint({
    y<-input$select
    paste(y,round(a_matrix_Septiembre[y,y], digits=4))
    
})
  
  output$Septiembre2<-renderPrint({
    y<-input$select2
    paste(y, round(a_matrix_Septiembre[y,y], digits=4))
    
})
  
  output$confidenceSeptiembre<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Confidence",round(a_matrix_Septiembre[x,y]/a_matrix_Septiembre[x,x], digits=4))
})
  
  output$liftSeptiembre<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Lift", round(round(a_matrix_Septiembre[x,y]/a_matrix_Septiembre[x,x], digits=4)/round(a_matrix_Septiembre[y,y], digits=4), digits=4))
  })
  
  output$tablanamecat1Septiembre<-renderText({
    x<-input$select
    Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                                 Septiembre.Categoriaf3==x,
                                 select=c(Septiembre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
})
  
  output$tablaprobcat1Septiembre<-renderText({
    x<-input$select
    Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                                 Septiembre.Categoriaf3==x,
                                 select=c(Septiembre.CATEGORIA1)))
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[1], digits=4))
})
  
  output$tablanamecat2Septiembre<-renderText({
    x<-input$select
    Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                                 Septiembre.Categoriaf3==x,
                                 select=c(Septiembre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
})
  
  output$tablaprobcat2Septiembre<-renderText({
    x<-input$select
    Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                                 Septiembre.Categoriaf3==x,
                                 select=c(Septiembre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[2],digits=4))
})
  
  output$tablanamecat3Septiembre<-renderText({
    x<-input$select
    Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                                 Septiembre.Categoriaf3==x,
                                 select=c(Septiembre.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
})
  
  output$tablaprobcat3Septiembre<-renderText({
    x<-input$select
    Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                                 Septiembre.Categoriaf3==x,
                                 select=c(Septiembre.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[3], digits=4))
})

  output$tabla1namecat1Septiembre<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                                 Septiembre.Categoriaf3==x,
                                 select=c(Septiembre.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
})
  
  output$tabla1probcat1Septiembre<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                                 Septiembre.Categoriaf3==x,
                                 select=c(Septiembre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[1], digits=4))
})
  
  output$tabla1namecat2Septiembre<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                                 Septiembre.Categoriaf3==x,
                                 select=c(Septiembre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
})
  
  output$tabla1probcat2Septiembre<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                                 Septiembre.Categoriaf3==x,
                                 select=c(Septiembre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    
    paste( round(t[2], digits=4))
})
  
  output$tabla1namecat3Septiembre<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                                 Septiembre.Categoriaf3==x,
                                 select=c(Septiembre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
})
  
  output$tabla1probcat3Septiembre<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                                 Septiembre.Categoriaf3==x,
                                 select=c(Septiembre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste( round(t[3], digits=4))
})





  output$Octubre<-renderPrint({
    y<-input$select
    paste(y,round(a_matrix_Octubre[y], digits=4))
    
})
  
  output$Octubre2<-renderPrint({
    y<-input$select2
    paste(y,round(a_matrix_Octubre[y], digits=4))
    
})
  
  output$confidenceOctubre<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Confidence",round(a_matrix_Octubre[x,y]/a_matrix_Octubre[x,x], digits=4))
})
  
  output$liftOctubre<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Lift",round(round(a_matrix_Octubre[x,y]/a_matrix_Octubre[x,x], digits=4)/round(a_matrix_Octubre[y,y], digits=4),digits=4))
  })
  
  output$tablanamecat1Octubre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                                 Octubre.Categoriaf3==input$select,
                                 select=c(Octubre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
})
  
  output$tablaprobcat1Octubre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                                 Octubre.Categoriaf3==input$select,
                                 select=c(Octubre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[1],digits=4))
})
  
  output$tablanamecat2Octubre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                                 Octubre.Categoriaf3==input$select,
                                 select=c(Octubre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
})
  
  output$tablaprobcat2Octubre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                                 Octubre.Categoriaf3==input$select,
                                 select=c(Octubre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    
    paste(round(t[2],digits=4))
})
  
  output$tablanamecat3Octubre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                                 Octubre.Categoriaf3==input$select,
                                 select=c(Octubre.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
})
  
  output$tablaprobcat3Octubre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                                 Octubre.Categoriaf3==input$select,
                                 select=c(Octubre.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[3], digits=4))
})
  
  output$tabla1namecat1Octubre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                                 Octubre.Categoriaf3==input$select2,
                                 select=c(Octubre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
})
  
  output$tabla1probcat1Octubre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                                 Octubre.Categoriaf3==input$select2,
                                 select=c(Octubre.CATEGORIA1)))   
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    
    paste( round(t[1], digits=4))
})
  
  output$tabla1namecat2Octubre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                                 Octubre.Categoriaf3==input$select2,
                                 select=c(Octubre.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
})
  
  output$tabla1probcat2Octubre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                                 Octubre.Categoriaf3==input$select2,
                                 select=c(Octubre.CATEGORIA1)))  
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    
    paste( round(t[2], digits=4))
})
  
  output$tabla1namecat3Octubre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                                 Octubre.Categoriaf3==input$select2,
                                 select=c(Octubre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
})
  
  output$tabla1probcat3Octubre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Octubre,
                                 Octubre.Categoriaf3==input$select2,
                                 select=c(Octubre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    
    paste( round(t[3], digits=4))
})





  output$Noviembre<-renderPrint({
    y<-input$select
    paste(y,round(a_matrix_Noviembre[y,y], digits=4))
    
})
  
  output$Noviembre2<-renderPrint({
    y<-input$select2
    paste(y,round(a_matrix_Noviembre[y,y], digits=4))
    
})
  
  output$confidenceNoviembre<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Confidence",round(a_matrix_Noviembre[x,y]/a_matrix_Noviembre[x,x], digits=4))
})
  
  output$liftNoviembre<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Lift",round(round(a_matrix_Noviembre[x,y]/a_matrix_Noviembre[x,x], digits=4)/round(a_matrix_Noviembre[y,y], digits=4), digits=4))
  })
  
  output$tablanamecat1Noviembre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                                 Noviembre.Categoriaf3==input$select,
                                 select=c(Noviembre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
})
  
  output$tablaprobcat1Noviembre<-renderText({
    
    Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                                 Noviembre.Categoriaf3==input$select,
                                 select=c(Noviembre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[1], digits=4))
})
  
  output$tablanamecat2Noviembre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                                 Noviembre.Categoriaf3==input$select,
                                 select=c(Noviembre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
})
  
  output$tablaprobcat2Noviembre<-renderText({
    
    Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                                 Noviembre.Categoriaf3==input$select,
                                 select=c(Noviembre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[2], digits=4))
})
  
  output$tablanamecat3Noviembre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                                 Noviembre.Categoriaf3==input$select,
                                 select=c(Noviembre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
})
  
  output$tablaprobcat3Noviembre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                                 Noviembre.Categoriaf3==input$select,
                                 select=c(Noviembre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[3], digits=4))
})
  
  output$tabla1namecat1Noviembre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                                 Noviembre.Categoriaf3==input$select2,
                                 select=c(Noviembre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
})

  output$tabla1probcat1Noviembre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                                 Noviembre.Categoriaf3==input$select2,
                                 select=c(Noviembre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    
    paste( round(t[1], digits=4))
})
  
  output$tabla1namecat2Noviembre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                                 Noviembre.Categoriaf3==input$select2,
                                 select=c(Noviembre.CATEGORIA1)))
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
})
  
  output$tabla1probcat2Noviembre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                                 Noviembre.Categoriaf3==input$select2,
                                 select=c(Noviembre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    
    paste( round(t[2], digits=4))
})
  
  output$tabla1namecat3Noviembre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                                 Noviembre.Categoriaf3==input$select2,
                                 select=c(Noviembre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
})
  
  output$tabla1probcat3Noviembre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Noviembre,
                                 Noviembre.Categoriaf3==input$select2,
                                 select=c(Noviembre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    
    paste(round(t[3], digits=4))
})





  output$Diciembre<-renderPrint({
    y<-input$select
    paste(y,round(a_matrix_Diciembre[y,y], digits=4))
})
  
  output$Diciembre2<-renderPrint({
    y<-input$select2
    paste(y,round(a_matrix_Diciembre[y,y], digits=4))
})
  
  output$confidenceDiciembre<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Confidence",round(a_matrix_Diciembre[x,y]/a_matrix_Diciembre[x,x], digits=4))
})
  
  output$liftDiciembre<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Lift",round(round(a_matrix_Diciembre[x,y]/a_matrix_Diciembre[x,x], digits=4)/round(a_matrix_Diciembre[y,y], digits=4), digits=4))
  })
  
  output$tablanamecat1Diciembre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                                 Diciembre.Categoriaf3==input$select,
                                 select=c(Diciembre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
})
  
  output$tablaprobcat1Diciembre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                                 Diciembre.Categoriaf3==input$select,
                                 select=c(Diciembre.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[1], digits=4))
})
  
  output$tablanamecat2Diciembre<-renderText({
    
    Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                                 Diciembre.Categoriaf3==input$select,
                                 select=c(Diciembre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
})
  
  output$tablaprobcat2Diciembre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                                 Diciembre.Categoriaf3==input$select,
                                 select=c(Diciembre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[2], digits=4))
})
  
  output$tablanamecat3Diciembre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                                 Diciembre.Categoriaf3==input$select,
                                 select=c(Diciembre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
})
  
  output$tablaprobcat3Diciembre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                                 Diciembre.Categoriaf3==input$select,
                                 select=c(Diciembre.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste(round(t[3], digits=4))
})
  
  output$tabla1namecat1Diciembre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                                 Diciembre.Categoriaf3==input$select2,
                                 select=c(Diciembre.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
})

  output$tabla1probcat1Diciembre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                                 Diciembre.Categoriaf3==input$select2,
                                 select=c(Diciembre.CATEGORIA1)))    
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[1], digits=4))
})
  
  output$tabla1namecat2Diciembre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                                 Diciembre.Categoriaf3==input$select2,
                                 select=c(Diciembre.CATEGORIA1)))    
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
})
  
  output$tabla1probcat2Diciembre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                                 Diciembre.Categoriaf3==input$select2,
                                 select=c(Diciembre.CATEGORIA1)))    
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[2], digits=4))
})
  
  output$tabla1namecat3Diciembre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                                 Diciembre.Categoriaf3==input$select2,
                                 select=c(Diciembre.CATEGORIA1)))    
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
})
  
  output$tabla1probcat3Diciembre<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Diciembre,
                                 Diciembre.Categoriaf3==input$select2,
                                 select=c(Diciembre.CATEGORIA1)))    
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[3], digits=4))
})

})

#II Semestre
catg_jd<-data.frame(Jul_Dic$SLSEQ, Jul_Dic$TICKET,
                    Jul_Dic$CATEGORIA1, Jul_Dic$Categoriaf3)

catg_sin_rep_jd<-unique(catg_jd)

#Julio
catg_Julio<-data.frame(Julio$SLSEQ, Julio$TICKET,
                       Julio$CATEGORIA1, Julio$Categoriaf3)

catg_sin_rep_Julio<-unique(catg_Julio)

#Agosto
catg_Agosto<-data.frame(Agosto$SLSEQ, Agosto$TICKET,
                        Agosto$CATEGORIA1, Agosto$Categoriaf3)

catg_sin_rep_Agosto<-unique(catg_Agosto)

#Septiembre
catg_Septiembre<-data.frame(Septiembre$SLSEQ, Septiembre$TICKET,
                            Septiembre$CATEGORIA1, Septiembre$Categoriaf3)

catg_sin_rep_Septiembre<-unique(catg_Septiembre)

#Octubre
catg_Octubre<-data.frame(Octubre$SLSEQ, Octubre$TICKET,
                         Octubre$CATEGORIA1, Octubre$Categoriaf3)

catg_sin_rep_Octubre<-unique(catg_Octubre)

#Noviembre
catg_Noviembre<-data.frame(Noviembre$SLSEQ, Noviembre$TICKET,
                           Noviembre$CATEGORIA1, Noviembre$Categoriaf3)

catg_sin_rep_Noviembre<-unique(catg_Noviembre)

#Diciembre
catg_Diciembre<-data.frame(Diciembre$SLSEQ, Diciembre$TICKET,
                           Diciembre$CATEGORIA1, Diciembre$Categoriaf3)

catg_sin_rep_Diciembre<-unique(catg_Diciembre)
