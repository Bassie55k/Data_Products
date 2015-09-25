Quarter-back Passer Rating
========================================================
author: Bas Korevaar
date: September 24, 2015

Objective
========================================================

I enjoy watching NFL football and like all the stats, as those are important for fantasy football. One stat I've a long time wondered about it the quarter-back rating that they sometime show. So for this project I decided to make an app that would calculate the quarter-back rating.

In this short presentation I first explain the inputs that are needed, in another slide I show the calculations that need to be done, and in the last slide I just give an example.

Inputs
========================================================

- Number of Completions (COMP)
- Number of Attempts (ATT)
- Number of Yards (YDS)
- Number of Touch-Downs (TD)
- Number of Interceptions (INT)

One thing I learnt, that this rating is purely a passer-rating. Quarterbacks that run for 100 yards and 2 touch-downs do not get awarded for that in this number.

Calculations
========================================================

The formulas can be found at <https://en.wikipedia.org/wiki/Passer_rating>.

Four factors can first be calculated using in the following equations:

a = ((COMP/ATT) - 0.3) * 5;    b = ((YDS/ATT) - 3) * 0.25

c = (TD/ATT) * 20;             d = 2.375 - ((INT/ATT) * 25)

Then, the above calculations are used to calculate the passer rating:

Passer Rating = ((a + b + c + d) / 6) * 100


Example
========================================================

On September 8, 2014 in a game between the NY Giants and the Detroit Lions, Matt Stafford threw for 2 TDs and 346 yards on 32 attempts with 22 completions. This results in a completion ratio of 64.7058824%. 

Now we fill in the formulas:


```r
a=((22/32)-0.3)*5
b=((346/32)-3)*0.25
c=(2/32)*20
d=2.375-((0/32)*25)
Rating=((a+b+c+d)/6)*100
```
The passer rating is: 125.2604167.
