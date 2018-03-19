# GA  
GA algriothem  is a optimal method, Give a objective function,get the best solution.  
the procedure flow:  
1 the population intial :the number of individual,encode,the form of fitness,   
Repeat until meeting some  condition
*    2 calculate the meaningful value from binary.[matrix_bin2dec](./matrix_bin2dec.m)  
    3 calculate the fitness function.[cal_fitness](./cal_fitness)  
    4 get the best individual.[GA_best_indi](./GA_best_indi)  
    4 selection/reproduction.[selection](./selection)  
    5 crossover.[crossover](./crossover)  
    6 mutation.[mutation](./mutation)  
    7 get the new population.  
ending   
