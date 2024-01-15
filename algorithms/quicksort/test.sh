#!/bin/bash

# Test PHP implementation
if php quicksort_for.php; then
    echo "PHP 'for' Quicksort: OK"
else
    echo "PHP 'for' Quicksort: ERROR"
fi

if php quicksort_foreach.php; then
    echo "PHP 'for' Quicksort: OK"
else
    echo "PHP 'for' Quicksort: ERROR"
fi
