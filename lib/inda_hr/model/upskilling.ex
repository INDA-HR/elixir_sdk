# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.Upskilling do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :ESCOClassification,
    :TransitionRecommendation,
    :Skills
  ]

  @type t :: %__MODULE__{
    :ESCOClassification => inda_hr.Model.EscoOccupationValue.t | nil,
    :TransitionRecommendation => [inda_hr.Model.TransitionRecommendationValue.t] | nil,
    :Skills => [inda_hr.Model.SlimSkill.t] | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.Upskilling do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:ESCOClassification, :struct, inda_hr.Model.EscoOccupationValue, options)
    |> deserialize(:TransitionRecommendation, :list, inda_hr.Model.TransitionRecommendationValue, options)
    |> deserialize(:Skills, :list, inda_hr.Model.SlimSkill, options)
  end
end

