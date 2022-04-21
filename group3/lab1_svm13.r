set.seed(1)
n <- 150 #number of data points
p <- 2 # dimension
sigma <- 1 # variance of the distribution
meanpos <- 0 # centre of the distribution of positive examples
meanneg <- 3 # centre of the distribution of negative examples
npos <- round(n / 2) # number of positive examples
nneg <- n - npos # number of negative examples
# Generate the positive and negative examples
xpos <- matrix(rnorm(npos * p, mean = meanpos, sd = sigma), npos, p)
xneg <- matrix(rnorm(nneg * p, mean = meanneg, sd = sigma), npos, p)
x <- rbind(xpos, xneg)
# Generate the labels
y <- matrix(c(rep(1, npos), rep(-1, nneg)))


cv.folds <- function(n,folds=3)
 ## randomly split the n samples into folds
 {
  split(sample(n),rep(1:folds,length=length(y)))
 }
#Write a function cv.ksvm <- function(x,y,folds=3,...) which returns a vector ypred of predicted decision score for all points by k-fold cross-validation.
#Compute the various performance of the SVM by 5-fold cross-validation. Alter- natively, the ksvm function can automatically compute the k-fold cross-validation accuracy:
svp <- ksvm(x,y,type="C-svc",kernel='vanilladot',C=1,scaled=c(),cross=5)
print(cross(svp))

