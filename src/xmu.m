function x_minus_mu = xmu(size1,dimension,class,mu_1)
x_minus_mu = zeros(size1,dimension);

for i = 1:size1
    for j = 1:dimension
      x_minus_mu(i,j) = class(i,j) - mu_1(j);
    end
end