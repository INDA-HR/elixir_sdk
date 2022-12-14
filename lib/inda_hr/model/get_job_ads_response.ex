# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.GetJobAdsResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Total",
    :"Hits",
    :"SearchID",
    :"JobAds"
  ]

  @type t :: %__MODULE__{
    :"Total" => integer() | nil,
    :"Hits" => integer() | nil,
    :"SearchID" => String.t | nil,
    :"JobAds" => [String.t]
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.GetJobAdsResponse do
  def decode(value, _options) do
    value
  end
end

