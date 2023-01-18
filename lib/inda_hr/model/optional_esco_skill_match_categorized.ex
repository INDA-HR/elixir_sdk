# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.OptionalEscoSkillMatchCategorized do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :ConceptUri,
    :PreferredLabel,
    :Description,
    :Language,
    :Score,
    :SkillHierarchy
  ]

  @type t :: %__MODULE__{
    :ConceptUri => String.t | nil,
    :PreferredLabel => String.t | nil,
    :Description => String.t | nil,
    :Language => String.t | nil,
    :Score => float() | nil,
    :SkillHierarchy => inda_hr.Model.SkillHierarchy.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.OptionalEscoSkillMatchCategorized do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:SkillHierarchy, :struct, inda_hr.Model.SkillHierarchy, options)
  end
end

