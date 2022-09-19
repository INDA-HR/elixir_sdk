# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.OptionalAccreditationsDetails do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"URL",
    :"YearOfFirstAccreditation",
    :"OtherAccreditations"
  ]

  @type t :: %__MODULE__{
    :"URL" => String.t | nil,
    :"YearOfFirstAccreditation" => AnyOfDateTimedate | nil,
    :"OtherAccreditations" => [String.t] | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.OptionalAccreditationsDetails do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"YearOfFirstAccreditation", :struct, inda_hr.Model.AnyOfDateTimedate, options)
  end
end
