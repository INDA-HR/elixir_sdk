# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Api.Occupations do
  @moduledoc """
  API calls for all endpoints tagged `Occupations`.
  """

  alias inda_hr.Connection
  import inda_hr.RequestBuilder

  @doc """
  Similar JobTitles
   This method returns the *size* most similar job titles found in the knowledge base with respect to the input *jobtitle*.  The similarity of each result to the input job title is rated with a score between <code style='color: #333333; opacity: 0.9'>0</code> (minimum similarity) and <code style='color: #333333; opacity: 0.9'>1</code> (maximum similarity). This method can be used to perform a *keyword expansion*: expanding a job title with its synonyms or semantically similar job titles may be useful, for instance, to improve a job description or to perform a more flexible search with respect to a traditional word match or boolean search system.  This method returns a dictionary with keys *Hits* (the number of job titles returned) and *Out*, which is a list of dictionaries with two keys: the first key (*Term*) contains the proposed job title, while the second one (*Score*)  contains its similarity score, as described above. The parameter *min_score* set the threshold for the similarity score, below which the output skills are discarded; its default value is <code style='color: #333333; opacity: 0.9'>0.5</code>.  Note that the number of retrieved similar job titles may be smaller than *size* when the minimum score is larger than <code style='color: #333333; opacity: 0.9'>0</code> or when the searched job title is particularly uncommon. 

  ### Parameters

  - `connection` (inda_hr.Connection): Connection to server
  - `query` (String.t): Input job title to be analyzed
  - `opts` (keyword): Optional parameters
    - `:size` (integer()): Number of similar job titles to return.
    - `:min_score` (float()): Minimum pertinence score.
    - `:src_lang` (String.t): Optional. Language of the input job titles.If missing, the detected language is assumed as `src_lang`.
    - `:dst_lang` (String.t): Optional. Destination language in which the output job titles are translated.If missing, the input or detected `src_lang` is assumed as `dst_lang`.

  ### Returns

  - `{:ok, inda_hr.Model.SimilarEntitiesResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec similar_jobtitles_get(Tesla.Env.client, String.t, keyword()) :: {:ok, inda_hr.Model.SimilarEntitiesResponse.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def similar_jobtitles_get(connection, query, opts \\ []) do
    optional_params = %{
      :size => :query,
      :min_score => :query,
      :src_lang => :query,
      :dst_lang => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/hr/v2/occupations/similar/semantic/")
      |> add_param(:query, :query, query)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %inda_hr.Model.SimilarEntitiesResponse{}},
      {400, %inda_hr.Model.ErrorModel{}},
      {422, %inda_hr.Model.HttpValidationError{}}
    ])
  end
end
