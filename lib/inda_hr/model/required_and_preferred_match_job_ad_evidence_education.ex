# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.RequiredAndPreferredMatchJobAdEvidenceEducation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Required",
    :"Preferred"
  ]

  @type t :: %__MODULE__{
    :"Required" => inda_hr.Model.MatchJobAdEvidenceEducation.t,
    :"Preferred" => inda_hr.Model.MatchJobAdEvidenceEducation.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.RequiredAndPreferredMatchJobAdEvidenceEducation do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Required", :struct, inda_hr.Model.MatchJobAdEvidenceEducation, options)
    |> deserialize(:"Preferred", :struct, inda_hr.Model.MatchJobAdEvidenceEducation, options)
  end
end

