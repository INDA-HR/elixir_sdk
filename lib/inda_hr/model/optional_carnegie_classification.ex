# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.OptionalCarnegieClassification do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :BasicClassification,
    :"2000Classification",
    :"Size&Setting",
    :EnrollmentProfile,
    :UndergraduateProfile,
    :UndergraduateInstructionalProgram,
    :GraduateInstructionalProgram
  ]

  @type t :: %__MODULE__{
    :BasicClassification => inda_hr.Model.UniversityAdmissionsValueModelStr.t | nil,
    :"2000Classification" => inda_hr.Model.UniversityAdmissionsValueModelStr.t | nil,
    :"Size&Setting" => inda_hr.Model.UniversityAdmissionsValueModelStr.t | nil,
    :EnrollmentProfile => inda_hr.Model.UniversityAdmissionsValueModelStr.t | nil,
    :UndergraduateProfile => inda_hr.Model.UniversityAdmissionsValueModelStr.t | nil,
    :UndergraduateInstructionalProgram => inda_hr.Model.UniversityAdmissionsValueModelStr.t | nil,
    :GraduateInstructionalProgram => inda_hr.Model.UniversityAdmissionsValueModelStr.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.OptionalCarnegieClassification do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:BasicClassification, :struct, inda_hr.Model.UniversityAdmissionsValueModelStr, options)
    |> deserialize(:"2000Classification", :struct, inda_hr.Model.UniversityAdmissionsValueModelStr, options)
    |> deserialize(:"Size&Setting", :struct, inda_hr.Model.UniversityAdmissionsValueModelStr, options)
    |> deserialize(:EnrollmentProfile, :struct, inda_hr.Model.UniversityAdmissionsValueModelStr, options)
    |> deserialize(:UndergraduateProfile, :struct, inda_hr.Model.UniversityAdmissionsValueModelStr, options)
    |> deserialize(:UndergraduateInstructionalProgram, :struct, inda_hr.Model.UniversityAdmissionsValueModelStr, options)
    |> deserialize(:GraduateInstructionalProgram, :struct, inda_hr.Model.UniversityAdmissionsValueModelStr, options)
  end
end

