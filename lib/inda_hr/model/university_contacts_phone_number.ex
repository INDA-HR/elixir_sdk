# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.UniversityContactsPhoneNumber do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Number,
    :Label
  ]

  @type t :: %__MODULE__{
    :Number => inda_hr.Model.JobadPhoneNumbersNumber.t | nil,
    :Label => inda_hr.Model.JobadPhoneNumbersPhoneLabel.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.UniversityContactsPhoneNumber do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Number, :struct, inda_hr.Model.JobadPhoneNumbersNumber, options)
    |> deserialize(:Label, :struct, inda_hr.Model.JobadPhoneNumbersPhoneLabel, options)
  end
end

