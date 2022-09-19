# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Api.ResumeToResumes do
  @moduledoc """
  API calls for all endpoints tagged `ResumeToResumes`.
  """

  alias inda_hr.Connection
  import inda_hr.RequestBuilder


  @doc """
  Similar Resumes
   Setting as arguments the number *size* of documents to be retrieved and the number *offset* to be skipped, this method returns similar documents to resume *resume_id* in the index *indexname*.  

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - indexname (String.t): 
  - resume_id (String.t): 
  - similar_docs_search_query (SimilarDocsSearchQuery): 
  - opts (KeywordList): [optional] Optional parameters
    - :size (integer()): Number of documents to return.
    - :offset (integer()): Number of documents to skip.
    - :min_score (float()): Optional. Minimum pertinence score.
  ## Returns

  {:ok, inda_hr.Model.FoundDocsResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec similar_resumes_post(Tesla.Env.client, String.t, String.t, inda_hr.Model.SimilarDocsSearchQuery.t, keyword()) :: {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:ok, inda_hr.Model.FoundDocsResponse.t} | {:error, Tesla.Env.t}
  def similar_resumes_post(connection, indexname, resume_id, similar_docs_search_query, opts \\ []) do
    optional_params = %{
      :"size" => :query,
      :"offset" => :query,
      :"min_score" => :query
    }
    %{}
    |> method(:post)
    |> url("/hr/v2/index/#{indexname}/resumes/matching/resume/#{resume_id}/")
    |> add_param(:body, :body, similar_docs_search_query)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %inda_hr.Model.FoundDocsResponse{}},
      { 400, %inda_hr.Model.ErrorModel{}},
      { 404, %inda_hr.Model.ErrorModel{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end
end
