
methods=(msp odin energy mahalanobis sofl rowl atom)

for method in "${methods[@]}"; do
	echo "ID: CIFAR-100"
	echo "No Sparsity, method: $method"
	python ood_eval.py --in-dataset CIFAR-100 --method $method
	echo "With Sparsity p=90, method: $method"
	python ood_eval.py --in-dataset CIFAR-100 --p 90 --method $method
done

for method in "${methods[@]}"; do
	echo "ID: CIFAR-10"
	echo "No Sparsity, method: $method"
	python ood_eval.py --in-dataset CIFAR-10 --method $method
	echo "With Sparsity p=90, method: $method"
	python ood_eval.py --in-dataset CIFAR-10 --p 90 --method $method
done
