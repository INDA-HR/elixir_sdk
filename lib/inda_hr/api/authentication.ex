# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Api.Authentication do
  @moduledoc """
  API calls for all endpoints tagged `Authentication`.
  """

  alias inda_hr.Connection
  import inda_hr.RequestBuilder


  @doc """
  Log In
   This method allows a user to log into the service and receive access credentials in the form of a bearer token. The token expires after  *ExpiresIn* seconds, as detailed in the response.  

  ## Parameters

  - connection (inda_hr.Connection): Connection to server
  - login_data (LoginData): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, inda_hr.Model.TokenResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec log_in_post(Tesla.Env.client, inda_hr.Model.LoginData.t, keyword()) :: {:ok, inda_hr.Model.TokenResponse.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def log_in_post(connection, login_data, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/hr/v2/auth/login/")
    |> add_param(:body, :body, login_data)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %inda_hr.Model.TokenResponse{}},
      { 403, %inda_hr.Model.ErrorModel{}},
      { 503, %inda_hr.Model.ErrorModel{}},
      { 422, %inda_hr.Model.HttpValidationError{}}
    ])
  end
end
