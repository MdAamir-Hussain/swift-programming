import Foundation

func binarySearch(arr: [Int], target: Int) -> Int? {
	var l = 0
	var r = arr.count - 1

	while l <= r{
		let mid = l + (r-l)/2

		if arr[mid] == target{
			return mid
		}
		if arr[mid] > target {
			r = mid - 1 
		}
		else{
			l = mid + 1
		}
	}
	return nil
}

let sortedarry = [4,5,2,8,7,913,45,75,11]
let target = 45

if let result = binarySearch(arr: sortedarry, target: target){
	print("Target found at index : \(result)")
}
else{
	print("Target not found")
}