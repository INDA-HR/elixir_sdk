# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.JobadPhoneNumbersNumber do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Value"
  ]

  @type t :: %__MODULE__{
    :"Value" => inda_hr.Model.OptionalPhoneNumber.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.JobadPhoneNumbersNumber do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Value", :struct, inda_hr.Model.OptionalPhoneNumber, options)
  end
end

