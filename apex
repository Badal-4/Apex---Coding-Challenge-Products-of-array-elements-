////Given an array of integers, return a new array such that each element at index i of the new array is the product of all the numbers in the original array except the one at i.

For example, if our input was [1, 2, 3, 4, 5], the expected output would be [120, 60, 40, 30, 24]. If our input was [3, 2, 1], the expected output would be [2, 3, 6].



public List<Integer> productOfNumbers(List<Integer> intVals){
   List<Integer> productLst = new List<Integer>();
   for (Integer k = 0; k < intVals.size(); k++){
     Integer sumOfVals = 1; // it's 1 because multiplying by 0 will always be 0
     for (Integer j = 0; j < intVals.size(); j++){
      if (j != k){
        sumOfVals *= intVals.get(j);
      }
     }
    productLst.add(sumOfVals);
   }
  return productLst;
}



//Simple my method
Integer[] ar = new Integer[]{1,2,3,4,5};
List<Integer> intList = new List<Integer>();
for(integer i=0;i<ar.size();i++)
{
    Integer pr = 1;
    for(Integer j=0;j<ar.size();j++)
    {
        if(ar[i] != ar[j])
        {
            pr *= ar[j];
        }
    }
    intList.add(pr);
}
System.debug('Result-->'+intList);
