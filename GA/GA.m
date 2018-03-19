%GA algriothem  is a optimal method, Give a objective function,get the best
%solution
%%%%%%%the procedure flow%%%%%%%%%%%%%
%1、the population intial :the number of individual,encode,the form of fitness, 
%while{
%the condition of procedure ending 
%2、calculate the fitness function,
%3、selection/reproduction
%4、crossover
%5、mutation
%6、get the new population
%}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%The procedure has six function%%%%%%%%%%%%%
%function pop_value=matrix_bin2dec(pop,Umax,Umin,encode_length); get the meaning value from encode
%function fitness_value=cal_fitness(pop_value);%calculate the fitness value
%function [bestindividual,bestfit] = GA_best_indi(pop,fitness_value);%get the best individual in the population
%function newpop=selection(pop,fitness_value);%selection
%function newpop = crossover(newpop,pro_crossover);%crossover
%function newpop = mutation(newpop,pro_mutation); %mutation
%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%main %%%%%%%%%%%%%%%
%%%%%%This is one dimension optimal method%%%%%
clear all
clc
%initialize the population
% size of population
population_size=100;
% length of encode
encode_length=10;
% probability of crossover
pro_crossover=0.3;
% probability of mutation
pro_mutation=0.001;
%one dimension 
Umin=0;Umax=10;deta=0.1;
encode_length=ceil(log2((Umax-Umin)/deta+1));
%my_bin2gray(x_bin) is function that binary covert to gray
%my_gray2bin(x_gray)is function that gray covert to binary

%initialize the population with population_size,encode_length
pop=round(rand(population_size,encode_length));
%numbers of iteratation
count=0;
while count<300
count=count+1;
%get the meaning value from encode
pop_value=matrix_bin2dec(pop,Umax,Umin,encode_length);
%calculate the fitness value
fitness_value=cal_fitness(pop_value);
%get the best individual in the population
[bestindividual,bestfit] = GA_best_indi(pop,fitness_value);
%selection
newpop=selection(pop,fitness_value);
%crossover
newpop = crossover(newpop,pro_crossover);
 %mutation
newpop = mutation(newpop,pro_mutation);
%update the population
pop = newpop;
end
bestindividual
bestfit
count








