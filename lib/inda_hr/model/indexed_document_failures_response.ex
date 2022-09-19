# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.IndexedDocumentFailuresResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Count",
    :"ImportID",
    :"Failures"
  ]

  @type t :: %__MODULE__{
    :"Count" => integer(),
    :"ImportID" => String.t | nil,
    :"Failures" => [inda_hr.Model.IndexedDocumentFailure.t]
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.IndexedDocumentFailuresResponse do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Failures", :list, inda_hr.Model.IndexedDocumentFailure, options)
  end
end
