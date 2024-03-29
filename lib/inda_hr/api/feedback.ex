# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Api.Feedback do
  @moduledoc """
  API calls for all endpoints tagged `Feedback`.
  """

  alias inda_hr.Connection
  import inda_hr.RequestBuilder

  @doc """
  Info Extraction Feedback
   This method collects the feedback for the Information Extraction ([Parse Resume](https://api.inda.ai/hr/docs/v2/#operation/parse_resume__POST) method) on the document associated to *resume_id* on the index *indexname*.  Note that *resume_id* is generally the ID returned by the [Add Resume](https://api.inda.ai/hr/docs/v2/#operation/add_resume__POST) method. However, if the user does not make use of resume/index management services, he can still use the information extraction feedback simply by generating a *resume_id* (UUID4 format).  The method requires an application/json as content type body. This json is an object which contains two elements: + The first element *ParseResumeOutput* is the json provided by [Parse Resume](https://api.inda.ai/hr/docs/v2/#operation/parse_resume__POST) method + The second element *OutputCorrected* is a json with structure and content corresponding to the desired output for the Information Extraction.  

  ### Parameters

  - `connection` (inda_hr.Connection): Connection to server
  - `indexname` (String.t): 
  - `resume_id` (String.t): 
  - `feedback_info_item` (FeedbackInfoItem): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, inda_hr.Model.FeedbackResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec info_extraction_feedback_post(Tesla.Env.client, String.t, String.t, inda_hr.Model.FeedbackInfoItem.t, keyword()) :: {:ok, inda_hr.Model.HttpValidationError.t} | {:ok, inda_hr.Model.FeedbackResponse.t} | {:error, Tesla.Env.t}
  def info_extraction_feedback_post(connection, indexname, resume_id, feedback_info_item, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/hr/v2/feedback/index/#{indexname}/resume/#{resume_id}/parse/data/")
      |> add_param(:body, :body, feedback_info_item)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %inda_hr.Model.FeedbackResponse{}},
      {422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Semantic Search Feedback
   This method collects the feedback the Semantic Search ([Search Resumes](https://api.inda.ai/hr/docs/v2/#operation/search_resumes__POST) method) on the document associated to *resume_id* on the index *indexname*. Note that *resume_id* is the ID returned by the [Add Resume](https://api.inda.ai/hr/docs/v2/#operation/add_resume__POST) method.  The method requires an application/json as content type body. This json is an object which contains the following elements (see also the schema below and the example on the right): + A list of *QueryTerms* and *Weights* used to perform the [Search Resumes](https://api.inda.ai/hr/docs/v2/#operation/search_resumes__POST). + The rank of the item in the [Search Resumes](https://api.inda.ai/hr/docs/v2/#operation/search_resumes__POST) output. + The feedback field: The allowed values are <code style='color: #333333; opacity: 0.9'>0</code>, <code style='color: #333333; opacity: 0.9'>1</code>, and <code style='color: #333333; opacity: 0.9'>-1</code>. <code style='color: #333333; opacity: 0.9'>0</code> indicates that the rank is agreeable (i.e., it is not far from the rank expected by the user); <code style='color: #333333; opacity: 0.9'>1</code> indicates that the rank should have been significantly larger; <code style='color: #333333; opacity: 0.9'>-1</code> indicates that the rank should have been significantly smaller. + Optionally, the outcome of the [Search Resumes Evidence](https://api.inda.ai/hr/docs/v2/#operation/search_resumes_evidence__POST) call might be provided to improve log readability. 

  ### Parameters

  - `connection` (inda_hr.Connection): Connection to server
  - `indexname` (String.t): 
  - `resume_id` (String.t): 
  - `semantic_feedback_request` (SemanticFeedbackRequest): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, inda_hr.Model.FeedbackResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec semantic_search_feedback_post(Tesla.Env.client, String.t, String.t, inda_hr.Model.SemanticFeedbackRequest.t, keyword()) :: {:ok, inda_hr.Model.HttpValidationError.t} | {:ok, inda_hr.Model.FeedbackResponse.t} | {:error, Tesla.Env.t}
  def semantic_search_feedback_post(connection, indexname, resume_id, semantic_feedback_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/hr/v2/feedback/index/#{indexname}/resume/#{resume_id}/search/semantic/")
      |> add_param(:body, :body, semantic_feedback_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %inda_hr.Model.FeedbackResponse{}},
      {422, %inda_hr.Model.HttpValidationError{}}
    ])
  end
end
