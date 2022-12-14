# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.MatchJobAdEvidenceExperience do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Duration",
    :"Seniority"
  ]

  @type t :: %__MODULE__{
    :"Duration" => inda_hr.Model.OptionalRequiredAndPreferredDurationRangeV11.t,
    :"Seniority" => inda_hr.Model.OptionalRequiredAndPreferredSeniorityValueV9.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.MatchJobAdEvidenceExperience do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Duration", :struct, inda_hr.Model.OptionalRequiredAndPreferredDurationRangeV11, options)
    |> deserialize(:"Seniority", :struct, inda_hr.Model.OptionalRequiredAndPreferredSeniorityValueV9, options)
  end
end

