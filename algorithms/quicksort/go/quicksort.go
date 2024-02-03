package _go

func QuickSort(arr []int) []int {
	if len(arr) < 2 {
		return arr
	}

	left, right := 0, len(arr)-1
	pivot := left

	for i := left + 1; i <= right; i++ {
		if arr[i] < arr[left] {
			pivot++
			arr[i], arr[pivot] = arr[pivot], arr[i]
		}
	}

	arr[pivot], arr[left] = arr[left], arr[pivot]
	QuickSort(arr[:pivot])
	QuickSort(arr[pivot+1:])

	return arr
}
