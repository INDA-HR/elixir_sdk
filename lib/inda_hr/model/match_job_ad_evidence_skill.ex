# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.MatchJobAdEvidenceSkill do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Score,
    :Skill
  ]

  @type t :: %__MODULE__{
    :Score => float(),
    :Skill => inda_hr.Model.JobAdSkill.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.MatchJobAdEvidenceSkill do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Skill, :struct, inda_hr.Model.JobAdSkill, options)
  end
end

