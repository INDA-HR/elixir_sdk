# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Api.CompanyManagement do
  @moduledoc """
  API calls for all endpoints tagged `CompanyManagement`.
  """

  alias inda_hr.Connection
  import inda_hr.RequestBuilder


  @doc """
  Add Company
   This method adds a company to a shared database and assigns it a *CompanyID* (namely, a Unique Universal ID or UUID4). This method requires an application/json as content type body.  On the right, we provide an example of input structure; further details are available in dedicated sections.  After successfully adding the company to INDA, this method returns the assigned *CompanyID*.  

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - company_request (CompanyRequest): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, inda_hr.Model.CompanyIdResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec add_company_post(Tesla.Env.client, inda_hr.Model.CompanyRequest.t, keyword()) :: {:ok, inda_hr.Model.CompanyIdResponse.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def add_company_post(connection, company_request, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/hr/v2/company/")
    |> add_param(:body, :body, company_request)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, %inda_hr.Model.CompanyIdResponse{}},
      { 400, %inda_hr.Model.ErrorModel{}},
      { 404, %inda_hr.Model.ErrorModel{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Company Autocomplete
   This method performs company name autocompletion, based on INDA database of companies.  It helps users to explore the aforementioned database and search for companies data.  The *term* to be completed (see *query parameters* below) must contain at least *2* characters, and it is meant to match the *Name* of a company.  The output contains a list of names related to stored companies, along with their IDs.  

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - term (String.t): Token to be completed
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, inda_hr.Model.CompanyAutocompleteResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec company_autocomplete_get(Tesla.Env.client, String.t, keyword()) :: {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.CompanyAutocompleteResponse.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def company_autocomplete_get(connection, term, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/hr/v2/company/name/search/autocomplete/")
    |> add_param(:query, :"term", term)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %inda_hr.Model.CompanyAutocompleteResponse{}},
      { 404, %inda_hr.Model.ErrorModel{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Get Company
   This method returns the information related to the company stored with id *company_id*.  

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - company_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, inda_hr.Model.GetCompanyResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_company_get(Tesla.Env.client, String.t, keyword()) :: {:ok, inda_hr.Model.GetCompanyResponse.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def get_company_get(connection, company_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/hr/v2/company/#{company_id}/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %inda_hr.Model.GetCompanyResponse{}},
      { 404, %inda_hr.Model.ErrorModel{}},
      { 400, %inda_hr.Model.ErrorModel{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Patch Company
   This method updates the information related to the company stored with id *company_id*.  This method accepts an application/json body with the same structure as [Add Company](https://api.inda.ai/hr/docs/v2/#operation/add_company__POST), however in this case all fields are optional. Fields that contain differences between the corresponding original ones are substituted, while new fields are added. Bear in mind that lists are considered as singular value, therefore to modify an entry in a list it is necessary to insert the full list.  

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - company_id (String.t): 
  - patch_company_request (PatchCompanyRequest): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, inda_hr.Model.PatchCompanyResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec patch_company_patch(Tesla.Env.client, String.t, inda_hr.Model.PatchCompanyRequest.t, keyword()) :: {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.PatchCompanyResponse.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def patch_company_patch(connection, company_id, patch_company_request, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/hr/v2/company/#{company_id}/")
    |> add_param(:body, :body, patch_company_request)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %inda_hr.Model.PatchCompanyResponse{}},
      { 400, %inda_hr.Model.ErrorModel{}},
      { 404, %inda_hr.Model.ErrorModel{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end
end
