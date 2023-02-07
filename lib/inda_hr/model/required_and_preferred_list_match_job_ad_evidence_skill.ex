# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.RequiredAndPreferredListMatchJobAdEvidenceSkill do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Required,
    :Preferred
  ]

  @type t :: %__MODULE__{
    :Required => [IndaHr.Model.MatchJobAdEvidenceSkill.t],
    :Preferred => [IndaHr.Model.MatchJobAdEvidenceSkill.t]
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.RequiredAndPreferredListMatchJobAdEvidenceSkill do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Required, :list, IndaHr.Model.MatchJobAdEvidenceSkill, options)
    |> deserialize(:Preferred, :list, IndaHr.Model.MatchJobAdEvidenceSkill, options)
  end
end
