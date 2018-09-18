---
title: "Gapminder exploration"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
library(gapminder)
```

To explore gapminder, first open the data set!

```
library(gapminder)
```

Then view/print the data.

```{r print, echo=TRUE}
gapminder
```
Proceed to do some basic queries for an overview of what the data set really looks like!

```{r basic queries, echo=TRUE}
head(gapminder)
tail(gapminder)
names(gapminder)
ncol(gapminder)
length(gapminder)
nrow(gapminder)
summary(gapminder)
```

Just more exploring of the data set ...

```{r more queries, echo=TRUE}
table(gapminder$year)

table(gapminder$continent)

barplot(table(gapminder$continent))

```


*Next, some visual representation of the data!*


```{r basic plots, echo=TRUE}

plot(lifeExp ~ year, gapminder)

plot(lifeExp ~ gdpPercap, gapminder)

plot(lifeExp ~ log(gdpPercap), gapminder)


```


*Hmmm... So could trends in life expectancy and gdp by continent mirror each other??*


```{r more plots, echo =TRUE}
boxplot(gapminder$lifeExp ~ gapminder$continent)

boxplot(log(gapminder$gdpPercap) ~ gapminder$continent)

```


That's it for now!



