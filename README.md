# World Trends

## Table Of Contents
* About The Project
  * Introduction
  * Insights
* Getting Started
  * Built With
  * Prerequisites
* References

## About The Project

### Introduction

The World Bank Trend dataset has been taken for visualization such that various factors can be observed. Supporting dataset of demographic trends was also taken to provide deep insights using visualized graphs. 
Aim is to create Visuals for:
* **Demographic Data:**
  * Scatter Plot illustrating Birth Rate and Internet Usage Statistics by Country & categorised by Income Groups
  * Scatter Plot illustrating Birth Rate and Internet Usage Statistics by Country & categorised by Country Regions

* **World Bank Trends:**
  * Scatter Plot depicting Life Expectancy and Fertility Rate by country & categorised by Country Regions for Year 1960
  * Scatter Plot depicting Life Expectancy and Fertility Rate by country & categorised by Country Regions for Year 2013
  
  
### Insights

#### Internet Users and Usage
![Internet Users & Usage](https://github.com/mukulgoyal19/World-Trends/blob/master/Code%20and%20Insights/Internet%20Users.png)
* Histogram depicting Internet Users and usages.

#### Birth Rate VS Income Group
![Birth Rate VS Income Group](https://github.com/mukulgoyal19/World-Trends/blob/master/Code%20and%20Insights/Birth%20Rate%20vs%20Income%20group.png)
* Basic Scatter Plot to check Birth Rate and Income Group,
  * with Low Income Group, Birth rate is higher that means more number to population.
  * with Higher Income and Upper middle Income Category, Birth rate is quite less than Low Income Category.

#### Birth Rate VS Income Group (Box Plot)
![Birth Rate VS Income Group(Box Plot)](https://github.com/mukulgoyal19/World-Trends/blob/master/Code%20and%20Insights/Birth%20Rate%20vs%20Income%20group%20box%20Plot.png)
* Box Plot to check Birth Rate and Income Group,
  * with Low Income Group, Birth rate is higher and more number of births per year.
  * with Higher Income and Upper middle Income Category, Birth rate is quite less than Low Income Category.

#### Birth rate vs Internet Users (w.r.t. income groups)
![Birth rate vs Internet Users (w.r.t. income groups)](https://github.com/mukulgoyal19/World-Trends/blob/master/Code%20and%20Insights/Birth%20rate%20vs%20Internet%20Users%20(wrt%20income%20groups).png)
* High Income category are more Internet Users and has less Birth rate.
* Low Income Category are less Internet Users and have more Birth Rate.

#### Birth rate vs Internet Users (w.r.t. regions)
![Birth rate vs Internet Users (w.r.t. regions)](https://github.com/mukulgoyal19/World-Trends/blob/master/Code%20and%20Insights/Birth%20rate%20vs%20Internet%20Users%20(wrt%20regions).png)
* Population in Africa Region has more Birth Rate and are less users of Internet.
* Population in Europe has less Birth rate but are more users of Internet.
* Population in Asia, Middle East and Oceania have slighly more Birth Rate than Europe but are less Internet Users.

#### Life Expectancy vs Fertility rate of 1960
![Life Expectancy vs Fertility rate of 1960](https://github.com/mukulgoyal19/World-Trends/blob/master/Code%20and%20Insights/Life%20Expectancy%20vs%20Fertility%20rate%20of%201960.png)

#### Life Expectancy vs Fertility rate of 2013
![Life Expectancy vs Fertility rate of 2013](https://github.com/mukulgoyal19/World-Trends/blob/master/Code%20and%20Insights/Life%20Expectancy%20vs%20Fertility%20rate%20of%202013.png)

* In 1960, more the Fertility Rate lesser the Life Expectancy.
* In 2013, less the Fertility Rate better the Life Expectancy.
* In 1960, Europe Region had better life Expectancy than other Regions, Africa has the lowest.
* Similarly, In 2013, Europe Region & Asia had better life Expectancy than other Regions, Africa remains at the lowest with more fertility rate.
* On comparision of 1960 VS 2013, **Regions Asia, America and Middle East** have improved LIfe Expectancy and lesser Fertility Rate.


## Getting Started

### Built With
* [R Studio](https://rstudio.com/products/rstudio/download/)

### Prerequisites
Install following package using command: install.packages("package name")
* **ggplot2**: For Plotting Various graphs

## References
* ggplot packages. https://plot.ly/ggplot2/
* qplot : https://www.rdocumentation.org/packages/ggplot2/versions/3.2.1/topics/qplot
