
gaussian([1,1,1]', [0,0,0]', [1 0 0; 0 1 0; 0 0 1])
gaussian([0.1,0.1,0.1]', [0,0,0]', [1 0 0; 0 1 0; 0 0 1])

try_mat = [1 1 1; 0.1 0.1 0.1];
vec_gaussian(try_mat, [0,0,0], [1 0 0; 0 1 0; 0 0 1]);


function p = vec_gaussian(X, mu, c)
n = size(X,1);
d = size(X,2);
one_vector(1:n) = 1;
mu_vec = mu(one_vector,:);
dev = X - mu_vec;
p = (1/(sqrt((2*pi)^d * det(c)))) * exp(-0.5 .* sum((dev*inv(c)) .* dev,2));
end


%x is row vector
function probab = gaussian(x, mu, c)
    d = size(x, 1);
    temp = inv(c)*(x-mu);
    pow = (x-mu)'*temp;
    pow = -0.5*pow;
    constant_term = 1/(((2*3.14)^(d/2))*det(c));
    probab = constant_term*exp(pow);
 end