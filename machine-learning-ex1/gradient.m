  tt = transpose(theta);
xt = transpose(X);
val = tt*xt

    sigma = [0;0;0];
for i = 1:n;
    for j = 1:m;
        sigma(i,1) = sigma(i,1) + (val(j)-y(j))*X(j,i);
    end
end

for k = 1:n;
theta(k,1)= theta(k,1) - alpha*(1/m)*(sigma(k,1)); 
temp(k,1) = theta(k,1);
end

/% or this %/
  
sigma0 = 0;
        sigma1 = 0;
        sigma2 = 0;
        for j = 1:m;
     sigma0 = sigma0 + ((theta(1,1)+theta(2,1)*X(j,2)+theta(3,1)*X(j,3)-y(j,1)));
  sigma1 = sigma1 + ((theta(1,1)+theta(2,1)*X(j,2)+theta(3,1)*X(j,3)-y(j,1))*X(j,2));
  sigma2 = sigma2 + ((theta(1,1)+theta(2,1)*X(j,2)+theta(3,1)*X(j,3)-y(j,1))*X(j,3));
        end
  theta(1,1) = theta(1,1)- alpha*(1/m)*sigma0;
  theta(2,1) = theta(2,1)- alpha*(1/m)*sigma1;
  theta(3,1) = theta(3,1)-alpha*(1/m)*sigma2;
   temp0 = theta(1,1) ;
  temp1 = theta(2,1) ;
  temp2 = theta(3,1) ;
