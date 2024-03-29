library(shiny)

# Обучающая выборка
TrainSet <- read.csv("training.csv", header = TRUE)
TrainSet <- TrainSet[,-1]

pageWithSidebar(

  # Page header
  headerPanel('Учебный проект Iris Predictor'),

  # Input values - входные параметры
  sidebarPanel(
    HTML("<h3>Входные параметры</h4>"),
    sliderInput("Sepal.Length", label = "Sepal Length", value = 5.0,
                min = min(TrainSet$Sepal.Length),
                max = max(TrainSet$Sepal.Length)
    ),
    sliderInput("Sepal.Width", label = "Sepal Width", value = 3.6,
                min = min(TrainSet$Sepal.Width),
                max = max(TrainSet$Sepal.Width)),
    sliderInput("Petal.Length", label = "Petal Length", value = 1.4,
                min = min(TrainSet$Petal.Length),
                max = max(TrainSet$Petal.Length)),
    sliderInput("Petal.Width", label = "Petal Width", value = 0.2,
                min = min(TrainSet$Petal.Width),
                max = max(TrainSet$Petal.Width)),

    actionButton("submitbutton", "Применить", class = "btn btn-primary"),
    
    br(),
    br(),
    
    h3("Веб-приложение собрал: В.Шлеев")
  ),

  mainPanel(
    tags$label(h3('Status/Output')), # Status/Output Text Box
    verbatimTextOutput('contents'),
    tableOutput('tabledata') # Prediction results table - таблица с результатами прогноза

  )
)
