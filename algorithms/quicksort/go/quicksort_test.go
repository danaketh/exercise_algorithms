package _go

import (
	"reflect"
	"testing"
)

func TestQuickSort(t *testing.T) {
	arr := []int{3, 0, 2, 5, -1, 4, 1}
	expected := []int{-1, 0, 1, 2, 3, 4, 5}
	result := QuickSort(arr)

	if reflect.DeepEqual(result, expected) == false {
		t.Fatalf("Expected %v, but got %v", expected, result)
	}
}
