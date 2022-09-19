# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Api.Skills do
  @moduledoc """
  API calls for all endpoints tagged `Skills`.
  """

  alias inda_hr.Connection
  import inda_hr.RequestBuilder


  @doc """
  Similar Skills
   This method returns the *size* most similar skills found in the knowledge base with respect to the input *skill*.  The similarity of each result to the input skill is rated with a score between <code style='color: #333333; opacity: 0.9'>0</code> (minimum similarity) and <code style='color: #333333; opacity: 0.9'>1</code> (maximum similarity). This method can be used to perform a *keyword expansion*: expanding a skill with its synonyms or semantically similar skills may be useful, for instance, to improve a job description or to perform a more flexible search with respect to a traditional word match or boolean search system.  This method returns a dictionary with keys *Hits* (the number of skills returned) and *Out*, which is a list of dictionaries with two keys: the first key (*Term*) contains the proposed skill, while the second one (*Score*)  contains its similarity score, as described above. The parameter *min_score* set the threshold for the similarity score, below which the output skills are discarded; its default value is <code style='color: #333333; opacity: 0.9'>0.5</code>.  Note that the number of retrieved similar skills may be smaller than *size* when the minimum score is larger than zero or when the searched skill is particularly uncommon.  

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - query (String.t): Input skill to be analyzed
  - opts (KeywordList): [optional] Optional parameters
    - :size (integer()): Number of similar skills to return.
    - :min_score (float()): Minimum pertinence score.
    - :lang (String.t): Language of the skill.
  ## Returns

  {:ok, inda_hr.Model.SimilarEntitiesResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec similar_skills_get(Tesla.Env.client, String.t, keyword()) :: {:ok, inda_hr.Model.SimilarEntitiesResponse.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def similar_skills_get(connection, query, opts \\ []) do
    optional_params = %{
      :"size" => :query,
      :"min_score" => :query,
      :"lang" => :query
    }
    %{}
    |> method(:get)
    |> url("/hr/v2/skills/similar/semantic/")
    |> add_param(:query, :"query", query)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %inda_hr.Model.SimilarEntitiesResponse{}},
      { 400, %inda_hr.Model.ErrorModel{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Skills Classification
   This method returns a label associated to each given skill among the following: <code style='color: #333333; opacity: 0.9'>hard</code>, <code style='color: #333333; opacity: 0.9'>IT</code>, <code style='color: #333333; opacity: 0.9'>soft</code> and <code style='color: #333333; opacity: 0.9'>language</code>.  The request is structured according two main fields: *lang* and *skills*.  The *lang* field allows users to set the main language to which the skills to classify belong.  The *skills* field is merely the list of terms for which users want to find the closest category among the aforementioned ones. Please note that if a term is not recognized as a skill, it will be absent from the response.  

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - skills_classification_request (SkillsClassificationRequest): 
  - opts (KeywordList): [optional] Optional parameters
    - :lang (String.t): Language of the skill.
  ## Returns

  {:ok, inda_hr.Model.SkillsClassificationResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec skills_classification_post(Tesla.Env.client, inda_hr.Model.SkillsClassificationRequest.t, keyword()) :: {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.SkillsClassificationResponse.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def skills_classification_post(connection, skills_classification_request, opts \\ []) do
    optional_params = %{
      :"lang" => :query
    }
    %{}
    |> method(:post)
    |> url("/hr/v2/skills/classification/")
    |> add_param(:body, :body, skills_classification_request)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %inda_hr.Model.SkillsClassificationResponse{}},
      { 400, %inda_hr.Model.ErrorModel{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end
end
