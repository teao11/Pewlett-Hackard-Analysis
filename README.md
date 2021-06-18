# Pewlett-Hackard-Analysis

## Overview

The purpose of this analysis was to implement the skills we had learnt throughout the SQL module in to practice. We were tasked with investigating the population of the workforce that was retiring. This information can be used to inform management where bandwidth constrictions are likely to happen, and where hiring needs to be focussed.

We were also tasked wit highlighting potential mentors, by querying and finding employees that were _nearing_ retirement age, but could move on to part time while training the younger staff members.

## Results

The four major points of the two deliverables were as follows:

Firstly, we had to create our first **retirement_titles** table, identifying the employees that are preparing to retire. This was accomplished by joining the **Employee and Title** tables:

<img width="553" alt="Screen Shot 2021-06-17 at 11 44 45 PM" src="https://user-images.githubusercontent.com/46773181/122518405-ffad8180-cfc5-11eb-9bc7-cbe95e3efc63.png">

<img width="628" alt="Screen Shot 2021-06-17 at 11 49 45 PM" src="https://user-images.githubusercontent.com/46773181/122518969-c295bf00-cfc6-11eb-8123-c9622cf81bd7.png">

Secondly, we identified that this table contained employee entries, because one employee could have multiple titles during their tenure with the company. As a result, we had to create an additional title that took a distinct employee row based on the most recent title:

<img width="563" alt="Screen Shot 2021-06-17 at 11 46 23 PM" src="https://user-images.githubusercontent.com/46773181/122518562-3a171e80-cfc6-11eb-8413-a869fcbbeae0.png">

Third, we wanted to retrieve a count of the retiring employees by title to get a sense of the positions / departments that would be most greatly affected by the retiring wave:

<img width="565" alt="Screen Shot 2021-06-17 at 11 47 42 PM" src="https://user-images.githubusercontent.com/46773181/122518716-69c62680-cfc6-11eb-801b-a73044830c5e.png">

<img width="591" alt="Screen Shot 2021-06-17 at 11 49 12 PM" src="https://user-images.githubusercontent.com/46773181/122518863-a09c3c80-cfc6-11eb-9b62-0845420f4f5a.png">

Finally, we wanted to create a table containing the employees that were nearing retirement age, that would be ideal mentors! This was achieved by joining the Employees, Department Employees and Title tables and evaluating tenure and birth date:

<img width="561" alt="Screen Shot 2021-06-17 at 11 51 55 PM" src="https://user-images.githubusercontent.com/46773181/122519162-fffa4c80-cfc6-11eb-83e9-891530e02650.png">

## Summary

Based on the count by titles shown above, there will need to be 90,398 roles filled as the silver tsunami begins to make an impact. These are mainly in engineering roles, which is concerning as these positions are very difficult to fill (anecdotally, demand for engineers outweighs the supply of qualified labor).

As we look at the counts within the mentorship eligibility table by title:

<img width="461" alt="Screen Shot 2021-06-17 at 11 58 18 PM" src="https://user-images.githubusercontent.com/46773181/122519940-e60d3980-cfc7-11eb-8e45-7fb30aa1f0f7.png">

<img width="544" alt="Screen Shot 2021-06-17 at 11 59 07 PM" src="https://user-images.githubusercontent.com/46773181/122520038-0210db00-cfc8-11eb-954e-81a17bfad40d.png">

We see that there are very few mentors relative to the amount within the silver tsunami, adding to the concern mentioned above.

Some additional queries that I would suggest would be joining the Department Manager table to the retiring employees. To understand the full impact of these employees retiring, we should look at whether these are all managers or are they just senior staff members? What percentage of the managers are retiring? This way, the company can begin to look at not only replacing these employees, but those that are managers!

A query would be to break out (group by) the retiring population's date of birth. This can give management a better sense of planning, as they can actually see the size of each cohort (perhaps the majority still have a few years left -- each year is vital in planning!!)
