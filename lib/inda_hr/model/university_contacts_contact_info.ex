# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.UniversityContactsContactInfo do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :PhoneNumbers,
    :Links
  ]

  @type t :: %__MODULE__{
    :PhoneNumbers => [inda_hr.Model.UniversityContactsPhoneNumber.t] | nil,
    :Links => [inda_hr.Model.UniversityContactsLink.t] | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.UniversityContactsContactInfo do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:PhoneNumbers, :list, inda_hr.Model.UniversityContactsPhoneNumber, options)
    |> deserialize(:Links, :list, inda_hr.Model.UniversityContactsLink, options)
  end
end

