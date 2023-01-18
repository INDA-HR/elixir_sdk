# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.OptionalAdmissions do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Gender,
    :InternationalStudents,
    :SelectionType,
    :AdmissionRequirements,
    :AdmissionRate,
    :AdmissionOffice
  ]

  @type t :: %__MODULE__{
    :Gender => inda_hr.Model.UniversityAdmissionsValueModelStr.t | nil,
    :InternationalStudents => inda_hr.Model.UniversityAdmissionsValueModelStr.t | nil,
    :SelectionType => inda_hr.Model.UniversityAdmissionsValueModelStr.t | nil,
    :AdmissionRequirements => inda_hr.Model.ValueModelListStr.t | nil,
    :AdmissionRate => inda_hr.Model.UniversityAdmissionsValueModelStr.t | nil,
    :AdmissionOffice => inda_hr.Model.OptionalAdmissionOffice.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.OptionalAdmissions do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Gender, :struct, inda_hr.Model.UniversityAdmissionsValueModelStr, options)
    |> deserialize(:InternationalStudents, :struct, inda_hr.Model.UniversityAdmissionsValueModelStr, options)
    |> deserialize(:SelectionType, :struct, inda_hr.Model.UniversityAdmissionsValueModelStr, options)
    |> deserialize(:AdmissionRequirements, :struct, inda_hr.Model.ValueModelListStr, options)
    |> deserialize(:AdmissionRate, :struct, inda_hr.Model.UniversityAdmissionsValueModelStr, options)
    |> deserialize(:AdmissionOffice, :struct, inda_hr.Model.OptionalAdmissionOffice, options)
  end
end

