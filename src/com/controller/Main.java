package com.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Main {

	public static void main(String[] args) {
		int[] array = {5,3,5,7,1};
		int target = 8;

		List<int[]> resultList = findPairs(array, target);

		if (resultList.size() != 0) {
			System.out.println("Result pair locations found as follows:");
			for (int i = 0; i < resultList.size(); i++) {
				System.out.println(Arrays.toString(resultList.get(i)));
			}
		} else {
			System.out.println("No result pair locations found.");
		}
		
		
		List<int[]> findPairsSimply = findPairsSimply(array, target);
		
		for (int[] is : findPairsSimply) {
			System.out.println("********************* "+Arrays.toString(is));
		}
	}

	/**
	 * Returns a List of integer arrays that hold unique locations within the
	 * array that sum to the target. Algorithm has on average O(n) running time
	 * and uses O(n) auxiliary temporary space.
	 * 
	 * @param array the number array
	 * @param target the target number
	 * @return list holding unique number location pairs
	 */

	public static List<int[]> findPairs(int[] array, int target) {
		// Initialize result list
		List<int[]> resultList = new ArrayList<>();

		// Check for null array
		if (array == null) {// Signify a null array with (-1, -1)
			resultList = Arrays.asList(new int[] { -1, -1 });
			return resultList;
		}

		// Populate HashMap that will hold numbers
		// as well as their locations in the array
		Map<Integer, List<Integer>> map = new HashMap<>();

		for (int i = 0; i < array.length; i++) {
			if (!map.containsKey(array[i])) {
				List<Integer> list = new ArrayList<>();
				list.add(i);
				map.put(array[i], list);
			} else { // Map already contains integer
				List<Integer> list = map.get(array[i]);
				list.add(i);
				map.put(array[i], list);
			}
		}

		// Iterate through array one element at a time
		for (int i = 0; i < array.length; i++) {
			// Initialize the 'desired' number we are searching for
			int desired = target - array[i];

			// Search map for desired number
			if (map.containsKey(desired)) {
				List<Integer> list = map.get(desired);

				// Add number locations to the result list
				for (int j = 0; j < list.size(); j++) {

					// In order to avoid duplicates, only add
					// location if second coordinate is larger than first.
					if (list.get(j) > i) {
						int[] x = { i, list.get(j) };
						resultList.add(x);
					}
				}
			}
		}

		return resultList;
	}

	/**
	 * Returns a List of integer arrays that hold unique locations within the
	 * array that sum to the target. Algorithm has O(n<sup>2</sup>) running time
	 * but does not use any auxiliary temporary space.
	 * 
	 * @param array the number array
	 * @param target the target number
	 * @return list holding unique number location pairs
	 */

	public static List<int[]> findPairsSimply(int[] array, int target) {
		// Initialize result list
		List<int[]> resultList = new ArrayList<>();

		// Check for null array
		if (array == null) {// Signify a null array with (-1, -1)
			resultList = Arrays.asList(new int[] { -1, -1 });
			return resultList;
		}

		// Iterate through array
		for (int i = 0; i < array.length - 1; i++) {
			for (int j = i + 1; j < array.length; j++) {
				// If two numbers equal target then add to list
				if ((array[i] + array[j]) == target) {
					resultList.add(new int[] { i, j });
				}
			}
		}
		return resultList;
	}
}