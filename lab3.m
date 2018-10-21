%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% BME777: LAB 3: Multilayer Neural Networks.
% Statlog (Heart) Dataset: https://archive.ics.uci.edu/ml/datasets/Statlog+%28Heart%29
% The first two features are contained in the first two columns.

%%
% 1st feature: Resting blood pressure.
% 2nd feature: Oldpeak = ST depression induced by exercise relative to rest.
%%

% The third column contains the label information.
% Class +1: Absence of heart disease.
% Class -1: Presence of heart disease.
% 50 samples were extracted for each class.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Inputs:
% 1. Eta: Learning rate.
% 2. Theta: Threhold for the cost function to escape the algorithm.
% 3. MaxNoOfIteration: Maximum number of iteration.
% 4. Problem: 1: XOR, otherwise: Classification problem with given dataset.
% 5. Data: the dataset used for training NN when problem ~=1.
% Outputs:
% 1. J: an array of cost.
% 2. w: trained weight matrix.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Example of use:
% Eta = 0.1;
% Theta = 0.001;
% MaxNoOfIteration = 300;
% Problem = 1;
% [J,w] = lab3(Eta,Theta,MaxNoOfIteration,Problem,0);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [J,w] = lab3(Eta ,Theta, MaxNoOfIteration, Problem, Data)


%Initialization.

if Problem == 1
    wih1 =; %weight vector input to hidden unit no.1.
    wih2 =; %weight vector input to hidden unit no.2.
    who1 =; %weight vector hidden to output unit. 
    
    % Add data to feature 1,2 and label vectors.
    x1 = [-1 -1 1 1];
    x2 = [-1 1 -1 1];
    t = [-1 1 1 -1];
else
    wih1 =; %weight vector input to hidden unit no.1.
    wih2 =; %weight vector input to hidden unit no.2.
    who1 =; %weight vector hidden to output unit. 
    
    % Add data to feature 1,2 and label vectors.
    x1 = Data(:,1)';
    x2 = Data(:,2)';
    t = Data(:,3)';
end
    
% Initialize number of iteration and cost.
r = 0;
J = zeros(MaxNoOfIteration,1);

while(1);
    
    r=r+1;
    
    % Initialize gradients of the three weight vectors.
    DeltaWih1 = [0 0 0]; % Inputs of bias, x1,x2 to hidden neuron 1.
    DeltaWih2 = [0 0 0]; % Inputs of bias, x1,x2 to hidden neuron 2.
    DeltaWho1 = [0 0 0]; % Inputs of bias, y1,y2 to output neuron.
    
    % Initialize training sample order and predicted output.
    m = 0;
    Z = zeros(1,length(x1));
    
    while(m<length(x1))
        
        m = m + 1;
        
       
        Xm =;
        y1 =;
        y2 =;
        Ym =;
        Z(m) =;
        
        % Calculate the sensitivity value of each hidden neuron and the output neuron.
        DeltaO1 =; % Sensitivity value of the output neuron.
        DeltaH1 =; % Sensitivity value of hidden neuron 1.
        DeltaH2 =; % Sensitivity value of hidden neuron 2.
        
        % Update the gradient.
        DeltaWih1 =;
        DeltaWih2 =;
        DeltaWho1 =;          
        
    end
    
    % Update the weight vectors.
    wih1 =; % Weight vector input to hidden unit no.1
    wih2 =; % Weight vector input to hidden unit no.2
    who1 =; % Weight vector hidden to output unit.
    
    % Check the condition to stop.
    J(r)=;

    if()
        break;
    end

end

wih1

wih2

who1

w = [wih1; wih2; who1]    
    
end 


