# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.MatchResumeEvidenceResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Hits",
    :"Out"
  ]

  @type t :: %__MODULE__{
    :"Hits" => integer() | nil,
    :"Out" => [inda_hr.Model.MatchResumeEvidenceElement.t]
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.MatchResumeEvidenceResponse do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Out", :list, inda_hr.Model.MatchResumeEvidenceElement, options)
  end
end

