# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.JobadCommonOptionalData do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :JobTitle,
    :JobDescription,
    :EmployerID,
    :ContactInfo,
    :JobLocations,
    :RelocationPreferences,
    :RemoteWorking,
    :Experience,
    :Education,
    :Skills,
    :Languages,
    :RelatedJobTitles,
    :Employment,
    :Contract,
    :Publisher,
    :JobShift,
    :NumberOfOpenings,
    :Link,
    :AdvertisementSites,
    :Salary,
    :Benefits,
    :ExpirationDate,
    :Status
  ]

  @type t :: %__MODULE__{
    :JobTitle => inda_hr.Model.JobTitleHeader.t | nil,
    :JobDescription => inda_hr.Model.JobDescription.t | nil,
    :EmployerID => String.t | nil,
    :ContactInfo => [inda_hr.Model.JobadContactInfoContactInfo.t] | nil,
    :JobLocations => [inda_hr.Model.BaseLocationsLocation.t] | nil,
    :RelocationPreferences => inda_hr.Model.RelocationPreferences.t | nil,
    :RemoteWorking => inda_hr.Model.JobAdRemoteWorking.t | nil,
    :Experience => inda_hr.Model.Experience.t | nil,
    :Education => inda_hr.Model.OptionalRequiredAndPreferredEducation.t | nil,
    :Skills => inda_hr.Model.Skills.t | nil,
    :Languages => inda_hr.Model.OptionalRequiredAndPreferredConListLanguages.t | nil,
    :RelatedJobTitles => [inda_hr.Model.OptionalJobAdJobTitle.t] | nil,
    :Employment => inda_hr.Model.JobTitleEmployment.t | nil,
    :Contract => inda_hr.Model.JobAdContract.t | nil,
    :Publisher => inda_hr.Model.Publisher.t | nil,
    :JobShift => inda_hr.Model.JobShift.t | nil,
    :NumberOfOpenings => inda_hr.Model.ValueModelInt.t | nil,
    :Link => inda_hr.Model.JobadLinkLink.t | nil,
    :AdvertisementSites => [inda_hr.Model.JobadLinkLink.t] | nil,
    :Salary => inda_hr.Model.JobAdSalary.t | nil,
    :Benefits => [inda_hr.Model.JobAdBenefit.t] | nil,
    :ExpirationDate => inda_hr.Model.ValueModelDatetime.t | nil,
    :Status => inda_hr.Model.JobadCommonValueModelStr.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.JobadCommonOptionalData do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:JobTitle, :struct, inda_hr.Model.JobTitleHeader, options)
    |> deserialize(:JobDescription, :struct, inda_hr.Model.JobDescription, options)
    |> deserialize(:ContactInfo, :list, inda_hr.Model.JobadContactInfoContactInfo, options)
    |> deserialize(:JobLocations, :list, inda_hr.Model.BaseLocationsLocation, options)
    |> deserialize(:RelocationPreferences, :struct, inda_hr.Model.RelocationPreferences, options)
    |> deserialize(:RemoteWorking, :struct, inda_hr.Model.JobAdRemoteWorking, options)
    |> deserialize(:Experience, :struct, inda_hr.Model.Experience, options)
    |> deserialize(:Education, :struct, inda_hr.Model.OptionalRequiredAndPreferredEducation, options)
    |> deserialize(:Skills, :struct, inda_hr.Model.Skills, options)
    |> deserialize(:Languages, :struct, inda_hr.Model.OptionalRequiredAndPreferredConListLanguages, options)
    |> deserialize(:RelatedJobTitles, :list, inda_hr.Model.OptionalJobAdJobTitle, options)
    |> deserialize(:Employment, :struct, inda_hr.Model.JobTitleEmployment, options)
    |> deserialize(:Contract, :struct, inda_hr.Model.JobAdContract, options)
    |> deserialize(:Publisher, :struct, inda_hr.Model.Publisher, options)
    |> deserialize(:JobShift, :struct, inda_hr.Model.JobShift, options)
    |> deserialize(:NumberOfOpenings, :struct, inda_hr.Model.ValueModelInt, options)
    |> deserialize(:Link, :struct, inda_hr.Model.JobadLinkLink, options)
    |> deserialize(:AdvertisementSites, :list, inda_hr.Model.JobadLinkLink, options)
    |> deserialize(:Salary, :struct, inda_hr.Model.JobAdSalary, options)
    |> deserialize(:Benefits, :list, inda_hr.Model.JobAdBenefit, options)
    |> deserialize(:ExpirationDate, :struct, inda_hr.Model.ValueModelDatetime, options)
    |> deserialize(:Status, :struct, inda_hr.Model.JobadCommonValueModelStr, options)
  end
end

