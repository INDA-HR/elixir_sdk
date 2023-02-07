# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.UniversityData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Overview,
    :Location,
    :OtherLocations,
    :ContactInfo,
    :Accreditations,
    :Admissions,
    :CarnegieClassification,
    :FacilitiesAndServices,
    :Faculties,
    :MembershipsAndAffiliations,
    :YearlyTuitionRange,
    :SizeAndProfile,
    :StudyAreas,
    :Logo
  ]

  @type t :: %__MODULE__{
    :Overview => IndaHr.Model.Overview.t,
    :Location => IndaHr.Model.UniversityLocationsLocation.t | nil,
    :OtherLocations => [IndaHr.Model.UniversityLocationsLocation.t] | nil,
    :ContactInfo => IndaHr.Model.UniversityContactsContactInfo.t | nil,
    :Accreditations => IndaHr.Model.OptionalAccreditations.t | nil,
    :Admissions => IndaHr.Model.OptionalAdmissions.t | nil,
    :CarnegieClassification => IndaHr.Model.OptionalCarnegieClassification.t | nil,
    :FacilitiesAndServices => IndaHr.Model.OptionalFacilitiesAndServices.t | nil,
    :Faculties => [String.t] | nil,
    :MembershipsAndAffiliations => [String.t] | nil,
    :YearlyTuitionRange => [IndaHr.Model.OptionalTuition.t] | nil,
    :SizeAndProfile => IndaHr.Model.OptionalSizeAndProfile.t | nil,
    :StudyAreas => [IndaHr.Model.StudyAreas.t] | nil,
    :Logo => IndaHr.Model.ValueModelBytes.t | nil
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.UniversityData do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Overview, :struct, IndaHr.Model.Overview, options)
    |> deserialize(:Location, :struct, IndaHr.Model.UniversityLocationsLocation, options)
    |> deserialize(:OtherLocations, :list, IndaHr.Model.UniversityLocationsLocation, options)
    |> deserialize(:ContactInfo, :struct, IndaHr.Model.UniversityContactsContactInfo, options)
    |> deserialize(:Accreditations, :struct, IndaHr.Model.OptionalAccreditations, options)
    |> deserialize(:Admissions, :struct, IndaHr.Model.OptionalAdmissions, options)
    |> deserialize(:CarnegieClassification, :struct, IndaHr.Model.OptionalCarnegieClassification, options)
    |> deserialize(:FacilitiesAndServices, :struct, IndaHr.Model.OptionalFacilitiesAndServices, options)
    |> deserialize(:YearlyTuitionRange, :list, IndaHr.Model.OptionalTuition, options)
    |> deserialize(:SizeAndProfile, :struct, IndaHr.Model.OptionalSizeAndProfile, options)
    |> deserialize(:StudyAreas, :list, IndaHr.Model.StudyAreas, options)
    |> deserialize(:Logo, :struct, IndaHr.Model.ValueModelBytes, options)
  end
end
