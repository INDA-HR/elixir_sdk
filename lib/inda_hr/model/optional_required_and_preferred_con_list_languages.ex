# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.OptionalRequiredAndPreferredConListLanguages do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Required",
    :"Preferred"
  ]

  @type t :: %__MODULE__{
    :"Required" => [inda_hr.Model.OptionalJobAdLanguage.t] | nil,
    :"Preferred" => [inda_hr.Model.OptionalJobAdLanguage.t] | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.OptionalRequiredAndPreferredConListLanguages do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Required", :list, inda_hr.Model.OptionalJobAdLanguage, options)
    |> deserialize(:"Preferred", :list, inda_hr.Model.OptionalJobAdLanguage, options)
  end
end
