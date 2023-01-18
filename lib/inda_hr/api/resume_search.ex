# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Api.ResumeSearch do
  @moduledoc """
  API calls for all endpoints tagged `ResumeSearch`.
  """

  alias inda_hr.Connection
  import inda_hr.RequestBuilder

  @doc """
  Full-Text Search on Resumes
  This is the most common way to search a text document through the resumes stored in the index *indexname*. This function takes as input a list of objects containing the terms you wish to search for, please consider that tokens (individual words) grouped together in the same *QueryTerms* element will be queried separately in an **OR** clause, whereas different *QueryTerms* elements will be joined by an **AND** clause. To put it in words, the query will retrieve documents that match at least one word from each element in *QueryTerms*.  This behaviour can be modified in one of two ways:  + The **default_operator** query parameter, which defaults to OR, can be set to AND in order to only find documents that contain ALL of the tokens in a given *QueryTerms* element. + The **\"** (double quotes) operator, which can be used to wrap strings made up of multiple tokens in order to find documents that contain those words exactly in the order they are presented (sentence match). Remember to escape double quotes in your JSON inputs with a backslash.  Each *QueryTerms* element can be negated with the parameter **Exclude** set to *true*. This is equivalent to setting it in a **NOT** clause.  It's also possible to use wildcards to perform jolly searches, the supported wildcards are:  + \\*: Can be used to match any number of characters in the middle (ad\\*ment) or at the end (doc\\*) of a word. + ?: Can be used to match a single character in any position (?xample).  All queries are case-insensitive and have some amount of fuzziness by default, meaning that typos and character transpositions will be included in the matches. Additionally, filters can be added to form boolean queries on indexed fields. For a comprehensive list and explanation of filters, see the [*Query Filters*](https://api.inda.ai/hr/docs/v2/#tag/Query-Filters) section, the structure is the same.  The method returns a list of JSON documents, each of which contains a resume; the resumes are sorted according to a **pertinence score** determined by their relevance to the used query terms.  Query parameters are used to specify the *offset*, *size* and *min_score* of the search. The method uses *cache* = <code style='color: #333333; opacity: 0.9'>true</code> by default, meaning that it will cache automatically each search for *cache_time* seconds. When caching is active, *offset* is ignored because it's meant navigate the entire search response (in chunks of size *size*) through the *search_id*. The use of caching is highly recommended to improve the performance. Note that a new *search_id* is provided for every scroll. Search IDs are not unique but it is strongly recommended to update the *search_id* at every call of this method with the *SearchID* of the last response. If the *SearchID* is missing or equal to <code style='color: #333333; opacity: 0.9'>null</code>, the scroll has ended.

  ### Parameters

  - `connection` (inda_hr.Connection): Connection to server
  - `indexname` (String.t): 
  - `opts` (keyword): Optional parameters
    - `:default_operator` (String.t): Optional. Change this to *AND* if you wish documents to match ALLof the tokens in a single query_terms element.
    - `:cache` (boolean()): Optional. Whether the search results should be cached or not.
    - `:cache_time` (integer()): Optional. Seconds. Ignored if *cache* is <code style='color: #333333; opacity: 0.9'>false</code>.
    - `:size` (integer()): Optional. Number of documents to return.
    - `:offset` (integer()): Optional. Number of documents to skip. Ignored if *cache* is <code style='color: #333333; opacity: 0.9'>true</code>.
    - `:min_score` (float()): Optional. Minimum pertinence score.
    - `:search_id` (String.t): Both the initial search request and each subsequent scroll request returns a *SearchID*. The *SearchID* may or may not  change between requests; however, only the most recently received *SearchID* should be used.
    - `:body` (TraditionalDocsSearchQuery): 

  ### Returns

  - `{:ok, inda_hr.Model.FoundDocsResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec full_text_search_on_resumes_post(Tesla.Env.client, String.t, keyword()) :: {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:ok, inda_hr.Model.FoundDocsResponse.t} | {:error, Tesla.Env.t}
  def full_text_search_on_resumes_post(connection, indexname, opts \\ []) do
    optional_params = %{
      :default_operator => :query,
      :cache => :query,
      :cache_time => :query,
      :size => :query,
      :offset => :query,
      :min_score => :query,
      :search_id => :query,
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/hr/v2/index/#{indexname}/resumes/search/full-text/")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %inda_hr.Model.FoundDocsResponse{}},
      {415, %inda_hr.Model.ErrorModel{}},
      {400, %inda_hr.Model.ErrorModel{}},
      {422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Search Applicants
  This method is meant to return those applicants (i.e., resumes) of the job advert with ID *jobad_id* that respect the given query.  Users may specify [query filters](https://api.inda.ai/hr/docs/v2/#tag/Query-Filters) to apply on both [Applications](https://api.inda.ai/hr/docs/v2/#tag/Application-Management) and [Resumes](https://api.inda.ai/hr/docs/v2/#tag/Resume-Management) indexed fields.  Query parameters are used to specify the *cache_time* and *size* of the search. The method will automatically cache each search for *cache_time* seconds. In order to navigate or scroll the entire search response (in chunks of size *size*, as specified in the first search), this method should be used through the *search_id*. When *search_id* is provided, other query parameters are ignored, except *cache_time*.  Note that a new *search_id* is provided for every scroll. Search IDs are not unique but it is strongly recommended to update the *search_id* at every call of this method with the *SearchID* of the last response. If the *SearchID* is missing or equal to <code style='color: #333333; opacity: 0.9'>null</code>, the scroll has ended.  Beware that the scroll can ONLY go forward in the search cache because it is meant to review large searches.

  ### Parameters

  - `connection` (inda_hr.Connection): Connection to server
  - `indexname` (String.t): 
  - `jobad_id` (JobadId): 
  - `opts` (keyword): Optional parameters
    - `:cache_time` (integer()): Optional. Seconds.
    - `:size` (integer()): Optional. Number of documents to return.
    - `:search_id` (String.t): Both the initial search request and each subsequent scroll request returns a *SearchID*. The *SearchID* may or may not  change between requests; however, only the most recently received *SearchID* should be used.
    - `:body` (CandidateSearchQuery): 

  ### Returns

  - `{:ok, inda_hr.Model.FoundCandidatesResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec search_applicants_post(Tesla.Env.client, String.t, inda_hr.Model.JobadId.t, keyword()) :: {:ok, inda_hr.Model.FoundCandidatesResponse.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def search_applicants_post(connection, indexname, jobad_id, opts \\ []) do
    optional_params = %{
      :cache_time => :query,
      :size => :query,
      :search_id => :query,
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/hr/v2/index/#{indexname}/jobad/#{jobad_id}/applications/resumes/search/")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %inda_hr.Model.FoundCandidatesResponse{}},
      {404, %inda_hr.Model.ErrorModel{}},
      {415, %inda_hr.Model.ErrorModel{}},
      {400, %inda_hr.Model.ErrorModel{}},
      {422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Search Resumes Evidence
  Provides evidence for [Search Resumes](https://api.inda.ai/hr/docs/v2/#operation/search_resumes__POST) by returning the *size* most relevant words in each resume *resume_id* (listed into the list *resume_ids*) with respect to the *QueryTerms*. Note that -- unlike in the Related Words methods ([Similar Words](https://api.inda.ai/hr/docs/v2/#operation/similar_words__POST) and [Similar Words In Doc](https://api.inda.ai/hr/docs/v2/#operation/similar_words_in_resume__POST)) -- the elements of *QueryTerms* are combined together. Hence, the output minimizes the distance from all query terms simultaneously.  It returns a list of objects each containing the resume *resume_id* (*ID*) and a list of *Terms*.  Any *resume_id* not corresponding to an available resume in the index *indexname* will be ignored.

  ### Parameters

  - `connection` (inda_hr.Connection): Connection to server
  - `indexname` (String.t): 
  - `evidence_request` (EvidenceRequest): 
  - `opts` (keyword): Optional parameters
    - `:size` (integer()): Number of elements to be returned, must be greater than <code style='color: #333333; opacity: 0.9'>0</code> and smaller or equal to <code style='color: #333333; opacity: 0.9'>5</code>.
    - `:src_lang` (String.t): Queries language. If left empty each query's language will detected automatically, if not it is not explicitly set into the request body.

  ### Returns

  - `{:ok, [%SearchEvidence{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec search_resumes_evidence_post(Tesla.Env.client, String.t, inda_hr.Model.EvidenceRequest.t, keyword()) :: {:ok, list(inda_hr.Model.SearchEvidence.t)} | {:ok, inda_hr.Model.ErrorModel.t} | {:error, Tesla.Env.t}
  def search_resumes_evidence_post(connection, indexname, evidence_request, opts \\ []) do
    optional_params = %{
      :size => :query,
      :src_lang => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/hr/v2/index/#{indexname}/resumes/search/semantic/evidence/")
      |> add_param(:body, :body, evidence_request)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%inda_hr.Model.SearchEvidence{}]},
      {400, %inda_hr.Model.ErrorModel{}},
      {404, %inda_hr.Model.ErrorModel{}},
      {422, %inda_hr.Model.ErrorModel{}}
    ])
  end

  @doc """
  Search Resumes
  This method performs a semantic search of resumes in index *indexname* according to the given query.  Compared with traditional search engines, *INDA Semantic Search* enables users to search in a pool of resumes in a more flexible way: search results are not limited to term matches but they include all resumes that are semantically close to the query.  Furthermore, in order to tackle the bias problem, INDA automatically ignores specific fields (such as name, gender, age and nationality) during the initial processing of each candidate data. We are constantly working on reduce the bias in original data so that INDA results may be as fair as possible.  The semantic search can be complemented with a traditional filter-based search through the [filters](https://api.inda.ai/hr/docs/v2/#tag/Search) built inside the *QueryFilters* field.  The desired query must be specified in the application/json content type body (see the example on the right). The elements of *QueryTerms* are mandatory and each of them must be associated with a weight between <code style='color: #333333; opacity: 0.9'>0</code> and <code style='color: #333333; opacity: 0.9'>1</code>, which determines the importance of the term in the search.  The method returns a list of JSON documents, each of which contains a resume; the resumes are sorted according to a **pertinence score** determined on the basis of their semantic similarity with the query terms. Note that each resume is evaluated based on the semantic similarity with respect to all query terms (where each query term is weighted according to its *weight*).  Query parameters are used to specify the *offset*, *size* and *min_score* of the search. The method uses *cache* = <code style='color: #333333; opacity: 0.9'>true</code> by default, meaning that it will cache automatically each search for *cache_time* seconds. When caching is active, *offset* is ignored because to navigate the entire search response (in chunks of size *size*) through the *search_id*. The use of caching is highly recommended to improve the performance. Search IDs are not unique but it is strongly recommended to update the *search_id* at every call of this method with the *SearchID* of the last response. If the *SearchID* is missing or equal to <code style='color: #333333; opacity: 0.9'>null</code>, the scroll has ended.  Please consider to use the [Semantic Search Feedback](https://api.inda.ai/hr/docs/v2/#operation/semantic_search_feedback__POST) to evaluate the provided ranking  of resumes. It is very useful to improve our algorithms' performances.

  ### Parameters

  - `connection` (inda_hr.Connection): Connection to server
  - `indexname` (String.t): 
  - `opts` (keyword): Optional parameters
    - `:cache` (boolean()): Optional. Whether the search results should be cached or not.
    - `:cache_time` (integer()): Optional. Seconds. Ignored if *cache* is <code style='color: #333333; opacity: 0.9'>false</code>.
    - `:size` (integer()): Optional. Number of documents to return.
    - `:offset` (integer()): Optional. Number of documents to skip. Ignored if *cache* is <code style='color: #333333; opacity: 0.9'>true</code>.
    - `:min_score` (float()): Optional. Minimum pertinence score.
    - `:search_id` (String.t): Both the initial search request and each subsequent scroll request returns a *SearchID*. The *SearchID* may or may not  change between requests; however, only the most recently received *SearchID* should be used.
    - `:src_lang` (String.t): Queries language. If left empty each query's language will detected automatically, if not it is not explicitly set into the request body.
    - `:dst_lang` ([String.t]): Results languages. If left empty then the results will not be filtered by language and the they will contain multi-language results.
    - `:body` (DocsSearchQuery): 

  ### Returns

  - `{:ok, inda_hr.Model.FoundDocsResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec search_resumes_post(Tesla.Env.client, String.t, keyword()) :: {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.FoundDocsResponse.t} | {:error, Tesla.Env.t}
  def search_resumes_post(connection, indexname, opts \\ []) do
    optional_params = %{
      :cache => :query,
      :cache_time => :query,
      :size => :query,
      :offset => :query,
      :min_score => :query,
      :search_id => :query,
      :src_lang => :query,
      :dst_lang => :query,
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/hr/v2/index/#{indexname}/resumes/search/semantic/")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %inda_hr.Model.FoundDocsResponse{}},
      {415, %inda_hr.Model.ErrorModel{}},
      {400, %inda_hr.Model.ErrorModel{}},
      {422, %inda_hr.Model.ErrorModel{}}
    ])
  end
end
