# Domain 4 - Read, Generate, Modify Configurations

The code mentioned in this document are used in the HashiCorp Certified Terraform Associate 2020 video course.


# Video-Document Mapper

| Sr No | Document Link |
| ------ | ------ |
| 1 | [Understanding Attributes and Output Values in Terraform][PlDa] |
| 2 | [Referencing Cross-Account Resource Attributes][PlDb] |
| 3 | [Terraform Variables][PlDc] |
| 4 | [Approaches for Variable Assignment][PlDd] |
| 5 | [Data Types for Variables][PlDe] |
| 6 | [Count and Count Index][PlDf] |
| 8 | [Conditional Expressions][PlDg] |
| 9 | [Local Values][PlDh] |
| 10 | [Terraform Functions][PlDi] |
| 11 | [Data Sources][PlDj] |
| 12 | [Debugging In Terraform][PlDk] |
| 13 | [Terraform Format][PlDl] |
| 14 | [Terraform Validate][PlDm] |
| 15 | [Load Order and Semantics][PlDn] |
| 16 | [Dynamic Blocks][PlDo] |
| 17 | [Tainting Resources][PlDp] |
| 18 | [Splat Expression][PlDq] |
| 19 | [Terraform Graph][PlDr] |
| 20 | [Saving Terraform Plan to File][PlDs] |
| 21 | [Terraform Settings][PlDt] |
| 22 | [Dealing with Large Infrastructure][PlDu] |
| 23 | [Fetching Data for Maps and List in Variable][PlDv] |

   [PlDa]: <https://github.com/zealvora/terraform-beginner-to-advanced-resource/blob/master/Section%202%20-%20Read%2C%20Generate%2C%20Modify%20Congiruations/attributes.tf>
   [PlDb]: <https://github.com/zealvora/terraform-beginner-to-advanced-resource/blob/master/Section%202%20-%20Read%2C%20Generate%2C%20Modify%20Congiruations/reference.tf>
   [PlDc]: <https://github.com/zealvora/terraform-beginner-to-advanced-resource/blob/master/Section%202%20-%20Read%2C%20Generate%2C%20Modify%20Congiruations/terraform-variables.md>
   [PlDd]: <https://github.com/zealvora/terraform-beginner-to-advanced-resource/blob/master/Section%202%20-%20Read%2C%20Generate%2C%20Modify%20Congiruations/variable-assignment.md>
   [PlDe]: <https://github.com/zealvora/terraform-beginner-to-advanced-resource/blob/master/Section%202%20-%20Read%2C%20Generate%2C%20Modify%20Congiruations/data-types.md>
   [PlDf]: <https://github.com/zealvora/terraform-beginner-to-advanced-resource/blob/master/Section%202%20-%20Read%2C%20Generate%2C%20Modify%20Congiruations/counte-parameter.md>
   [PlDg]: <https://github.com/zealvora/terraform-beginner-to-advanced-resource/blob/master/Section%202%20-%20Read%2C%20Generate%2C%20Modify%20Congiruations/conditional.md>
    [PlDh]: <https://github.com/zealvora/terraform-beginner-to-advanced-resource/blob/master/Section%202%20-%20Read%2C%20Generate%2C%20Modify%20Congiruations/local-values.md>
[PlDi]: <https://github.com/zealvora/terraform-beginner-to-advanced-resource/blob/master/Section%202%20-%20Read%2C%20Generate%2C%20Modify%20Congiruations/functions.md>
[PlDj]: <https://github.com/zealvora/terraform-beginner-to-advanced-resource/blob/master/Section%202%20-%20Read%2C%20Generate%2C%20Modify%20Congiruations/data-sources.md>
[PlDk]: <https://github.com/zealvora/terraform-beginner-to-advanced-resource/blob/master/Section%202%20-%20Read%2C%20Generate%2C%20Modify%20Congiruations/debugging.md>
[PlDl]: <https://github.com/zealvora/terraform-beginner-to-advanced-resource/blob/master/Section%202%20-%20Read%2C%20Generate%2C%20Modify%20Congiruations/terraform-format.md>
[PlDm]: <https://github.com/zealvora/terraform-beginner-to-advanced-resource/blob/master/Section%202%20-%20Read,%20Generate,%20Modify%20Congiruations/terraform-validate.md>
[PlDo]: <https://github.com/zealvora/terraform-beginner-to-advanced-resource/blob/master/Section%202%20-%20Read%2C%20Generate%2C%20Modify%20Congiruations/dynamic-block.md>
[PlDn]: <https://github.com/zealvora/terraform-beginner-to-advanced-resource/blob/master/Section%202%20-%20Read%2C%20Generate%2C%20Modify%20Congiruations/load-order.md>
[PlDp]: <https://github.com/zealvora/terraform-beginner-to-advanced-resource/blob/master/Section%202%20-%20Read%2C%20Generate%2C%20Modify%20Congiruations/taint.md>
[PlDq]: <https://github.com/zealvora/terraform-beginner-to-advanced-resource/blob/master/Section%202%20-%20Read%2C%20Generate%2C%20Modify%20Congiruations/splat-expression.md>
[PlDr]: <https://github.com/zealvora/terraform-beginner-to-advanced-resource/blob/master/Section%202%20-%20Read%2C%20Generate%2C%20Modify%20Congiruations/graph.md>
[PlDs]: <https://github.com/zealvora/terraform-beginner-to-advanced-resource/blob/master/Section%202%20-%20Read%2C%20Generate%2C%20Modify%20Congiruations/plan-to-file.md>
[PlDt]: <https://github.com/zealvora/terraform-beginner-to-advanced-resource/blob/master/Section%202%20-%20Read%2C%20Generate%2C%20Modify%20Congiruations/settings.md>
[PlDu]: <https://github.com/zealvora/terraform-beginner-to-advanced-resource/blob/master/Section%202%20-%20Read%2C%20Generate%2C%20Modify%20Congiruations/large-infra.md>
[PlDv]: <https://github.com/zealvora/terraform-beginner-to-advanced-resource/blob/master/Section%202%20-%20Read%2C%20Generate%2C%20Modify%20Congiruations/fetch-values-variables.tf>
