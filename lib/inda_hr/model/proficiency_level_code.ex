# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.ProficiencyLevelCode do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"CEFR"
  ]

  @type t :: %__MODULE__{
    :"CEFR" => inda_hr.Model.CefrLevels.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.ProficiencyLevelCode do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"CEFR", :struct, inda_hr.Model.CefrLevels, options)
  end
end

