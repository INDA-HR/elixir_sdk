# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.OptionalRequiredAndPreferredEducation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Required",
    :"Preferred"
  ]

  @type t :: %__MODULE__{
    :"Required" => inda_hr.Model.Education.t | nil,
    :"Preferred" => inda_hr.Model.Education.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.OptionalRequiredAndPreferredEducation do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Required", :struct, inda_hr.Model.Education, options)
    |> deserialize(:"Preferred", :struct, inda_hr.Model.Education, options)
  end
end

