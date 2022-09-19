# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.JobAdLanguageDetails do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"ProficiencyLevel",
    :"LanguageCode",
    :"ProficiencyLevelCode"
  ]

  @type t :: %__MODULE__{
    :"ProficiencyLevel" => String.t | nil,
    :"LanguageCode" => String.t | nil,
    :"ProficiencyLevelCode" => inda_hr.Model.ProficiencyLevelCode.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.JobAdLanguageDetails do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"ProficiencyLevelCode", :struct, inda_hr.Model.ProficiencyLevelCode, options)
  end
end
