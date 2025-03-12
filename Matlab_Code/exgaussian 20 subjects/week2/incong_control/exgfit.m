% exgfit  Fit ExGaussian distribution to data
% Tobias Johansson
% https://www.mathworks.com/matlabcentral/fileexchange/70225-exgfit-fit-exgaussian-distribution-to-data?s_tid=ta_fx_results
% [MU,SIGMA,TAU] = exgfit(X,S) fits the ExGaussian distribution to data in
% vector X using maximum likelihood and returns the fitted parameters MU,
% SIGMA, and TAU. The ExGaussian distribution is formed by the sum of
% independent normal and exponential observations. MU and SIGMA denotes
% the mean and standard deviation of the normal component and TAU denotes
% the mean of the exponential component. S is a three-element vector of
% starting values for MU, SIGMA, and TAU when fitting the distribution to
% data. SIGMA must be positive and TAU at least zero. 
%
%   Example
%         n = 200;
%         mu = 500; sigma = 200; tau = 400;
%         x = randn(1,n)*sigma+mu-log(1-rand(1,n))*tau;
%         s = [100,100,100];
%         [mu,sigma,tau] = exgfit(x,s); 
%         % Below plots the results without Statistics Toolbox
%         ncdf = @(x) 0.5*(1+erf(x/sqrt(2)));
%         epdf = @(x,mu,sigma,tau) (1/tau).*exp((mu/tau)+(sigma^2/(2*tau^2))-...
%             (x/tau)).*ncdf( (x-mu-(sigma^2/tau))./sigma);
%         histogram(x,'Normalization','pdf','Facecolor',[.6,.6,.6]);
%         hold on
%         xx = linspace(min(x),max(x),1e3);
%         plot(xx,epdf(xx,mu,sigma,tau),':k','linew',2);
%         set(gca,'Color',[.98,.98,.98],'FontSize',15)
%         grid on
%         xlabel('X','FontSize',25)
%         ylabel('pdf','FontSize',25)
function [mu,sigma,tau] = exgfit(x,s)
ncdf = @(x) 0.5*(1+erf(x/sqrt(2)));
epdf = @(x,mu,sigma,tau) (1/tau).*exp((mu/tau)+(sigma^2/(2*tau^2))-...
    (x/tau)).*ncdf( (x-mu-(sigma^2/tau))./sigma);
L = @(p) sum(-log(epdf(x,p(1),p(2),p(3))));
pfit = fmincon(L,s,[],[],[],[],[-Inf,0+eps,0],[]);
[mu,sigma,tau] = deal(pfit(1),pfit(2),pfit(3));
end

