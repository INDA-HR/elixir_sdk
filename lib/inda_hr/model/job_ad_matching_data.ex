# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.JobAdMatchingData do
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
    :JobTitle => IndaHr.Model.JobTitleHeader.t,
    :JobDescription => IndaHr.Model.JobDescription.t,
    :EmployerID => String.t | nil,
    :ContactInfo => [IndaHr.Model.JobadContactInfoContactInfo.t] | nil,
    :JobLocations => [IndaHr.Model.BaseLocationsLocation.t] | nil,
    :RelocationPreferences => IndaHr.Model.RelocationPreferences.t | nil,
    :RemoteWorking => IndaHr.Model.JobAdRemoteWorking.t | nil,
    :Experience => IndaHr.Model.Experience.t | nil,
    :Education => IndaHr.Model.OptionalRequiredAndPreferredEducation.t | nil,
    :Skills => IndaHr.Model.Skills.t,
    :Languages => IndaHr.Model.OptionalRequiredAndPreferredConListLanguages.t | nil,
    :RelatedJobTitles => [IndaHr.Model.OptionalJobAdJobTitle.t] | nil,
    :Employment => IndaHr.Model.JobTitleEmployment.t | nil,
    :Contract => IndaHr.Model.JobAdContract.t | nil,
    :Publisher => IndaHr.Model.Publisher.t | nil,
    :JobShift => IndaHr.Model.JobShift.t | nil,
    :NumberOfOpenings => IndaHr.Model.ValueModelInt.t | nil,
    :Link => IndaHr.Model.JobadLinkLink.t | nil,
    :AdvertisementSites => [IndaHr.Model.JobadLinkLink.t] | nil,
    :Salary => IndaHr.Model.JobAdSalary.t | nil,
    :Benefits => [IndaHr.Model.JobAdBenefit.t] | nil,
    :ExpirationDate => IndaHr.Model.ValueModelDatetime.t | nil,
    :Status => IndaHr.Model.JobadCommonValueModelStr.t | nil
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.JobAdMatchingData do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:JobTitle, :struct, IndaHr.Model.JobTitleHeader, options)
    |> deserialize(:JobDescription, :struct, IndaHr.Model.JobDescription, options)
    |> deserialize(:ContactInfo, :list, IndaHr.Model.JobadContactInfoContactInfo, options)
    |> deserialize(:JobLocations, :list, IndaHr.Model.BaseLocationsLocation, options)
    |> deserialize(:RelocationPreferences, :struct, IndaHr.Model.RelocationPreferences, options)
    |> deserialize(:RemoteWorking, :struct, IndaHr.Model.JobAdRemoteWorking, options)
    |> deserialize(:Experience, :struct, IndaHr.Model.Experience, options)
    |> deserialize(:Education, :struct, IndaHr.Model.OptionalRequiredAndPreferredEducation, options)
    |> deserialize(:Skills, :struct, IndaHr.Model.Skills, options)
    |> deserialize(:Languages, :struct, IndaHr.Model.OptionalRequiredAndPreferredConListLanguages, options)
    |> deserialize(:RelatedJobTitles, :list, IndaHr.Model.OptionalJobAdJobTitle, options)
    |> deserialize(:Employment, :struct, IndaHr.Model.JobTitleEmployment, options)
    |> deserialize(:Contract, :struct, IndaHr.Model.JobAdContract, options)
    |> deserialize(:Publisher, :struct, IndaHr.Model.Publisher, options)
    |> deserialize(:JobShift, :struct, IndaHr.Model.JobShift, options)
    |> deserialize(:NumberOfOpenings, :struct, IndaHr.Model.ValueModelInt, options)
    |> deserialize(:Link, :struct, IndaHr.Model.JobadLinkLink, options)
    |> deserialize(:AdvertisementSites, :list, IndaHr.Model.JobadLinkLink, options)
    |> deserialize(:Salary, :struct, IndaHr.Model.JobAdSalary, options)
    |> deserialize(:Benefits, :list, IndaHr.Model.JobAdBenefit, options)
    |> deserialize(:ExpirationDate, :struct, IndaHr.Model.ValueModelDatetime, options)
    |> deserialize(:Status, :struct, IndaHr.Model.JobadCommonValueModelStr, options)
  end
end
