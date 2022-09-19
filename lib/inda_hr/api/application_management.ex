# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Api.ApplicationManagement do
  @moduledoc """
  API calls for all endpoints tagged `ApplicationManagement`.
  """

  alias inda_hr.Connection
  import inda_hr.RequestBuilder


  @doc """
  Add Application
   This method stores on *indexname* the application made by the applicant *resume_id* to the job advertisement *jobad_id*.  It is assumed that both the resume and the job advertisement involved have been previously added to *indexname* by  the appropriate methods.  On the right, we provide an example of input structure; further details are available in dedicated sections.  

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - indexname (String.t): 
  - jobad_id (AnyOfstringstring): 
  - resume_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :body (BaseApplicationRequest): 
  ## Returns

  {:ok, inda_hr.Model.ApplicationIdResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec add_application_post(Tesla.Env.client, String.t, inda_hr.Model.AnyOfstringstring.t, String.t, keyword()) :: {:ok, inda_hr.Model.ApplicationIdResponse.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def add_application_post(connection, indexname, jobad_id, resume_id, opts \\ []) do
    optional_params = %{
      :body => :body
    }
    %{}
    |> method(:post)
    |> url("/hr/v2/index/#{indexname}/jobad/#{jobad_id}/applications/resume/#{resume_id}/")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, %inda_hr.Model.ApplicationIdResponse{}},
      { 400, %inda_hr.Model.ErrorModel{}},
      { 200, %inda_hr.Model.ApplicationIdResponse{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Add Application Stage
   This method updates the applicant hiring pipeline by adding a new stage according to the requested values.  The supported stages for the hiring pipelines are: <code style='color: #333333; opacity: 0.9'>APPLIED</code>, <code style='color: #333333; opacity: 0.9'>SOURCED</code>, <code style='color: #333333; opacity: 0.9'>SCREEN</code>, <code style='color: #333333; opacity: 0.9'>INTERVIEW</code>, <code style='color: #333333; opacity: 0.9'>EVALUATION</code>, <code style='color: #333333; opacity: 0.9'>OFFER</code>, <code style='color: #333333; opacity: 0.9'>HIRED</code>, <code style='color: #333333; opacity: 0.9'>DISQUALIFIED</code>.  

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - indexname (String.t): 
  - resume_id (String.t): 
  - jobad_id (AnyOfstringstring): 
  - application_status_request (ApplicationStatusRequest): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, inda_hr.Model.ApplicationIdResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec add_application_stage_post(Tesla.Env.client, String.t, String.t, inda_hr.Model.AnyOfstringstring.t, inda_hr.Model.ApplicationStatusRequest.t, keyword()) :: {:ok, inda_hr.Model.ApplicationIdResponse.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def add_application_stage_post(connection, indexname, resume_id, jobad_id, application_status_request, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/hr/v2/index/#{indexname}/jobad/#{jobad_id}/applications/resume/#{resume_id}/hiring-pipeline/stage/")
    |> add_param(:body, :body, application_status_request)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, %inda_hr.Model.ApplicationIdResponse{}},
      { 400, %inda_hr.Model.ErrorModel{}},
      { 404, %inda_hr.Model.ErrorModel{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Application Status
   This method returns the status of an application, which can be any of the following: + *Processing*: the application is in INDA process queue; + *Available*: the application is in the index and is available to the user; + *Duplicate*: the application was a duplicate, refer to the indicated pair  (*ResumeID*, *JobAdID*) to retrieve the already indexed one; + *Failed*: the processing of the input failed; + *Missing*: none of the previous; the pair (*ResumeID*, *JobAdID*) may be wrong or corresponding to a deleted application. 

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - indexname (String.t): 
  - jobad_id (AnyOfstringstring): 
  - resume_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, inda_hr.Model.ApplicationResponsesStatus.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec application_status_get(Tesla.Env.client, String.t, inda_hr.Model.AnyOfstringstring.t, String.t, keyword()) :: {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.ApplicationResponsesStatus.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def application_status_get(connection, indexname, jobad_id, resume_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/hr/v2/index/#{indexname}/jobad/#{jobad_id}/applications/resume/#{resume_id}/status/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %inda_hr.Model.ApplicationResponsesStatus{}},
      { 404, %inda_hr.Model.ErrorModel{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Apply
   This method adds a candidate resume to *indexname* and registers their application to *jobad_id*.  In an asynchronous fashion, the resume to be processed is added to the server's task queue and the assigned *ResumeID*  is returned immediately; when its processing is successfully completed and the resume is effectively added to  *indexname*, the pipeline continues with the candidate request to apply to the job advertisement identified by  *jobad_id*.  Under the hood, this method performs: + [Add Resume](https://api.inda.ai/hr/docs/v2/#operation/add_resume__POST)  + [Add Application](https://api.inda.ai/hr/docs/v2/#operation/add_application__POST)  Note that the document may not successfully conclude the processing pipeline (e.g., it may be discarded because duplicate of one of the documents already present in the *indexname*), and thus it may not be actually added to the index. The same may happen while processing the application request.  In order to verify the resume and the application status, the user can use the *ResumeID* and the *JobAdID* through  the following methods: + [Resume Status](https://api.inda.ai/hr/docs/v2/#operation/resume_status__GET) + [Application Status](https://api.inda.ai/hr/docs/v2/#operation/application_status__GET) + [Get Failures](https://api.inda.ai/hr/docs/v2/#operation/get_failures__GET)  On the right, we provide an example of input structure; further details are available in dedicated sections.  

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - indexname (String.t): 
  - jobad_id (AnyOfstringstring): 
  - apply_item_request (ApplyItemRequest): 
  - opts (KeywordList): [optional] Optional parameters
    - :resume_id (String.t): 
  ## Returns

  {:ok, inda_hr.Model.ApplicationIdResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec apply_post(Tesla.Env.client, String.t, inda_hr.Model.AnyOfstringstring.t, inda_hr.Model.ApplyItemRequest.t, keyword()) :: {:ok, inda_hr.Model.ApplicationIdResponse.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def apply_post(connection, indexname, jobad_id, apply_item_request, opts \\ []) do
    optional_params = %{
      :"resume_id" => :query
    }
    %{}
    |> method(:post)
    |> url("/hr/v2/index/#{indexname}/jobad/#{jobad_id}/apply/")
    |> add_param(:body, :body, apply_item_request)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 202, %inda_hr.Model.ApplicationIdResponse{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Delete Applicants
   This method removes all the applicants associated with *jobad_id* from the index *indexname*.  

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - indexname (String.t): 
  - jobad_id (AnyOfstringstring): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, inda_hr.Model.DeleteCandidatesResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec delete_applicants_delete(Tesla.Env.client, String.t, inda_hr.Model.AnyOfstringstring.t, keyword()) :: {:ok, inda_hr.Model.DeleteCandidatesResponse.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def delete_applicants_delete(connection, indexname, jobad_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/hr/v2/index/#{indexname}/jobad/#{jobad_id}/applications/resumes/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %inda_hr.Model.DeleteCandidatesResponse{}},
      { 404, %inda_hr.Model.ErrorModel{}},
      { 400, %inda_hr.Model.ErrorModel{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Delete Application
   This method removes the application associated with *jobad_id* and *resume_id* from the index *indexname*.  

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - indexname (String.t): 
  - jobad_id (AnyOfstringstring): 
  - resume_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, inda_hr.Model.DeleteApplicationResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec delete_application_delete(Tesla.Env.client, String.t, inda_hr.Model.AnyOfstringstring.t, String.t, keyword()) :: {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:ok, inda_hr.Model.DeleteApplicationResponse.t} | {:error, Tesla.Env.t}
  def delete_application_delete(connection, indexname, jobad_id, resume_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/hr/v2/index/#{indexname}/jobad/#{jobad_id}/applications/resume/#{resume_id}/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %inda_hr.Model.DeleteApplicationResponse{}},
      { 404, %inda_hr.Model.ErrorModel{}},
      { 400, %inda_hr.Model.ErrorModel{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Delete Application Stage
   This method updates the applicant hiring pipeline by deleting a previously stored stage according to the requested  values.  The supported stages for the hiring pipelines are: <code style='color: #333333; opacity: 0.9'>APPLIED</code>, <code style='color: #333333; opacity: 0.9'>SOURCED</code>, <code style='color: #333333; opacity: 0.9'>SCREEN</code>, <code style='color: #333333; opacity: 0.9'>INTERVIEW</code>, <code style='color: #333333; opacity: 0.9'>EVALUATION</code>, <code style='color: #333333; opacity: 0.9'>OFFER</code>, <code style='color: #333333; opacity: 0.9'>HIRED</code>, <code style='color: #333333; opacity: 0.9'>DISQUALIFIED</code>.  Note that all the stages matching *status* and *date* (if present) query parameters will be removed from the  hiring pipeline.   

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - indexname (String.t): 
  - jobad_id (AnyOfstringstring): 
  - resume_id (String.t): 
  - status (String.t): The status describes the hiring pipeline level. The statuses are: <code style='color: #333333; opacity: 0.9'>APPLIED</code>, <code style='color: #333333; opacity: 0.9'>SOURCED</code>, <code style='color: #333333; opacity: 0.9'>SCREEN</code>, <code style='color: #333333; opacity: 0.9'>INTERVIEW</code>, <code style='color: #333333; opacity: 0.9'>EVALUATION</code>, <code style='color: #333333; opacity: 0.9'>OFFER</code>, <code style='color: #333333; opacity: 0.9'>HIRED</code>, <code style='color: #333333; opacity: 0.9'>DISQUALIFIED</code>.
  - opts (KeywordList): [optional] Optional parameters
    - :date (DateTime.t): The date in which the status changed.
  ## Returns

  {:ok, inda_hr.Model.ApplicationIdResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec delete_application_stage_delete(Tesla.Env.client, String.t, inda_hr.Model.AnyOfstringstring.t, String.t, String.t, keyword()) :: {:ok, inda_hr.Model.ApplicationIdResponse.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def delete_application_stage_delete(connection, indexname, jobad_id, resume_id, status, opts \\ []) do
    optional_params = %{
      :"date" => :query
    }
    %{}
    |> method(:delete)
    |> url("/hr/v2/index/#{indexname}/jobad/#{jobad_id}/applications/resume/#{resume_id}/hiring-pipeline/stage/")
    |> add_param(:query, :"status", status)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %inda_hr.Model.ApplicationIdResponse{}},
      { 400, %inda_hr.Model.ErrorModel{}},
      { 404, %inda_hr.Model.ErrorModel{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Delete Applications
   This method removes all the applications associated with *resume_id* from the index *indexname*.  

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - indexname (String.t): 
  - resume_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, inda_hr.Model.DeleteApplicationsResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec delete_applications_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, inda_hr.Model.DeleteApplicationsResponse.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def delete_applications_delete(connection, indexname, resume_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/hr/v2/index/#{indexname}/resume/#{resume_id}/applications/jobads/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %inda_hr.Model.DeleteApplicationsResponse{}},
      { 404, %inda_hr.Model.ErrorModel{}},
      { 400, %inda_hr.Model.ErrorModel{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Get Applicants
   This method returns a list of UUID4 associated to applicants of the job advertisement with id *jobad_id* stored in the index *indexname*.  Query parameters are used to specify the *offset* and *size* of the search. The method uses *cache* = <code style='color: #333333; opacity: 0.9'>true</code> by default, meaning that it will cache automatically each search for *cache_time* seconds. When caching is active, *offset* is ignored; in order to navigate or scroll the entire search response (in chunks of size *size*, as specified in the first search), this method should be used through the *search_id*. When *search_id* is provided, other query parameters are ignored, except *cache_time*.  The use of caching is highly recommended to improve the performances.  Note that a new *search_id* is provided for every scroll. Search IDs are not unique but it is strongly recommended to update the *search_id* at every call of this method with the *SearchID* of the last response. If the *SearchID* is missing or equal to <code style='color: #333333; opacity: 0.9'>null</code>, the scroll has ended.  Beware that the scroll can ONLY go forward in the search cache because it is meant to review large searches.  

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - indexname (String.t): 
  - jobad_id (AnyOfstringstring): 
  - opts (KeywordList): [optional] Optional parameters
    - :cache (boolean()): Optional. Whether the search results should be cached or not.
    - :cache_time (integer()): Optional. Seconds.Ignored if *cache* is <code style='color: #333333; opacity: 0.9'>false</code>.
    - :offset (integer()): Optional. Number of documents to skip. Ignored if *cache* is <code style='color: #333333; opacity: 0.9'>true</code>.
    - :search_id (String.t): Both the initial search request and each subsequent scroll request returns a *SearchID*. The *SearchID* may or may not  change between requests; however, only the most recently received *SearchID* should be used.
    - :size (integer()): Optional. Number of documents to return.
  ## Returns

  {:ok, inda_hr.Model.GetCandidatesResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_applicants_get(Tesla.Env.client, String.t, inda_hr.Model.AnyOfstringstring.t, keyword()) :: {:ok, inda_hr.Model.GetCandidatesResponse.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def get_applicants_get(connection, indexname, jobad_id, opts \\ []) do
    optional_params = %{
      :"cache" => :query,
      :"cache_time" => :query,
      :"offset" => :query,
      :"search_id" => :query,
      :"size" => :query
    }
    %{}
    |> method(:get)
    |> url("/hr/v2/index/#{indexname}/jobad/#{jobad_id}/applications/resumes/")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %inda_hr.Model.GetCandidatesResponse{}},
      { 404, %inda_hr.Model.ErrorModel{}},
      { 415, %inda_hr.Model.ErrorModel{}},
      { 400, %inda_hr.Model.ErrorModel{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Get Application
   This method returns the information related to the application stored with ids *resume_id* and *jobad_id* in the index *indexname*.  As reported in the schema below, the method has two different response schemas: + a *Status* response is returned when the application or the related [resume](https://api.inda.ai/hr/docs/v2/#tag/Resume-Management) is still in the processing queue, if the processing failed, or if the requested application has never been stored (e.g., resume processing failed when using [Apply](https://api.inda.ai/hr/docs/v2/#operation/apply__POST) method); + a *GetApplicationResponse* response is returned if the application has been successfully processed and inserted in the index. 

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - indexname (String.t): 
  - resume_id (String.t): 
  - jobad_id (AnyOfstringstring): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, inda_hr.Model.GetApplicationResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_application_get(Tesla.Env.client, String.t, String.t, inda_hr.Model.AnyOfstringstring.t, keyword()) :: {:ok, inda_hr.Model.GetApplicationResponse.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def get_application_get(connection, indexname, resume_id, jobad_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/hr/v2/index/#{indexname}/jobad/#{jobad_id}/applications/resume/#{resume_id}/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %inda_hr.Model.GetApplicationResponse{}},
      { 404, %inda_hr.Model.ErrorModel{}},
      { 400, %inda_hr.Model.ErrorModel{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Get Applications
   This method returns a list of UUID4 associated to those job advertisements that have the resume of id *resume_id* as applicant. Both resumes and job advertisements are stored in the *index* indexname.  Query parameters are used to specify the *offset* and *size* of the search. The method uses *cache* = <code style='color: #333333; opacity: 0.9'>true</code> by default, meaning that it will cache automatically each search for *cache_time* seconds. When caching is active, *offset* is ignored; in order to navigate or scroll the entire search response (in chunks of size *size*, as specified in the first search), this method should be used through the *search_id*. When *search_id* is provided, other query parameters are ignored, except *cache_time*.  The use of caching is highly recommended to improve the performances.  Note that a new *search_id* is provided for every scroll. Search IDs are not unique but it is strongly recommended to update the *search_id* at every call of this method with the *SearchID* of the last response.  Beware that the scroll can ONLY go forward in the search cache because it is meant to review large searches.  

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - indexname (String.t): 
  - resume_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :cache (boolean()): Optional. Whether the search results should be cached or not.
    - :cache_time (integer()): Optional. Seconds.
    - :offset (integer()): Optional. Number of documents to skip. Ignored if *cache* is <code style='color: #333333; opacity: 0.9'>true</code>.
    - :search_id (String.t): Both the initial search request and each subsequent scroll request returns a *search_id*. The *search_id* may or may not  change between requests; however, only the most recently received *search_id* should be used.
    - :size (integer()): Optional. Number of documents to return.
  ## Returns

  {:ok, inda_hr.Model.GetApplicationsResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_applications_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, inda_hr.Model.GetApplicationsResponse.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def get_applications_get(connection, indexname, resume_id, opts \\ []) do
    optional_params = %{
      :"cache" => :query,
      :"cache_time" => :query,
      :"offset" => :query,
      :"search_id" => :query,
      :"size" => :query
    }
    %{}
    |> method(:get)
    |> url("/hr/v2/index/#{indexname}/resume/#{resume_id}/applications/jobads/")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %inda_hr.Model.GetApplicationsResponse{}},
      { 404, %inda_hr.Model.ErrorModel{}},
      { 415, %inda_hr.Model.ErrorModel{}},
      { 400, %inda_hr.Model.ErrorModel{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Patch Application
   This method updates the information related to the application stored with id *resume_id* and *jobad_id*.  This method accepts an application/json body with the same structure as [Add Application](https://api.inda.ai/hr/docs/v2/#operation/add_application__POST) however in this case all fields are optional. Fields that contain differences between the corresponding original ones are substituted, while new fields are added. Bear in mind that lists are considered as singular value, therefore to modify an entry in a list it is necessary to insert the full list.  

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - indexname (String.t): 
  - jobad_id (AnyOfstringstring): 
  - resume_id (String.t): 
  - patch_application_request (PatchApplicationRequest): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, inda_hr.Model.PatchApplicationResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec patch_application_patch(Tesla.Env.client, String.t, inda_hr.Model.AnyOfstringstring.t, String.t, inda_hr.Model.PatchApplicationRequest.t, keyword()) :: {:ok, inda_hr.Model.PatchApplicationResponse.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def patch_application_patch(connection, indexname, jobad_id, resume_id, patch_application_request, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/hr/v2/index/#{indexname}/jobad/#{jobad_id}/applications/resume/#{resume_id}/")
    |> add_param(:body, :body, patch_application_request)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %inda_hr.Model.PatchApplicationResponse{}},
      { 400, %inda_hr.Model.ErrorModel{}},
      { 404, %inda_hr.Model.ErrorModel{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end
end
