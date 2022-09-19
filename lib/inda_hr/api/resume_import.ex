# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Api.ResumeImport do
  @moduledoc """
  API calls for all endpoints tagged `ResumeImport`.
  """

  alias inda_hr.Connection
  import inda_hr.RequestBuilder


  @doc """
  Aws Import
   This method imports a collection of *Files* from a *Bucket* on Amazon S3 Storage Service into the INDA index  *indexname*.  *Intervieweb* customers do not need any  *Credentials*, because their files are already in the [In-recruiting](https://www.in-recruiting.com/en/) cloud. For other users, we strongly recommend creating *ad-hoc credentials* with *read-only* rights. These credentials will not be stored by us anyway in any form.  The array of *Files* should contain a collection of resumes. Each file must have an *URL*, which is the file path inside the *Bucket*, an *InternalID* (i.e., an unique identifier used by the user internal system), and a *Resume*, which contains all the structured data to be imported in INDA. The *Resume* field has the same structure used in [Add Resume](https://api.inda.ai/hr/docs/v2/#operation/add_resume__POST), without the fields *Attachments.CV.File* (the file binary) and  *Attachments.CV.FileExt* (the file extension). The *Resume* data in the request will not be validated in input, but rather later during the request preprocessing.  The list of documents in the response accounts for documents that were successfully validated and downloaded from the *Bucket*. Note that these documents will be processed in the background before they can be uploaded to *indexname* and this may cause some small changes in the list of documents actually uploaded.  The response contains (*i*) a *Stats* field which provides a brief overview of the number of *Sent* and *Queued* documents, (*ii*) a list of queued *Resumes* with an INDA *ResumeID* and its user *InternalID*, and (*iii*) a list of *Errors* raised during the preprocessing stage.  In order to obtain updated information on the import progress and on the failures that might happen during the import process, the user can use the *import_id* through the following methods: + [Get Failures](https://api.inda.ai/hr/docs/v2/#operation/get_failures__GET) + [Import Status](https://api.inda.ai/hr/docs/v2/#operation/import_status__GET) 

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - indexname (String.t): 
  - docs_import_item_request (DocsImportItemRequest): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, inda_hr.Model.ImportResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec aws_import_post(Tesla.Env.client, String.t, inda_hr.Model.DocsImportItemRequest.t, keyword()) :: {:ok, inda_hr.Model.ImportResponse.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def aws_import_post(connection, indexname, docs_import_item_request, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/hr/v2/index/#{indexname}/resumes/import/aws/")
    |> add_param(:body, :body, docs_import_item_request)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 202, %inda_hr.Model.ImportResponse{}},
      { 403, %inda_hr.Model.ErrorModel{}},
      { 404, %inda_hr.Model.ErrorModel{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Import Status
   This method returns the status of the import corresponding to the *import_id* indicated as query parameter (see the schema below). The status value may be one of the following: + *Pending*: the import is in INDA process queues; + *Running*: the import has begun; INDA is processeing the associated resumes; + *Completed*: the import is finished. 

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - indexname (String.t): 
  - import_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, inda_hr.Model.ImportStatus.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec import_status_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, inda_hr.Model.ImportStatus.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def import_status_get(connection, indexname, import_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/hr/v2/index/#{indexname}/resumes/import/aws/status/")
    |> add_param(:query, :"import_id", import_id)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %inda_hr.Model.ImportStatus{}},
      { 400, %inda_hr.Model.ErrorModel{}},
      { 404, %inda_hr.Model.ErrorModel{}},
      { 503, %inda_hr.Model.ErrorModel{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end
end