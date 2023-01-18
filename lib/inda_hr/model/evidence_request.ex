# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.EvidenceRequest do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :QueryTerms,
    :ResumeIDs
  ]

  @type t :: %__MODULE__{
    :QueryTerms => [inda_hr.Model.WeightedQueryTerm.t],
    :ResumeIDs => [String.t]
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.EvidenceRequest do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:QueryTerms, :list, inda_hr.Model.WeightedQueryTerm, options)
  end
end

