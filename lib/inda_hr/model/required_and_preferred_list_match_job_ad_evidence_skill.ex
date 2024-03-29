# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.RequiredAndPreferredListMatchJobAdEvidenceSkill do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Required,
    :Preferred
  ]

  @type t :: %__MODULE__{
    :Required => [inda_hr.Model.MatchJobAdEvidenceSkill.t],
    :Preferred => [inda_hr.Model.MatchJobAdEvidenceSkill.t]
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.RequiredAndPreferredListMatchJobAdEvidenceSkill do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Required, :list, inda_hr.Model.MatchJobAdEvidenceSkill, options)
    |> deserialize(:Preferred, :list, inda_hr.Model.MatchJobAdEvidenceSkill, options)
  end
end

