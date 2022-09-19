# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.SkillsComparisonValue do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"ESCOClassification",
    :"SkillComparison"
  ]

  @type t :: %__MODULE__{
    :"ESCOClassification" => inda_hr.Model.EscoOccupationValue.t | nil,
    :"SkillComparison" => [inda_hr.Model.SkillComparison.t] | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.SkillsComparisonValue do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"ESCOClassification", :struct, inda_hr.Model.EscoOccupationValue, options)
    |> deserialize(:"SkillComparison", :list, inda_hr.Model.SkillComparison, options)
  end
end
