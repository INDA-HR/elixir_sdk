# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.BaseJobadMatchingEvidenceQuery do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"JobAdIDs"
  ]

  @type t :: %__MODULE__{
    :"JobAdIDs" => [String.t]
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.BaseJobadMatchingEvidenceQuery do
  def decode(value, _options) do
    value
  end
end
