<?php declare(strict_types=1);

function quicksort(array $arrayToSort): array
{
    if (count($arrayToSort) < 2) {
        return $arrayToSort;
    }

    $pivot = $arrayToSort[0];
    $lower = $greater = [];

    for ($i = 1; $i < count($arrayToSort); $i++) {
        if ($arrayToSort[$i] <= $pivot) {
            $lower[] = $arrayToSort[$i];
        } else {
            $greater[] = $arrayToSort[$i];
        }
    }

    return array_merge(
        quicksort($lower),
        [$pivot],
        quicksort($greater)
    );
}

$array = [3, 0, 2, 5, -1, 4, 1];
$expected = [-1, 0, 1, 2, 3, 4, 5];

if (quicksort($array) === $expected) {
    exit(0);
} else {
    exit(1);
}
