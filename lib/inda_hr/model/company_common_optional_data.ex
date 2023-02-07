# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.CompanyCommonOptionalData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Type,
    :Size,
    :Description,
    :Headquarters,
    :Branches,
    :Industries,
    :Specialties,
    :Founded,
    :Logo,
    :Link,
    :Products,
    :Services,
    :RelatedCompanies
  ]

  @type t :: %__MODULE__{
    :Type => IndaHr.Model.CompanyCommonType.t | nil,
    :Size => IndaHr.Model.Size.t | nil,
    :Description => IndaHr.Model.BaseLocationsValueModelStrictStr.t | nil,
    :Headquarters => [IndaHr.Model.Headquarter.t] | nil,
    :Branches => [IndaHr.Model.Branch.t] | nil,
    :Industries => [IndaHr.Model.CompanyCommonIndustry.t] | nil,
    :Specialties => [IndaHr.Model.BaseLocationsValueModelStrictStr.t] | nil,
    :Founded => IndaHr.Model.FoundationYear.t | nil,
    :Logo => IndaHr.Model.JobadLinkLink.t | nil,
    :Link => IndaHr.Model.JobadLinkLink.t | nil,
    :Products => [IndaHr.Model.Asset.t] | nil,
    :Services => [IndaHr.Model.Asset.t] | nil,
    :RelatedCompanies => [IndaHr.Model.RelatedCompany.t] | nil
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.CompanyCommonOptionalData do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Type, :struct, IndaHr.Model.CompanyCommonType, options)
    |> deserialize(:Size, :struct, IndaHr.Model.Size, options)
    |> deserialize(:Description, :struct, IndaHr.Model.BaseLocationsValueModelStrictStr, options)
    |> deserialize(:Headquarters, :list, IndaHr.Model.Headquarter, options)
    |> deserialize(:Branches, :list, IndaHr.Model.Branch, options)
    |> deserialize(:Industries, :list, IndaHr.Model.CompanyCommonIndustry, options)
    |> deserialize(:Specialties, :list, IndaHr.Model.BaseLocationsValueModelStrictStr, options)
    |> deserialize(:Founded, :struct, IndaHr.Model.FoundationYear, options)
    |> deserialize(:Logo, :struct, IndaHr.Model.JobadLinkLink, options)
    |> deserialize(:Link, :struct, IndaHr.Model.JobadLinkLink, options)
    |> deserialize(:Products, :list, IndaHr.Model.Asset, options)
    |> deserialize(:Services, :list, IndaHr.Model.Asset, options)
    |> deserialize(:RelatedCompanies, :list, IndaHr.Model.RelatedCompany, options)
  end
end
