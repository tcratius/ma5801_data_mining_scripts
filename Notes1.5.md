
#### Stats Maths thing on JCU (not sure, was going to review)
http://libguides.jcu.edu.au/mathematics 

### General Weekly Notes - Ch 1 intro.

#### Wage Data 

*Wage* is y-axis *response* variable (measured or observed) dependent on x-axis variable.

Age, Year and Educational Level are *predictor* or independent variables.  They explain changes in the response variable.

![wagedata](notes_images/wage.png) _Fig 1._

The *wage* dataset is continuous quantitative problem often known as a regression (linear) problem.

In the above graph, Fig 1, age is not a good predictor of increased wage as can be seen by the variability, i.e. not linear line, however, year and educational level both show and increase _linear_ relationship with wage. *Linear*, in general represented as a straight line and does not have a curve. 


#### Stock Market Data  

*Smarket* dataset is over five years focusing on Standard and Poor's 500 (S&P) and is qualitative data, Up and Down relating to the direction of the stock for a particular day.

Whether the stock market performance for this stock falls in the *up* bucket or the *down* bucket is refered to as a _classification_ prolem

![smarket.png](notes_images/smarket.png) _Fig 2._

#### Gene Expression Data

Is referred to in the book as NC160 dataset.  This type of data has no output so all variables are independent, so there will be an independent variable on both x and y which is different to the wage data. In this scenario, the aim is to observe the data and group them and is known as a _clustering_ problem, see example of principle component analysis [(PCA - explained here)](https://www.youtube.com/watch?v=FgakZw6K1QQ).  I am sure there are other methods, but only one I have found so far.  Fig 3 shows an example of clustering and note, Z1 and Z2 are both considered independent variables (x-axis variables).  For ploting, it's easier to treat one of the x-axis variables as a y variable.

![NC160.png](notes_images/cluster.png) _Fig 3._



```R

```

### Math and Stats Notations

We will use `n` to represent the number of distinct data points, or observations, in our sample. We will let `p` denote the number of variables that are available for use in making predictions.

For example, the Wage data set consists of 12 variables for 3,000 people, so we have 
`n = 3,000 observations` and `p = 12 variables` (such as year, age, sex, and more). Note that throughout this book, we indicate variable names using colored font: variable `Name` in "red".  For security reason Markdown doesn't use fonts or colour and only have limited html usage.



X = (x<sub>ij</sub>)<sub>n*p</sub> see _Fig 4._ 

  
  Where X is the matrix as a whole. x<sub>ij</sub> is the co-ordinates of each value in X. 

<sub>i</sub> = row no., <sub>j</sub> = column no. .: First row, second column would be - x <sub>i=1</sub>, <sub>j=2</sub> 'or' x<sub>12</sub>

![n-times-p](notes_images/n-times-p.png) _Fig 4._  


  
For simplicity of understanding X<sub>ip</sub> is used to say that the calculation is performing tasks on rows 1, 2, 3 ... ip, _Fig 5._, where i is a real number that can be calculated to find the probability.  In _Fig 6._ is the transpose version of i.

![rows-p](notes_images/row-p.png)  
_Fig 5._

![transpose-i](notes_images/transpose-i.png) 
_Fig 6._  

 
The opposite is then true for columns where j is the real number that can be used for calculating p.  The thing to remember is j is the index to the contents, 1 being the contents of column 1.  _Fig 7_ shows how it looks:

![columns-p](notes_images/column-p.png) 
_Fig 7._

An example of columns, for the Wage data, x1 contains the n=3,000 values for year.
Using this notation, the matrix X can be written as:  

            X =( x1, x2, ··· xp), 
    
    or

![transpose-col](notes_images/transpose-col.png)




### Other maths terms 

__Covariance__ Covariance is a measure of the extent to which corresponding elements from two sets of ordered data move in the same direction. We use the following formula to compute covariance.

Cov(X, Y) = Σ ( Xi - X ) ( Yi - Y ) / N = Σ xiyi / N


Calculate gradient y = m * x + c # c is where the y intercepts the y axis.

It is also why maths is confusing.


### Inference vs predictors 
 
The _input_ variables can go by different names, such as __predictors__,__independent variables__, __features__, or sometimes just variables are often denoted as X __variable.

The _output_ variables, often denoted as Y, are frequently called __response__ or __dependent variables. 


__Predictors__ can be made when the input variable, X, is easily obtained compared with the output variable Y.  From this perspective the error term often averages out to be zero, leading to the following equation. 

    Yhat = f-hat(X)
    
    Yhat is an estimate for Y
    f-hat is an estimate of the function of X, f(x)
    
As f-hat is an estimate and may not represent f then we can say that the margin of error between f-hat and f.  This inaccuracy is know as __reducible error. 

Errors in the prediction that can not be accounted for by f-hat is called __irreducilbe error__ and makes up the rest of Y as a function of e. 

__Inference__ The effect of X<sub>1, 2, 3 ...</sub>X<sub>p</sub> on Y is often of interest to the analyst, as such, it is not about making a prediction of the effect but rather we look to understand the relationship between X and Y as X changes.  

Inference can also be used to find out how the X variables (predictors) are associated with the response variable Y.  In other words which, ones have a greater inpact on the response, as not all of them may affect or have a relationship with the response.

What is the relationship between the response and each predictor? Here we are looking at effects like positive or negative value increase/decrease.  It maybe that some values need multiple predictors, X, do illicit a certain response.

What kind of equation can adequately summarise the relationship between Y and X?  Is the relationship linear or is it more complicated?  In the past, most methods for estimating f looked for a linear relationship, however there are more complex ways of determine the correct equation.





#### Discriminant Analysis  (not finished, gives a breif overview)

The formula for the discriminant analysis is as follows:

![discriminant_analysis](notes_images/discriminant_analysis.png)

In order to calculate this, we will need to figure out the values for each part of the equation, starting with S-hat.  "One approach to estimating the covariance matrix,..., needed for the discriminant function is to calculate a covariance matrix for each group and then to pool the values."(Myatt, Johnson, & Myatt, p147, 2009) and this is the S in the calculation, because we are estimating it, then it become S-hat. 

#### Pooling data

Pooling can refer to combining data, but it can also refer to combining information rather than the raw data. One of the most common uses of pooling is in estimating a variance. If we believe that 2 populations have the same variance, but not necesarily the same mean, then we can calculate the 2 estimates of the variance from samples of the 2 groups, then pool them (take a weighted average) to get a single estimate of the common variance. We do not compute a single estimate of the variance from the combined data because if the means are not equal then that will inflate the variance estimate.


#### Covariance Matrix

The __S-hat__ in the discriminant analysis can be worked out using the covariance matrix. Ordinarily, you can use __cov(M)__ to make a covariance matrix, however below we also show how to manually calculate the matrix. From there, S-hat in inverted to give the S-hat<sup> -1</sup>

![covariance](covariance.png)


```R

```


```R
a <- c(1,2,3,4,5,6)
b <- c(2,3,5,6,1,9)
c <- c(3,5,5,5,10,8)
d <- c(10,20,30,40,50,55)
e <- c(7,8,9,4,6,10)
 
#create matrix from vectors
M <- cbind(a,b,c,d,e)
```


```R
# R built-in fuction for covariance matrix and is the best I could find for the time being
# Manually calculating the covariance in R is a pain in the arse and is not recommended by
# guys on stakesoverflow.  Hopefully it's not a thing we have to do.
cov(M) 

```


<table>
<thead><tr><th></th><th scope=col>a</th><th scope=col>b</th><th scope=col>c</th><th scope=col>d</th><th scope=col>e</th></tr></thead>
<tbody>
	<tr><th scope=row>a</th><td> 3.5      </td><td> 3.000000 </td><td> 4.0      </td><td> 32.500000</td><td>0.400000  </td></tr>
	<tr><th scope=row>b</th><td> 3.0      </td><td> 8.666667 </td><td> 0.4      </td><td> 25.333333</td><td>2.466667  </td></tr>
	<tr><th scope=row>c</th><td> 4.0      </td><td> 0.400000 </td><td> 6.4      </td><td> 38.000000</td><td>0.400000  </td></tr>
	<tr><th scope=row>d</th><td>32.5      </td><td>25.333333 </td><td>38.0      </td><td>304.166667</td><td>1.333333  </td></tr>
	<tr><th scope=row>e</th><td> 0.4      </td><td> 2.466667 </td><td> 0.4      </td><td>  1.333333</td><td>4.666667  </td></tr>
</tbody>
</table>




```R
# This covariance calculation only works for matrix's and not dataframes hence why cov()
# seems a better choice over manually calculating it.

k  <- ncol(M)  # number of columns variables.
n  <- nrow(M)  # number of rows or subjects i.e. a, b, c, d, e.

# %*% = matrix multiplication
# Produces the mean for each column.
M_mean  <- matrix(data=1, nrow = n) %*% 
  cbind(mean(a), mean(b), mean(c), mean(d), mean(e))  # could do this with summarise_all

# The difference between the mean and each vector of the column.
D  <- M - M_mean

# Formulate the covariance matrix.
# (n-1)^-1 creates inverse matrix.
# t(D) creates transpose of matrix.
S-hat  <- (n-1)^-1 * t(D) %*% D

S-hat # Estimate of covariance. 

```


    Error in ncol(M): object 'M' not found
    Traceback:
    

    1. ncol(M)


#### Important concept to mastering data mining 
##### by Manoj Wijekulasuriya

##### Chapter 6 Week 1 material. (only part way through it, was a nightmare to read. Find video if you can instead of reading the book lol). 

Is a two step process where the database attributes, consisting of tuples, chosen from a particular entity(ies) to be trained aka. (training set, learning step). Each set of individual tuples that make up a training set are called training tuples.  

It is good idea not to have too many attributes being trained in a set as it leads to a phenomon known as  [curse of dimensionality](https://en.wikipedia.org/wiki/Curse_of_dimensionality) where the data becomes too large to be able to statistically predict the behaviour of there nearest neighbour, though three dimensions are thought to be a fairly reasonable amount to train with.   

The attributes selected from within one or many entities are used to determine a class label attribute and may look something like this, ('FNAME', 'LNAME', 'EMPLOYED'). The class label attribute is the Y value we wish to predict in the second phase, in this case it is mostly likely EMPLOYED.  It also appears that there have to be a link between the entities of each class, i.e. PK, FK, for the training to work effectively. 

Since we are choosing a select amount of attribute values, <sub>X1, X2, ... Xn</sub>, from a database of attribute, <sub>A1, A2, ... An </sub>, the class label attributes most likely will be discrete and preferably unordered that can fit into a category or bin. Since we know which class the attributes may fall into in advanced we call this __supervised learning.

_Each attribute represents a “feature” of X . Hence, the pattern recognition literature uses the term feature vector rather than attribute vector._

In comparison, unsupervised learning is when the class lable attribute(s) with which the data falls into are generally not known during the training phase and may only become apparent using tools such as clustering.  

Example from data mining text, if we did not have the loan decision data available for the training set, we could use clustering to try to determine “groups of like tuples,” which may correspond to risk groups within the loan application data. 

Preparing Data

1. __Data cleaning__ 

    - Replace missing values via some statistical technic.
    - Apply smoothing technique. (never hear of it).
    
Most learning technics, i.e. supervised and unsupervised, have capabilities for handling noise and missing data, doing it prior to learning phase can reduce possible conflicts.  Doesn't specifiy what these are exactly.

2. __Relevant analysis

- Perform correlation tests on potential attributes to be used for training.
- Strong correlation be two attributes <sub>A1 and A2</sub>
   - Therefore, either <sub>A1 or A2</sub> could be left out of training set. Increasing time to prediction.

__Irrelevant analysis

Some times the analyst may have to use attributes that are not correlated in anyway or maybe slightly correlated.  Normally these would be irrelevant to the learning phase, but the goal here is to closely predict the uncorrelated data and create output that matches the irrelavant attributes.  __Feature subset selection__ is a machine learning technique used to predict the probability distribution so that it closely matches the original distribution of uncorrelated data.  For some stuffed up reason, it is also called __Attribute subset selection.

However, the most common use of __relevant analysis__ and __feature subset selection__ is to find data classes that __do not__ contribute to the _classification_or _prediction_ task and then leave the attributes out of the training and potentially speeding up the process.   

Removing __irrelevant attributes__ can improve the training results (predictions), as the distance between the __relevant attributes__ and __irrelevant attributes__ vector contents may be sparse which, then alters the prediction, much like how outliers can corrupt the mean, hence we remove them. 

The aim is such that, the time spent on finding the irrelevant attributes via the techniques above and then training the data should be less than if we had of kept the original data with uncorrelated attributes. 

3. Data transformations

- Normalisation. Rescaling a column/attribute to values that fit between 0.0 and 1.0 or even 1.0 to 1.0.  Note, found that this is done with beta transformations of data (see R Code 1) and is often used when measureing distances between the values in the chosen tuples i.e. (WAGE, GENDER-M/F, CLASS_LAB_ATTR_TO_PREDICT) as GENDER is binary, there is a large step between 0 and 1 and WAGE of 100k. Normalise it!

- Generalisation. Similar to above. Take WAGE and put it into categories i.e. LOW, MEDIUM, HIGH etc. Each step between LOW, MEDIUM and HIGH is only 1.0, maybe this is the 1.0 to 1.0 the book referred too, not sure, seems to makes sense.

Generalisation can also be used to compress the data into an higher level attributes, e.g. street -> city which, leads to fewer input/output tuples.  Does it lead to the same results as if 'streets' were not compressed? [not asked]

- Other transformations (just a few)
     - wavelet transformation and principle components analysis.
     - discretization techniques, such as binning, histogram analysis, and clustering.


#### Comparing Classification and Prediction Methods (Excert from book)

Classification and prediction methods can be compared and evaluated according to the following criteria: (couldn't be farked trying to paraphrase this, tell me if it is important as I'm not going to read it lol)

- Accuracy: The accuracy of a classifier refers to the ability of a given classifier to correctly predict the class label of new or previously unseen data (i.e., tuples without class label information). Similarly, the accuracy of a predictor refers to how well a given predictor can guess the value of the predicted attribute for new or previously unseen data. Accuracy measures are given in Section 6.12. Accuracy can be estimated using one or more test sets that are independent of the training set. Estimation techniques, such as cross-validation and bootstrapping, are described in Section 6.13. Strategies for improving the accuracy of a model are given in Section 6.14. Because the accuracy computed is only an estimate of how well the classifier or predictor will do on new data tuples, confidence limits can be computed to help gauge this estimate. This is discussed in Section 6.15.

- Speed: This refers to the computational costs involved in generating and using the given classifier or predictor. 

- Robustness (aka Pamela Anderson): This is the ability of the classifier or predictor to make correct predictions given noisy data or data with missing values. 

- Scalability: This refers to the ability to construct the classifier or predictor efficiently given large amounts of data. 

- Interpretability: This refers to the level of understanding and insight that is provided by the classifier or predictor. Interpretability is subjective and therefore more difficult to assess. We discuss some work in this area, such as the extraction of classif ication rules from a “black box” neural network classifier called backpropagation (Section 6.6.4).



### Classification decission tree induction [Roots - Sepultura](https://www.youtube.com/watch?v=F_6IjeprfEs)

![classification_tree_induction](notes_images/classification_tree_induction.png) 

-  Decision trees can easily be converted to classification rules.
-  Decision trees can handle high dimensional data without needing domain knowledge.

The book is very lengthy and too over the top to translate. Maths used to analyse positive/negative skewed or sparce data: 
- Log transformations. Fig 2.
![decision_tree_induction](notes_images/classification_tree_induction_2.png)
- Square root to normalise the data i.e. same as normalising distribution in stats. Fig 3
![Gina_square_classifier](notes_images/gina_tree_classification.png) Fig 3
- Many more, may as well see what JCU prefer.

### Na ï ve Bayesian Classifier [Upon a burning body](https://www.youtube.com/watch?v=q2uRSm4P7xw)
Having zero's in a tuple can turn a high probability, or 1.0, to a low probability of 0.0, leading to mis-classification of attributes. 

There is a simple trick to avoid this problem. We can assume that our training database, D, is so large that adding one to each count that we need would only make a negligible difference in the estimated probability value, yet would conveniently avoid the case of probability values of zero.

Bayesian classifiers are statistical tool that feature the use of mean and the standard deviation to determine the probability.

Example from book.

We wish to work out the probability that someone 35 years old buys a computer. 

    P(age = 35|buys_computer=yes) Hypothesis we wish to prove/disprove
    
To work out the bayesian classifier, we just feed it the mean, in this case 38years, with a standard deviation of +/- 12 years.  If we were to view only one tuple going through the bayesian classifier (35, $40000) for columns *age*, *income* and the class label, *buy_computer* and the data was taken from continuous data therefore, the we can calculate the probability: 

    P = L <= J <= M.  

Because the estimate age is 35. We only need to look at part of the equation above. 

    P = L <= J (probability of L being less than J)

Here's a neat trick, J is in the middle, so it's the mean. any value in age (L) that is less then the mean (J) is put in one basket or leaf, and anything greater is put in other basket. So from the example above the tuple was (35, $40000), it is less than the mean so it goes in to one side of the classification tree.





##### The two paragraphs below are techniques used by a dude in data science.  It is recommended that we know or at least become familiar with the terms, who knows with this bloody course.

We use Cluster Analysis to segment of customers. The models such as K-means, Kohonen and twoStep are extremely useful in this. The anomaly detection model is another good way to segment your customers. As with the classification analysis, the predictive models such as __Neural Network__, `Linear Regression`, __C5.0__, `CHAID`, __QUEST__ and `C&R Tree` are the front runners. As for the association rule analysis we use __Apriori model__. 

Before feeding data into models, the miners should pay attention to __factor__ or __principal component analysis__ and __feature selection models__ to identify independent and important fields from your data set.

In data mining, preparing data for the models plays a huge part for the success of your models (always remember, garbage in - garbage out). That is why, we spend 60% - 70% of the time to clean our data before going into models. The higher the quality of the data used in data mining, the more likely it is that the predictions or results are accurate. Apart from cleaning the data, we use techniques such as __balancing__, `data transformation`, __binning__, `conversions (flag to range)` and __partitioning__ for the success in our models.


