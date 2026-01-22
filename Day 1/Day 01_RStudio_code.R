#for the code to run in Rstdio we have use Ctrl + Enter in Source pane
print("R programming language")
5+6
sum1<- 23+64
sum1

#On the Right of this Souce pane that is Environment Pane on the Right ->
#In this Environment Pane there is also history so that we can check whether what we have executed. 

demo<-"Hello World"
demo



#So now if we want to create 2 or 2+ variable in one line.
#And for that the variables should be seperated by ; as shown below
demo1<- 7+9;demo2<- 6+22
print(demo1)
print(demo2)

# Now the Pane below the Environment Pane is Output or say more importantly graphical output is shown in this pane.
#There are also Packages section in the Output Pane. From there you can install multiple packages for the future use.
# In the packages section we can install multiple packages with the only requirement of internet connectivity , so we have installed ggplot2 and DepLogo.
#Also we can get to help section and search for the syntax or info needed regarding the package or procedure.
#In the packages section there are multiple packages installed already so to check on them, do the following:
sessionInfo()
#so now this will show all the base packages in the attached base packages, can be also seen via the  tick mark in the packages section in Output Pane.


#Lets see the output or graph generation or plotting of graph in Output Pane.
x<-1:9
plot(x)
#so now suppose if we want to know about the plot simply add ? infront of the  plot.
?plot(x)
#so we can see  in the output pane related to particular graph.


#R language is Case sensitive language.
a <- 10; A<- 10
# You can see in the environment pane the new 2 variables added.

