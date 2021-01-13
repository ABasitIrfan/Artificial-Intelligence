#!/usr/bin/env python
# coding: utf-8

# In[3]:


nums=[1,2,3,4]

for x in nums:
    print(x)


# In[5]:


list(range(0,5))


# In[6]:


print(list(range(0,15,3)))


# In[8]:


food=['rice','sweets','burger']
for x in food:
    print(x)


# In[9]:


food=['rice','sweets','burger']
for item in range(len(food)):
    print(item)


# In[10]:


food=['rice','sweets','burger']
for item in range(len(food)):
    print(food[item])


# In[16]:


for x in range(5):
    for y in range(5):
        print("*",end="")
    print("")


# In[20]:


for x in range(5): #rows
    for y in range(x): #columns
        print("*",end="")
    print("")


# In[23]:


for x in range(5): #rows
    for z in range(5-x): #columns
        print(end=" ")
    for y in range(x):
        print("*",end="")
    print("")


# In[26]:


for x in range(5): #rows
    for y in range(x): #columns
        print(x,end="")
    print(x)


# In[29]:


def myprint(str):
    print(str)
    return


# In[30]:


myprint("first line")


# In[31]:


def takein():
    print("provide a number")
    num=int(input())
    return num
print(takein())


# In[32]:


array=[1,2,3,4]
def editArray(a, index):
    print("what is the new value you need to enter")
    num=int(input())
    a[index]=num
    return
editArray(array ,1)
print(array)


# In[35]:


class cat:
    species="mammal"
    def info(self,age,weight):
        return "age={} years and weight={} kg".format(age,weight)
kitty=cat()
kitty.species
kitty.info(2, 3)


# In[50]:


#Exercise 1: Write a class of Dog, each dog must be of species type mammal.
#Each dog has its name and age. The class can have method for description () and health Status () which dog produces
#Create an object and perform some operations

class Dog:
    species="mammal"
    
    def __init__(self,n,a):
        self.name=n
        self.age=a
    def description(self):
        return "{} is {} years old".format(self.name,self.age)
    
    def healthStatus(self, status):
        return "{} is {}".format(self.name,status)

dogg=Dog("tom",5)
print(dogg.description())


# In[51]:


print(dogg.healthStatus("good"))


# In[ ]:


#Task1:
class Calculations:
    def __init__(self,n1,n2):
        self.num1=n1
        self.num2=n2
        
    def add(self):
        return "After Adding both: {}".format(self.num1+self.num2)
    
    def subtract(self):
        return "After Subtracting both : {}".format(self.num1-self.num2)
    
    def multiply(self):
        return "After Multiplying both : {}".format(self.num1*self.num2)
    
    def divide(self):
        return "After Dividing both: {}".format(self.num1/self.num2)
    
print("Enter Number 1:")
numb1=int(input())
print("Enter Number 2:")
numb2=int(input())
calc=Calculations(numb1,numb2)
calc.add()  


# In[ ]:





# In[ ]:




