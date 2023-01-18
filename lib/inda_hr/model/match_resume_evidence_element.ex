# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.MatchResumeEvidenceElement do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :ID,
    :Education,
    :Experience,
    :Skills,
    :JobTitles
  ]

  @type t :: %__MODULE__{
    :ID => String.t,
    :Education => inda_hr.Model.MatchResumeEvidenceEducation.t,
    :Experience => inda_hr.Model.MatchResumeEvidenceExperience.t,
    :Skills => [inda_hr.Model.MatchResumeEvidenceSkill.t],
    :JobTitles => [inda_hr.Model.MatchResumeEvidenceJobTitle.t]
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.MatchResumeEvidenceElement do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Education, :struct, inda_hr.Model.MatchResumeEvidenceEducation, options)
    |> deserialize(:Experience, :struct, inda_hr.Model.MatchResumeEvidenceExperience, options)
    |> deserialize(:Skills, :list, inda_hr.Model.MatchResumeEvidenceSkill, options)
    |> deserialize(:JobTitles, :list, inda_hr.Model.MatchResumeEvidenceJobTitle, options)
  end
end

