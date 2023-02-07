# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.MatchResumeEvidenceResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Hits,
    :Out
  ]

  @type t :: %__MODULE__{
    :Hits => integer() | nil,
    :Out => [IndaHr.Model.MatchResumeEvidenceElement.t]
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.MatchResumeEvidenceResponse do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Out, :list, IndaHr.Model.MatchResumeEvidenceElement, options)
  end
end
