#include <stdio.h>
#include <stdlib.h>

int* twoSum(int* nums, int numsSize, int target){
    for (int i=0; i < numsSize; i++)
    {
        for (int j=i+1; j < numsSize; j++)
        {
            if ((nums[i]+nums[j]) == target) {
                int *arr = (int *) malloc(sizeof(int) * 2);
                arr[0] = i;
                arr[1] = j;
                return arr;
            }
        }
    }
    return 0;
}

int main()
{
    int *ans;
    int nums[] = {2, 7, 11, 15};
    ans = twoSum(nums, 4, 26);
    printf("%d, %d", ans[0], ans[1]);
}