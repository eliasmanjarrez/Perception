% exgfit  Fit ExGaussian distribution to data
% Tobias Johansson
%INSTRUCTIONS
%A probability density function (PDF) represents the distribution of values
%for a random variable x
%Instruction: You must insert the x file with the reaction times in 
%milliseconds units into the
%current Folder and proceed to upload it as follows:
%load x.txt -ascii
% x is the vector with the reaction time (RT) values in milliseconds (ms)
x=x;
s = [100,100,100]; %these are mu, sigma and tau starting values in milliseconds.
% s is a three-element vector of
% starting values for MU, SIGMA, and TAU that allows fitting the distribution to
% data. They are in milliseconds (ms) units.
% also using [200,200,200] yields to the same ftted results for reaction
% time data in humans.
        [mu,sigma,tau] = exgfit(x,s);          % Below plots the results without Statistics Toolbox
        ncdf = @(x) 0.5*(1+erf(x/sqrt(2)));
        epdf = @(x,mu,sigma,tau) (1/tau).*exp((mu/tau)+(sigma^2/(2*tau^2))-...
            (x/tau)).*ncdf( (x-mu-(sigma^2/tau))./sigma);
        histogram(x,'Normalization','pdf','Facecolor',[.7,.7,.7]);
        hold on
         xx = linspace(min(x),max(x),1e3);
         plot(xx,epdf(xx,mu,sigma,tau),':k','linew',2);
        set(gca,'Color',[.98,.98,.98],'FontSize',15)
        grid on
        xlabel('Reaction Time (ms)','FontSize',25)
        ylabel('ExGaussian pdf','FontSize',25)
         yy=epdf(xx,mu,sigma,tau);
         xx=xx';   
         yy=yy';
           
           %coh_adhd1_1_epdf=[xx,yy]; 
           %save coh_adhd1_1_epdf.txt -ascii coh_adhd1_1_epdf; %cambiarlo cada vez
        %probability density function (pdf)
 %Results of mu, sigma and tau obtained after the fitting (note these values are different to the starting values):
       
        sigma;
        tau; 
         mu;
format shortE
%output data
analyzed_data = [sigma tau mu]';   
analyzed_data = round(analyzed_data, 2);

