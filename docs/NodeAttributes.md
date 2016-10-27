# BlueprintClient::NodeAttributes

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** |  | [optional] 
**description** | **String** | A more detailed description of the node | [optional] 
**valid_from** | **Date** | The node is judged invalid before this date. Should be an ISO8601 date | [optional] 
**valid_to** | **Date** | The node is judged invalid after this date. Should be an ISO8601 date | [optional] 
**student_numbers** | **Float** |  | [optional] 
**domain_ids** | **Array&lt;String&gt;** | Additional identifiers linked to the external domain of the hierarchy, for example JACS code. Allows comparisons between hierarchies. | [optional] 
**reminder_date** | **Date** | Reminder date for redemption period nodes, should be an ISO8601 date. Drop if we can get additionalProperties working. | [optional] 
**deadline** | **Date** | Deadline date for redemption period nodes, should be an ISO8601 date. Drop if we can get additionalProperties working. | [optional] 


