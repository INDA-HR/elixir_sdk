# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.OptionalRequiredAndPreferredSeniorityValueV9 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Required",
    :"Preferred"
  ]

  @type t :: %__MODULE__{
    :"Required" => inda_hr.Model.SeniorityValueV8.t,
    :"Preferred" => inda_hr.Model.SeniorityValueV8.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.OptionalRequiredAndPreferredSeniorityValueV9 do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Required", :struct, inda_hr.Model.SeniorityValueV8, options)
    |> deserialize(:"Preferred", :struct, inda_hr.Model.SeniorityValueV8, options)
  end
end

