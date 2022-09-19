# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.ResumeMatchingEvidenceQuery do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"ResumeIDs",
    :"JobAd"
  ]

  @type t :: %__MODULE__{
    :"ResumeIDs" => [String.t],
    :"JobAd" => inda_hr.Model.MatchingJobAdDocument.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.ResumeMatchingEvidenceQuery do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"JobAd", :struct, inda_hr.Model.MatchingJobAdDocument, options)
  end
end

