# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.OptionalEscoSkillMatch do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Score,
    :ConceptType,
    :PreferredLabel,
    :AltLabels,
    :Description,
    :Language,
    :MatchDetails,
    :SkillType,
    :ReuseLevel,
    :ConceptUri,
    :Occupations
  ]

  @type t :: %__MODULE__{
    :Score => float() | nil,
    :ConceptType => String.t | nil,
    :PreferredLabel => String.t | nil,
    :AltLabels => String.t | nil,
    :Description => String.t | nil,
    :Language => String.t | nil,
    :MatchDetails => inda_hr.Model.OptionalEscoMatchDetails.t | nil,
    :SkillType => String.t | nil,
    :ReuseLevel => String.t | nil,
    :ConceptUri => String.t | nil,
    :Occupations => [inda_hr.Model.OptionalEscoOccupationSkill.t] | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.OptionalEscoSkillMatch do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:MatchDetails, :struct, inda_hr.Model.OptionalEscoMatchDetails, options)
    |> deserialize(:Occupations, :list, inda_hr.Model.OptionalEscoOccupationSkill, options)
  end
end

