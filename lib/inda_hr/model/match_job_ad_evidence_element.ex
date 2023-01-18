# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.MatchJobAdEvidenceElement do
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
    :Education => inda_hr.Model.RequiredAndPreferredMatchJobAdEvidenceEducation.t,
    :Experience => inda_hr.Model.MatchJobAdEvidenceExperience.t,
    :Skills => inda_hr.Model.RequiredAndPreferredListMatchJobAdEvidenceSkill.t,
    :JobTitles => [inda_hr.Model.MatchJobAdEvidenceJobTitle.t]
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.MatchJobAdEvidenceElement do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Education, :struct, inda_hr.Model.RequiredAndPreferredMatchJobAdEvidenceEducation, options)
    |> deserialize(:Experience, :struct, inda_hr.Model.MatchJobAdEvidenceExperience, options)
    |> deserialize(:Skills, :struct, inda_hr.Model.RequiredAndPreferredListMatchJobAdEvidenceSkill, options)
    |> deserialize(:JobTitles, :list, inda_hr.Model.MatchJobAdEvidenceJobTitle, options)
  end
end

