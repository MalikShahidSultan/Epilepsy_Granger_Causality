library(shiny)
library(shinydashboard)
library(ggplot2)
library(tidyverse)
library(gplots)
library(grid)
library(magick)

data_1_10000_0.2 = read.csv("/Users/sultm0a/Downloads/GC1000 (1).csv")
data_1 <-  data_1_10000_0.2 %>% select(2:20)
columns = names(data_1)

rownames(data_1) <- columns
data_2 = read.csv("/Users/sultm0a/Downloads/GC2_T.csv")
data_2 <- data_2 %>% select(2:20)

rownames(data_2) <- columns

data_3 = read.csv("/Users/sultm0a/Downloads/GC3_T.csv")
data_3 <-  data_3 %>% select(2:20)


rownames(data_3) <- columns
data_4 = read.csv("/Users/sultm0a/Downloads/GC4_T.csv")
data_4 <- data_4 %>% select(2:20)


rownames(data_4) <- columns

data_5 = read.csv("/Users/sultm0a/Downloads/GC_5_T.csv")
data_5 <- data_5 %>% select(2:20)


rownames(data_5) <- columns

delta_delta_1 = magick::image_read("data/T3-1-delta-delta.png")
delta_delta_2 = magick::image_read("data/T3-2-delta-delta.png")
delta_delta_3 = magick::image_read("data/T3-3-delta-delta.png")
delta_delta_4 = magick::image_read("data/T3-4-delta-delta.png")
delta_delta_5 = magick::image_read("data/T3-5-delta-delta.png")
delta_delta_6 = magick::image_read("data/T3-6-delta-delta.png")


delta_theta_1 = magick::image_read("data/T3-1-delta-theta.png")
delta_theta_2  = magick::image_read("data/T3-2-delta-theta.png")
delta_theta_3 = magick::image_read("data/T3-3-delta-theta.png")
delta_theta_4  = magick::image_read("data/T3-4-delta-theta.png")
delta_theta_5  = magick::image_read("data/T3-5-delta-theta.png")
delta_theta_6  = magick::image_read("data/T3-6-delta-theta.png")


delta_alpha_1 = magick::image_read("data/T3-1-delta-alpha.png")
delta_alpha_2  = magick::image_read("data/T3-2-delta-alpha.png")
delta_alpha_3 = magick::image_read("data/T3-3-delta-alpha.png")
delta_alpha_4  = magick::image_read("data/T3-4-delta-alpha.png")
delta_alpha_5 = magick::image_read("data/T3-5-delta-alpha.png")
delta_alpha_6  = magick::image_read("data/T3-6-delta-alpha.png")


delta_beta_1 = magick::image_read("data/T3-1-delta-beta.png")
delta_beta_2 = magick::image_read("data/T3-2-delta-beta.png")
delta_beta_3 = magick::image_read("data/T3-3-delta-beta.png")
delta_beta_4  = magick::image_read("data/T3-4-delta-beta.png")
delta_beta_5 = magick::image_read("data/T3-5-delta-beta.png")
delta_beta_6  = magick::image_read("data/T3-6-delta-beta.png")


delta_gamma_1 = magick::image_read("data/T3-1-delta-gamma.png")
delta_gamma_2 = magick::image_read("data/T3-2-delta-gamma.png")
delta_gamma_3 = magick::image_read("data/T3-3-delta-gamma.png")
delta_gamma_4  = magick::image_read("data/T3-4-delta-gamma.png")
delta_gamma_5 = magick::image_read("data/T3-5-delta-gamma.png")
delta_gamma_6  = magick::image_read("data/T3-6-delta-gamma.png")



theta_delta_1 = magick::image_read("data/T3-1-theta-delta.png")
theta_delta_2 = magick::image_read("data/T3-2-theta-delta.png")
theta_delta_3 = magick::image_read("data/T3-3-theta-delta.png")
theta_delta_4 = magick::image_read("data/T3-4-theta-delta.png")
theta_delta_5 = magick::image_read("data/T3-5-theta-delta.png")
theta_delta_6 = magick::image_read("data/T3-6-theta-delta.png")


theta_theta_1 = magick::image_read("data/T3-1-theta-theta.png")
theta_theta_2  = magick::image_read("data/T3-2-theta-theta.png")
theta_theta_3 = magick::image_read("data/T3-3-theta-theta.png")
theta_theta_4  = magick::image_read("data/T3-4-theta-theta.png")
theta_theta_5  = magick::image_read("data/T3-5-theta-theta.png")
theta_theta_6  = magick::image_read("data/T3-6-theta-theta.png")


theta_alpha_1 = magick::image_read("data/T3-1-theta-alpha.png")
theta_alpha_2  = magick::image_read("data/T3-2-theta-alpha.png")
theta_alpha_3 = magick::image_read("data/T3-3-theta-alpha.png")
theta_alpha_4  = magick::image_read("data/T3-4-theta-alpha.png")
theta_alpha_5 = magick::image_read("data/T3-5-theta-alpha.png")
theta_alpha_6  = magick::image_read("data/T3-6-theta-alpha.png")


theta_beta_1 = magick::image_read("data/T3-1-theta-beta.png")
theta_beta_2 = magick::image_read("data/T3-2-theta-beta.png")
theta_beta_3 = magick::image_read("data/T3-3-theta-beta.png")
theta_beta_4  = magick::image_read("data/T3-4-theta-beta.png")
theta_beta_5 = magick::image_read("data/T3-5-theta-beta.png")
theta_beta_6  = magick::image_read("data/T3-6-theta-beta.png")


theta_gamma_1 = magick::image_read("data/T3-1-theta-gamma.png")
theta_gamma_2 = magick::image_read("data/T3-2-theta-gamma.png")
theta_gamma_3 = magick::image_read("data/T3-3-theta-gamma.png")
theta_gamma_4  = magick::image_read("data/T3-4-theta-gamma.png")
theta_gamma_5 = magick::image_read("data/T3-5-theta-gamma.png")
theta_gamma_6  = magick::image_read("data/T3-6-theta-gamma.png")





alpha_delta_1 = magick::image_read("data/T3-1-alpha-delta.png")
alpha_delta_2 = magick::image_read("data/T3-2-alpha-delta.png")
alpha_delta_3 = magick::image_read("data/T3-3-alpha-delta.png")
alpha_delta_4 = magick::image_read("data/T3-4-alpha-delta.png")
alpha_delta_5 = magick::image_read("data/T3-5-alpha-delta.png")
alpha_delta_6 = magick::image_read("data/T3-6-alpha-delta.png")


alpha_theta_1 = magick::image_read("data/T3-1-alpha-theta.png")
alpha_theta_2  = magick::image_read("data/T3-2-alpha-theta.png")
alpha_theta_3 = magick::image_read("data/T3-3-alpha-theta.png")
alpha_theta_4  = magick::image_read("data/T3-4-alpha-theta.png")
alpha_theta_5  = magick::image_read("data/T3-5-alpha-theta.png")
alpha_theta_6  = magick::image_read("data/T3-6-alpha-theta.png")


alpha_alpha_1 = magick::image_read("data/T3-1-alpha-alpha.png")
alpha_alpha_2  = magick::image_read("data/T3-2-alpha-alpha.png")
alpha_alpha_3 = magick::image_read("data/T3-3-alpha-alpha.png")
alpha_alpha_4  = magick::image_read("data/T3-4-alpha-alpha.png")
alpha_alpha_5 = magick::image_read("data/T3-5-alpha-alpha.png")
alpha_alpha_6  = magick::image_read("data/T3-6-alpha-alpha.png")


alpha_beta_1 = magick::image_read("data/T3-1-alpha-beta.png")
alpha_beta_2 = magick::image_read("data/T3-2-alpha-beta.png")
alpha_beta_3 = magick::image_read("data/T3-3-alpha-beta.png")
alpha_beta_4  = magick::image_read("data/T3-4-alpha-beta.png")
alpha_beta_5 = magick::image_read("data/T3-5-alpha-beta.png")
alpha_beta_6  = magick::image_read("data/T3-6-alpha-beta.png")


alpha_gamma_1 = magick::image_read("data/T3-1-alpha-gamma.png")
alpha_gamma_2 = magick::image_read("data/T3-2-alpha-gamma.png")
alpha_gamma_3 = magick::image_read("data/T3-3-alpha-gamma.png")
alpha_gamma_4  = magick::image_read("data/T3-4-alpha-gamma.png")
alpha_gamma_5 = magick::image_read("data/T3-5-alpha-gamma.png")
alpha_gamma_6  = magick::image_read("data/T3-6-alpha-gamma.png")




beta_delta_1 = magick::image_read("data/T3-1-beta-delta.png")
beta_delta_2 = magick::image_read("data/T3-2-beta-delta.png")
beta_delta_3 = magick::image_read("data/T3-3-beta-delta.png")
beta_delta_4 = magick::image_read("data/T3-4-beta-delta.png")
beta_delta_5 = magick::image_read("data/T3-5-beta-delta.png")
beta_delta_6 = magick::image_read("data/T3-6-beta-delta.png")


beta_theta_1 = magick::image_read("data/T3-1-beta-theta.png")
beta_theta_2  = magick::image_read("data/T3-2-beta-theta.png")
beta_theta_3 = magick::image_read("data/T3-3-beta-theta.png")
beta_theta_4  = magick::image_read("data/T3-4-beta-theta.png")
beta_theta_5  = magick::image_read("data/T3-5-beta-theta.png")
beta_theta_6  = magick::image_read("data/T3-6-beta-theta.png")


beta_alpha_1 = magick::image_read("data/T3-1-beta-alpha.png")
beta_alpha_2  = magick::image_read("data/T3-2-beta-alpha.png")
beta_alpha_3 = magick::image_read("data/T3-3-beta-alpha.png")
beta_alpha_4  = magick::image_read("data/T3-4-beta-alpha.png")
beta_alpha_5 = magick::image_read("data/T3-5-beta-alpha.png")
beta_alpha_6  = magick::image_read("data/T3-6-beta-alpha.png")


beta_beta_1 = magick::image_read("data/T3-1-beta-beta.png")
beta_beta_2 = magick::image_read("data/T3-2-beta-beta.png")
beta_beta_3 = magick::image_read("data/T3-3-beta-beta.png")
beta_beta_4  = magick::image_read("data/T3-4-beta-beta.png")
beta_beta_5 = magick::image_read("data/T3-5-beta-beta.png")
beta_beta_6  = magick::image_read("data/T3-6-beta-beta.png")


beta_gamma_1 = magick::image_read("data/T3-1-beta-gamma.png")
beta_gamma_2 = magick::image_read("data/T3-2-beta-gamma.png")
beta_gamma_3 = magick::image_read("data/T3-3-beta-gamma.png")
beta_gamma_4  = magick::image_read("data/T3-4-beta-gamma.png")
beta_gamma_5 = magick::image_read("data/T3-5-beta-gamma.png")
beta_gamma_6  = magick::image_read("data/T3-6-beta-gamma.png")




gamma_delta_1 = magick::image_read("data/T3-1-gamma-delta.png")
gamma_delta_2 = magick::image_read("data/T3-2-gamma-delta.png")
gamma_delta_3 = magick::image_read("data/T3-3-gamma-delta.png")
gamma_delta_4 = magick::image_read("data/T3-4-gamma-delta.png")
gamma_delta_5 = magick::image_read("data/T3-5-gamma-delta.png")
gamma_delta_6 = magick::image_read("data/T3-6-gamma-delta.png")


gamma_theta_1 = magick::image_read("data/T3-1-gamma-theta.png")
gamma_theta_2  = magick::image_read("data/T3-2-gamma-theta.png")
gamma_theta_3 = magick::image_read("data/T3-3-gamma-theta.png")
gamma_theta_4  = magick::image_read("data/T3-4-gamma-theta.png")
gamma_theta_5  = magick::image_read("data/T3-5-gamma-theta.png")
gamma_theta_6  = magick::image_read("data/T3-6-gamma-theta.png")


gamma_alpha_1 = magick::image_read("data/T3-1-gamma-alpha.png")
gamma_alpha_2  = magick::image_read("data/T3-2-gamma-alpha.png")
gamma_alpha_3 = magick::image_read("data/T3-3-gamma-alpha.png")
gamma_alpha_4  = magick::image_read("data/T3-4-gamma-alpha.png")
gamma_alpha_5 = magick::image_read("data/T3-5-gamma-alpha.png")
gamma_alpha_6  = magick::image_read("data/T3-6-gamma-alpha.png")


gamma_beta_1 = magick::image_read("data/T3-1-gamma-beta.png")
gamma_beta_2 = magick::image_read("data/T3-2-gamma-beta.png")
gamma_beta_3 = magick::image_read("data/T3-3-gamma-beta.png")
gamma_beta_4  = magick::image_read("data/T3-4-gamma-beta.png")
gamma_beta_5 = magick::image_read("data/T3-5-gamma-beta.png")
gamma_beta_6  = magick::image_read("data/T3-6-gamma-beta.png")


gamma_gamma_1 = magick::image_read("data/T3-1-gamma-gamma.png")
gamma_gamma_2 = magick::image_read("data/T3-2-gamma-gamma.png")
gamma_gamma_3 = magick::image_read("data/T3-3-gamma-gamma.png")
gamma_gamma_4  = magick::image_read("data/T3-4-gamma-gamma.png")
gamma_gamma_5 = magick::image_read("data/T3-5-gamma-gamma.png")
gamma_gamma_6  = magick::image_read("data/T3-6-gamma-gamma.png")








val= 100

paletteLength <- 50
myColor <- colorRampPalette(c("white","blue","yellow","green"))(paletteLength)


ui <- dashboardPage(
  dashboardHeader(),
  dashboardSidebar(sliderInput("slider","Time in Seconds - Consider Windows -(0-100),(100-200),(200-330),(330-357),(357-365),(365-500s)", min=100, max=500, step =1, value = val),selectInput("Spectral", "Select Spectral Interactions", choices = c("delta-delta", "delta-theta","delta-alpha","delta-beta","delta-gamma","theta-delta", "theta-theta","theta-alpha","theta-beta","theta-gamma","alpha-delta", "alpha-theta","alpha-alpha","alpha-beta","alpha-gamma","beta-delta", "beta-theta","beta-alpha","beta-beta","beta-gamma","gamma-delta", "gamma-theta","gamma-alpha","gamma-beta","gamma-gamma"))),
  
  dashboardBody(
    fillPage(tags$style(type = "text/css", "#plot1 {height: calc(100vh - 80px) !important;}"),imageOutput('plot1'))
    
  ))
server <- function(input, output, session) { 
  observe({
    option <- input$Spectral
    val <- input$slider
    # Control the value, min, max, and step.
    # Step size is 2 when input value is even; 1 when value is odd.
    updateSliderInput(session, "slider", value = val)
    if (option == 'delta-delta')
    {
    if (val <= 100)
    {#m<- plot(delta_delta_1)
    
    output$plot1 <- renderImage({
      filename <- normalizePath(file.path('./data',
                                          paste('T3-1-delta-delta', '.png', sep='')))
      
      # Return a list containing the filename
      list(src = filename, alt = "Alternate text")
    }, deleteFile = FALSE)
    
      
    }
  
      if (val >= 100 && val <= 200 )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-2-delta-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 200 && val <= 330  )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-3-delta-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 330 && val <= 357)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-4-delta-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 357 && val <=365)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-5-delta-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val>365 && val <=500)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-6-delta-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      
      
    }
    
    
    
    
    
    
    if (option == 'delta-theta')
    {
      if (val <= 100)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-1-delta-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val >= 100 && val <= 200 )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-2-delta-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 200 && val <= 330  )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-3-delta-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 330 && val <= 357)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-4-delta-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 357 && val <=365)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-5-delta-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val>365 && val <=500)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-6-delta-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      
      
    }
    
    
    
    
    
    
    
    
    
    
    
    if (option == 'delta-alpha')
    {
      if (val <= 100)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-1-delta-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val >= 100 && val <= 200 )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-2-delta-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 200 && val <= 330  )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-3-delta-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 330 && val <= 357)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-4-delta-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 357 && val <=365)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-5-delta-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val>365 && val <=500)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-6-delta-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      
      
    }
    
    
    
    
   
    if (option == 'delta-beta')
    {
      if (val <= 100)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-1-delta-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val >= 100 && val <= 200 )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-2-delta-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 200 && val <= 330  )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-3-delta-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 330 && val <= 357)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-4-delta-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 357 && val <=365)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-5-delta-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val>365 && val <=500)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-6-delta-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
    }
    
      
      
      
   
    
    
    
    
    if (option == 'delta-gamma')
    {
      if (val <= 100)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-1-delta-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val >= 100 && val <= 200 )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-2-delta-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 200 && val <= 330  )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-3-delta-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 330 && val <= 357)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-4-delta-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 357 && val <=365)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-5-delta-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val>365 && val <=500)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-6-delta-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
    }
    
    
    
    if (option == 'theta-delta')
    {
      if (val <= 100)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-1-theta-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val >= 100 && val <= 200 )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-2-theta-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 200 && val <= 330  )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-3-theta-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 330 && val <= 357)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-4-theta-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 357 && val <=365)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-5-theta-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val>365 && val <=500)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-6-theta-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
    }    
    
    
 
    
    
    if (option == 'theta-theta')
    {
      if (val <= 100)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-1-theta-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val >= 100 && val <= 200 )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-2-theta-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 200 && val <= 330  )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-3-theta-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 330 && val <= 357)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-4-theta-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 357 && val <=365)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-5-theta-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val>365 && val <=500)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-6-theta-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
    }    
    
          
    
    
    
    
    if (option == 'theta-alpha')
    {
      if (val <= 100)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-1-theta-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val >= 100 && val <= 200 )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-2-theta-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 200 && val <= 330  )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-3-theta-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 330 && val <= 357)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-4-theta-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 357 && val <=365)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-5-theta-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val>365 && val <=500)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-6-theta-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
    }    
    
    
    
    
    
    
    
    if (option == 'theta-beta')
    {
      if (val <= 100)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-1-theta-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val >= 100 && val <= 200 )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-2-theta-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 200 && val <= 330  )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-3-theta-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 330 && val <= 357)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-4-theta-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 357 && val <=365)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-5-theta-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val>365 && val <=500)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-6-theta-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
    }    
    
    
    
    
    
    if (option == 'alpha-delta')
    {
      if (val <= 100)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-1-alpha-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val >= 100 && val <= 200 )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-2-alpha-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 200 && val <= 330  )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-3-alpha-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 330 && val <= 357)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-4-alpha-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 357 && val <=365)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-5-alpha-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val>365 && val <=500)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-6-alpha-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
    }    
    
  
    
    
    if (option == 'theta-gamma')
    {
      if (val <= 100)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-1-theta-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val >= 100 && val <= 200 )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-2-theta-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 200 && val <= 330  )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-3-theta-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 330 && val <= 357)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-4-theta-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 357 && val <=365)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-5-theta-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val>365 && val <=500)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-6-theta-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
    }    
    
    
    
    
    
    if (option == 'alpha-theta')
    {
      if (val <= 100)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-1-alpha-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val >= 100 && val <= 200 )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-2-alpha-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 200 && val <= 330  )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-3-alpha-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 330 && val <= 357)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-4-alpha-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 357 && val <=365)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-5-alpha-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val>365 && val <=500)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-6-alpha-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
    }    
    
    
    
    
    if (option == 'alpha-alpha')
    {
      if (val <= 100)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-1-alpha-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val >= 100 && val <= 200 )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-2-alpha-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 200 && val <= 330  )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-3-alpha-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 330 && val <= 357)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-4-alpha-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 357 && val <=365)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-5-alpha-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val>365 && val <=500)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-6-alpha-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
    }    
    
    
      
    
    
    
    if (option == 'alpha-beta')
    {
      if (val <= 100)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-1-alpha-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val >= 100 && val <= 200 )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-2-alpha-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 200 && val <= 330  )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-3-alpha-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 330 && val <= 357)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-4-alpha-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 357 && val <=365)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-5-alpha-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val>365 && val <=500)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-6-alpha-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
    }    
    
    
    
    
    if (option == 'alpha-gamma')
    {
      if (val <= 100)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-1-alpha-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val >= 100 && val <= 200 )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-2-alpha-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 200 && val <= 330  )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-3-alpha-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 330 && val <= 357)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-4-alpha-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 357 && val <=365)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-5-alpha-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val>365 && val <=500)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-6-alpha-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
    }    
    
    
    
    if (option == 'beta-delta')
    {
      if (val <= 100)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-1-beta-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val >= 100 && val <= 200 )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-2-beta-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 200 && val <= 330  )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-3-beta-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 330 && val <= 357)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-4-beta-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 357 && val <=365)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-5-beta-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val>365 && val <=500)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-6-beta-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
    }    
    
    
    
    
    
    if (option == 'beta-theta')
    {
      if (val <= 100)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-1-beta-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val >= 100 && val <= 200 )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-2-beta-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 200 && val <= 330  )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-3-beta-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 330 && val <= 357)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-4-beta-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 357 && val <=365)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-5-beta-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val>365 && val <=500)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-6-beta-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
    }    
    
    
    
    
    if (option == 'beta-alpha')
    {
      if (val <= 100)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-1-beta-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val >= 100 && val <= 200 )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-2-beta-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 200 && val <= 330  )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-3-beta-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 330 && val <= 357)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-4-beta-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 357 && val <=365)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-5-beta-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val>365 && val <=500)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-6-beta-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
    }    
    
    
    
    
    if (option == 'beta-beta')
    {
      if (val <= 100)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-1-beta-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val >= 100 && val <= 200 )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-2-beta-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 200 && val <= 330  )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-3-beta-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 330 && val <= 357)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-4-beta-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 357 && val <=365)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-5-beta-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val>365 && val <=500)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-6-beta-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
    }    
    
    
    if (option == 'beta-gamma')
    {
      if (val <= 100)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-1-beta-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val >= 100 && val <= 200 )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-2-beta-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 200 && val <= 330  )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-3-beta-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 330 && val <= 357)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-4-beta-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 357 && val <=365)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-5-beta-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val>365 && val <=500)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-6-beta-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
    }
    
    
    
    if (option == 'gamma-delta')
    {
      if (val <= 100)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-1-gamma-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val >= 100 && val <= 200 )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-2-gamma-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 200 && val <= 330  )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-3-gamma-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 330 && val <= 357)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-4-gamma-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 357 && val <=365)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-5-gamma-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val>365 && val <=500)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-6-gamma-delta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
    }    
    
    
    if (option == 'gamma-theta')
    {
      if (val <= 100)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-1-gamma-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val >= 100 && val <= 200 )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-2-gamma-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 200 && val <= 330  )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-3-gamma-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 330 && val <= 357)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-4-gamma-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 357 && val <=365)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-5-gamma-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val>365 && val <=500)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-6-gamma-theta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
    }    
    
    
    
    if (option == 'gamma-alpha')
    {
      if (val <= 100)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-1-gamma-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val >= 100 && val <= 200 )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-2-gamma-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 200 && val <= 330  )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-3-gamma-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 330 && val <= 357)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-4-gamma-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 357 && val <=365)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-5-gamma-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val>365 && val <=500)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-6-gamma-alpha', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
    }    
    
    
    
    if (option == 'gamma-beta')
    {
      if (val <= 100)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-1-gamma-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val >= 100 && val <= 200 )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-2-gamma-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 200 && val <= 330  )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-3-gamma-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 330 && val <= 357)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-4-gamma-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 357 && val <=365)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-5-gamma-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val>365 && val <=500)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-6-gamma-beta', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
    }    
    
    
    
    
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    if (option == 'gamma-gamma')
    {
      if (val <= 100)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-1-gamma-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val >= 100 && val <= 200 )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-2-gamma-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 200 && val <= 330  )
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-3-gamma-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 330 && val <= 357)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-4-gamma-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val > 357 && val <=365)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-5-gamma-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
      
      if (val>365 && val <=500)
      {#m<- plot(delta_delta_1)
        
        output$plot1 <- renderImage({
          filename <- normalizePath(file.path('./data',
                                              paste('T3-6-gamma-gamma', '.png', sep='')))
          
          # Return a list containing the filename
          list(src = filename, alt = "Alternate text")
        }, deleteFile = FALSE)
        
        
      }
    }    
    
    
    
        
    
    
    
    
    
    
    
    
    
    
    

  })
  
  
  
  }




shinyApp(ui, server)
