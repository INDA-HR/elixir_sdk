# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.ResumePhoneNumbersPhoneLabel do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Details,
    :Value
  ]

  @type t :: %__MODULE__{
    :Details => IndaHr.Model.BaseDetails.t | nil,
    :Value => String.t | nil
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.ResumePhoneNumbersPhoneLabel do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Details, :struct, IndaHr.Model.BaseDetails, options)
  end
end
