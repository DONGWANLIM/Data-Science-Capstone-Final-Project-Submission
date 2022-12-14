suppressWarnings(library(shiny))
suppressWarnings(library(markdown))
shinyUI(navbarPage("Data Science Capstone: Final Project Submission",
                   tabPanel("Predict the Next Word",
                            HTML("<strong>Author: DONG WAN LIM</strong>"),
                            br(),
                            HTML("<strong>Date: OCT 20 2022 </strong>"),
                            br(),
                            # Sidebar
                            sidebarLayout(
                              sidebarPanel(
                                helpText("Enter a phrase to begin the next word prediction"),
                                textInput("inputString", "Enter a phrase here",value = ""),
                                br(),
                                br(),
                                br(),
                                br()
                              ),
                              mainPanel(
                                tabsetPanel(type = "tabs",
                                            tabPanel("Prediction",h2("Prediction of next word in the phrase"),
                                                     verbatimTextOutput("prediction"),
                                                     strong("Phrase Input:"),
                                                     tags$style(type='text/css', '#text1 {background-color: rgba(34,139,34,0.40); color: black;}'), 
                                                     textOutput('text1'),
                                                     br(),
                                                     strong("Note:"),
                                                     tags$style(type='text/css', '#text2 {background-color: rgba(143,0,255,0.40); color: yellow;}'),
                                                     textOutput('text2')
                                            ),
                                            tabPanel("About", h5("Back-off algorithm is used to predict next word in the app using bigrams, trigrams and quadgrams. In case of no match, a random word is returned from Top 10 unigrams found in Milestone report's Exploratory Analysis."),
                                                     br(),
                                                     br(),
                                                     tags$h1("Github repository"),
                                                     "If you want to view the code, please go to ",
                                                     tags$a(href="https://github.com/DONGWANLIM/Data-Science-Capstone-Final-Project-Submission", 
                                                            "this link"),
                                                     br(),
                                                     tags$h1("Milestone report"),
                                                     "If you want to view Milestone report for this project, please go to",
                                                     tags$a(href="https://rpubs.com/daniel4538/milestonepj", 
                                                            "this link")
                                            )))))))
